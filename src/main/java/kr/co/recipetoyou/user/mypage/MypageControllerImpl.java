package kr.co.recipetoyou.user.mypage;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.recipetoyou.main.inqreview.ReviewVO;
import kr.co.recipetoyou.user.UserVO;
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


	@RequestMapping(value = "/mypage/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ModelAndView mav = new ModelAndView();
		return mav;
	} 
	
	
	//주문 내역 조회
	@Override
	@RequestMapping(value = "/orderList.do", method = RequestMethod.GET)
	public ModelAndView listOrders(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<MyOrderVO> orderList = mypageService.listOrders();
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderList", orderList);
		return mav;
	}

	
	//주문 내역 상세 조회하기
	@Override
	@RequestMapping(value = "/orderDetail.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST}) 
	public void orderDetail(@RequestParam(value="ord_code", required = false) int ord_code, Model model) throws Exception {
		
		logger.info("클릭한 주문 상품 이름 : "+ord_code);
		
		System.out.println("orderDetail Controller 호출");
		//상품정보 출력
		model.addAttribute("myorderVO", mypageService.orderDetail(ord_code));	
	}
	
	
	  //주문내역 연도별 조회	
	@Override
	  @RequestMapping(value = "/searchOrderYear.do", method = RequestMethod.GET)
	  public String searchOrderYear(int ord_date, Model model) throws Exception {
	  System.out.println("================");
	  System.out.println(ord_date);
	  System.out.println("searchOrderYear Colltroller 호출");
	
	  
	  //연도별 상품 정보 출력 
	  //model.addAttribute("myorderVO", mypageService.searchOrderList(ord_date));
	  	return "redirect:/orderList.do";
	  }
	 

	//주문 취소
	@Override
	@RequestMapping(value = "/orderCancle.do", method = RequestMethod.GET)
	public ModelAndView orderCancle(int ord_code, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("utf-8");
		mypageService.CancleOrders(ord_code);
		ModelAndView mav = new ModelAndView("redirect:/orderList.do");
		return mav;
	}
	
	
	
	@RequestMapping(value = "/giftList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView giftList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();	
		return mav;
	}
	

	
	//배송지 조회
	@Override
	@RequestMapping(value = "/addresslist.do", method = RequestMethod.GET)
	public ModelAndView listAddress(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");

		logger.info("info : "+ viewName); logger.debug("debug : "+ viewName);

		System.out.println("addrlist Controller 호출"); 
		List<UserAddrVO> addressList = mypageService.listAddress();
		ModelAndView mav = new ModelAndView();
		mav.addObject("addressList", addressList);
		return mav; 
	}
	
	//배송지 삭제
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

		System.out.println("addrlist Controller 호출"); 
		List<UserAddrVO> addressList = mypageService.listAddress();
		ModelAndView mav = new ModelAndView();
		mav.addObject("addressList", addressList);
		return mav; 
	}
		
	  
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
	
	//상품문의 삭제
	@Override
	@RequestMapping(value = "/removeQnA.do", method = RequestMethod.GET)
	public ModelAndView removeQnA(@RequestParam("prod_inq_code") int prod_inq_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.info("prod_inq_code: " + prod_inq_code);
		request.setCharacterEncoding("utf-8");
		mypageService.deleteQnA(prod_inq_code);
		ModelAndView mav = new ModelAndView("redirect:QnA.do");
		return mav;
	
	}
	
	//상품문의 수정
	@Override
	@RequestMapping(value = "/modifyQnA.do", method = RequestMethod.GET)
	public ModelAndView modifyQnA(@RequestParam("prod_inq_code") int prod_inq_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		logger.info("prod_inq_code: " + prod_inq_code);
		request.setCharacterEncoding("utf-8");
		return null;
		
	}
	
	//포인트 조회
	@Override
	@RequestMapping(value = "/point.do", method = RequestMethod.GET)
	public ModelAndView listPoints(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+ viewName);
		logger.debug("debug : "+ viewName);
	
		
		List<PointVO> pointList = mypageService.listPoints();
		ModelAndView mav = new ModelAndView();
		mav.addObject("pointList", pointList);
	
		return mav;
	}
	
	//개인정보 수정 - 비밀번호 재확인
	@RequestMapping(value = "/mypageUserInfoPwdCheck.do", method = RequestMethod.GET)
	public ModelAndView mypageUserInfoPwdCheck(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	
	@RequestMapping(value = "/mypageUserInfo.do", method = RequestMethod.GET)
	public ModelAndView mypageUserInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();	
		return mav;
	}
	
	@RequestMapping(value = "/noticeOneToOneQuestionDetail.do", method = RequestMethod.GET)
	public ModelAndView noticeOneToOneQuestionDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	



	//쿠폰 조회하기
	@Override
	@RequestMapping(value = "/coupon.do", method = RequestMethod.GET)
	public ModelAndView listCoupons (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+ viewName);
		logger.debug("debug : "+ viewName);
	
		
		List<CouponVO> couponList = mypageService.listCoupons();
		ModelAndView mav = new ModelAndView();
		mav.addObject("couponList", couponList);
	
		return mav;
	}
		
	//쿠폰 등록하기
	@Override
	@RequestMapping(value = "/addCoupon.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addCoupons(CouponVO couponVO, HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		
		request.setCharacterEncoding("utf-8");
		int result = mypageService.addCoupon(couponVO);
		ModelAndView mav = new ModelAndView("redirect:/coupon.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/addrModify.do", method = RequestMethod.GET)
	public ModelAndView addrModify(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();

        return mav;
	}

	//주문내역 조회
	@Override
	public void searchOrderYear(Date ord_date, Model model) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
	@ResponseBody
	@RequestMapping(value="/emailChk.do", method = RequestMethod.POST)
	public int emailChk(UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
	  int result = mypageService.emailChk(userVO);
	  return result;
	}

	

	

}










