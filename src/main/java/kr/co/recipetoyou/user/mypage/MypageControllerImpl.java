package kr.co.recipetoyou.user.mypage;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.main.inqreview.ReviewVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.category.CategoryService;
import kr.co.recipetoyou.user.category.CategoryVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;
import kr.co.recipetoyou.util.PagingVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;


@Controller("mypageController")
public class MypageControllerImpl implements MypageController{
	
	private static final Logger logger =LoggerFactory.getLogger("MypageControllerImpl.class");
	
	@Autowired
	private MypageService mypageService;
	@Autowired
	private CouponVO couponVO;
	@Autowired
	private PointVO pointVO;
	
	@Autowired
	private UserAddrVO useraddrVO;
	
	@Autowired
	private MyOrderVO myorderVO;

	@Autowired
	private QnAVO qnaVO;

	@Autowired
	private CategoryService service;

	@RequestMapping(value = "/mypage/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ModelAndView mav = new ModelAndView();
		return mav;
	} 
	
	
	//?????? ?????? ??????
	@Override
	@RequestMapping(value = "/orderList.do", method = RequestMethod.GET)
	public ModelAndView listOrders(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//????????? ??????????????????
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		String user_id = "";
		if(userVO != null) {
			if(userVO.getUser_id() == null || userVO.getUser_id() == "") {
				user_id = "";
			}else {
				
				user_id = userVO.getUser_id();
			}
		}
		
		List<MyOrderVO> orderList = mypageService.listOrders(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderList", orderList);
		return mav;
	}

	
	//?????? ?????? ?????? ????????????
	@Override
	@RequestMapping(value = "/orderDetail.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST}) 
	public void orderDetail(@RequestParam(value="ord_code", required = false) int ord_code, Model model) throws Exception {
		
		logger.info("????????? ?????? ?????? ?????? : "+ord_code);
		
		System.out.println("orderDetail Controller ??????");
		//???????????? ??????
		model.addAttribute("myorderVO", mypageService.orderDetail(ord_code));	
	}
	
	
	  //???????????? ????????? ??????	
	  @Override
	  @RequestMapping(value = "/searchOrderYear.do", method = RequestMethod.GET)
	  public String searchOrderYear(int ord_date, Model model) throws Exception {
	  System.out.println("================");
	  System.out.println(ord_date);
	  System.out.println("searchOrderYear Colltroller ??????");
	
	  
	  //????????? ?????? ?????? ?????? 
	  //model.addAttribute("myorderVO", mypageService.searchOrderList(ord_date));
	  	return "redirect:/orderList.do";
	  }
	 

	//?????? ??????
	@Override
	@RequestMapping(value = "/orderCancle.do", method = RequestMethod.GET)
	public ModelAndView orderCancle(int ord_code, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("utf-8");
		mypageService.CancleOrders(ord_code);
		ModelAndView mav = new ModelAndView("redirect:/orderList.do");
		return mav;
	}
	
	
	
	//??????
	@RequestMapping(value = "/giftList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView giftList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();	
		return mav;
	}
	

	
	//????????? ??????
	@Override
	@RequestMapping(value = "/addresslist.do", method = RequestMethod.GET)
	public ModelAndView listAddress(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");

		logger.info("info : "+ viewName); logger.debug("debug : "+ viewName);

		List<UserAddrVO> addressList = mypageService.listAddress();
		ModelAndView mav = new ModelAndView();
		mav.addObject("addressList", addressList);
		return mav; 
	}
	
	//????????? ??????
	@Override
	@RequestMapping(value = "/removeAddress.do", method = RequestMethod.GET)
	public ModelAndView removeAddress(@RequestParam("addr_code") String addr_code, HttpServletRequest request, HttpServletResponse response) throws Exception {

		logger.info("addr_code: " + addr_code);
		request.setCharacterEncoding("utf-8");
		mypageService.deleteAddress(addr_code);
		ModelAndView mav = new ModelAndView("redirect:addresslist.do");
		return mav;
	}
	
	@RequestMapping(value = "/addAddress.do", method = RequestMethod.GET)
	public ModelAndView addAddress(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String viewName = (String) request.getAttribute("viewName");

		logger.info("info : "+ viewName); logger.debug("debug : "+ viewName);

		System.out.println("addrlist Controller ??????"); 
		List<UserAddrVO> addressList = mypageService.listAddress();
		ModelAndView mav = new ModelAndView();
		mav.addObject("addressList", addressList);
		return mav; 
	}
		
	//?????? ?????? 
	@Override
	@RequestMapping(value = "/review.do", method = RequestMethod.GET)
	public ModelAndView listReviews(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  
		String viewName = (String) request.getAttribute("viewName");
		  
		logger.info("info : "+ viewName); logger.debug("debug : "+ viewName);
		  
		List<ReviewVO> reviewList = mypageService.listReviews();
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", reviewList);
		return mav; 
		}

	//?????? ??????
	@Override
	@RequestMapping(value = "/QnA.do", method = RequestMethod.GET)
	public ModelAndView listQnA(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+ viewName);
		logger.debug("debug : "+ viewName);	
		
		List<QnAVO> qnaList = mypageService.listQnA();
		ModelAndView mav = new ModelAndView();
		mav.addObject("qnaList", qnaList);

		return mav;
	}
	
	//???????????? ??????
	@Override
	@RequestMapping(value = "/removeQnA.do", method = RequestMethod.GET)
	public ModelAndView removeQnA(@RequestParam("prod_inq_code") int prod_inq_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.info("prod_inq_code: " + prod_inq_code);
		request.setCharacterEncoding("utf-8");
		mypageService.deleteQnA(prod_inq_code);
		ModelAndView mav = new ModelAndView("redirect:QnA.do");
		return mav;
	
	}
	
	//???????????? ??????
	@Override
	@RequestMapping(value = "/modifyQnA.do", method = RequestMethod.GET)
	public ModelAndView modifyQnA(@RequestParam("prod_inq_code") int prod_inq_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		logger.info("prod_inq_code: " + prod_inq_code);
		request.setCharacterEncoding("utf-8");
		return null;
		
	}
	
	//????????? ??????
	@Override
	@RequestMapping(value = "/point.do", method = RequestMethod.GET)
	public ModelAndView listPoints(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+ viewName);
		logger.debug("debug : "+ viewName);
	
		
		//????????? ??????????????????
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		String user_id = "";
		if(userVO != null) {
			if(userVO.getUser_id() == null || userVO.getUser_id() == "") {
				user_id = "";
			}else {
				
				user_id = userVO.getUser_id();
			}
		}
			
		List<PointVO> pointList = mypageService.listPoints(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pointList", pointList);
	
		return mav;
	}
	
	//???????????? ?????? - ???????????? ?????????
	@RequestMapping(value = "/mypageUserInfoPwdCheck.do", method = RequestMethod.GET)
	public ModelAndView mypageUserInfoPwdCheck(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	
	@RequestMapping(value = "/noticeOneToOneQuestionDetail.do", method = RequestMethod.GET)
	public ModelAndView noticeOneToOneQuestionDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	


	//?????? ????????????
	@Override
	@RequestMapping(value = "/coupon.do", method = RequestMethod.GET)
	public ModelAndView listCoupons (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		//????????? ??????????????????
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		String user_id = "";
		if(userVO != null) {
			if(userVO.getUser_id() == null || userVO.getUser_id() == "") {
				user_id = "";
			}else {
				
				user_id = userVO.getUser_id();
			}
		}
		
		int result = mypageService.getCouponCount(user_id);
		List<CouponVO> couponList = mypageService.listCoupons(user_id);
		
		logger.info("info : "+ viewName);
		logger.debug("debug : "+ viewName);
	
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("couponList", couponList);
		mav.addObject("result",result);
		
		return mav;
	}
		
	//?????? ??????
	@Override
	@RequestMapping(value = "/addrModify.do", method = RequestMethod.GET)
	public ModelAndView addrModify(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
        return mav;
	}

	//????????? ???????????? ??????
	@Override
	public void searchOrderYear(Date ord_date, Model model) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
	  //?????????????????????  
	  @Override
	  @RequestMapping(value="/mypageUserInfoProcess.do", method=RequestMethod.POST)
	  public String mypageUserInfoProcess(UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  	return "redirect:/mypageUserInfo.do";
		  }
	  
	  //??????
	  @RequestMapping(value="/mypageUserInfo.do", method=RequestMethod.GET) 
	  public ModelAndView mypageUserInfo(UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
	  
		 
		//????????? ??????????????????
			HttpSession session = request.getSession();
			userVO = (UserVO) session.getAttribute("userVO");
			String user_id = "";
			if(userVO != null) {
				if(userVO.getUser_id() == null || userVO.getUser_id() == "") {
					user_id = "";
				}else {
					
					user_id = userVO.getUser_id();
					userVO.setUser_id(user_id);
				}
			}
		  
		  ModelAndView mav = new ModelAndView();
		  mav.addObject("userVO",userVO);
		  return mav;
	  }
	 
	
	//????????? ????????? ??????
	@Override
	@ResponseBody
	@RequestMapping(value="/emailChk.do",method=RequestMethod.POST)
	public String emailChk(@RequestBody String filterJSON, HttpServletResponse response, Model model) throws Exception {
		JSONObject resMap = new JSONObject();
		try {
			ObjectMapper mapper = new ObjectMapper();
			UserVO userVO = (UserVO) mapper.readValue(filterJSON, new TypeReference<UserVO>(){});
			
			int emailChk = mypageService.emailChk(userVO);
			resMap.put("res", "ok");
			resMap.put("emailChk", emailChk);
		}
		catch(Exception e) {
			System.out.println(e.toString());
			resMap.put("res","error");
		}
		response.setContentType("text/html: charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(resMap);
		
		return null;
	}


	

	//?????? - ???????????? ??????
	@Override
	@RequestMapping(value="/UserUpdate.do", method=RequestMethod.POST)
	public String modify(@ModelAttribute("userVO") UserVO userVO, HttpSession session, RedirectAttributes ra) throws Exception {
		
	
		logger.info("??????");
		mypageService.pwUpdate(userVO);
		session.invalidate();
		ra.addFlashAttribute("result", "?????? ????????? ?????????????????????.");
		return "redirect:/main.do"; 
	}


		//??????
		@Override
		@RequestMapping(value = "/withdrawUser.do", method = RequestMethod.GET)
		public ModelAndView removeUser(String user_id, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			request.setCharacterEncoding("utf-8");
			mypageService.withdrawUser(user_id);
			HttpSession session = request.getSession();
			session.invalidate();
			
			ModelAndView mav = new ModelAndView("redirect:/main.do");
			return mav;
		}



	

}










