package kr.co.recipetoyou.user.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;



@Controller("mypageController")
public class MypageControllerImpl implements MypageController{
	
	private static final Logger logger =LoggerFactory.getLogger("MypageControllerImpl.class");
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private CouponVO couponVO;
	
	@Autowired
	private PointVO pointVO;
	
	@RequestMapping(value = "/mypage/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value = "/giftList.do", method = RequestMethod.GET)
	public ModelAndView giftList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

	
	@RequestMapping(value = "/addresslist.do", method = RequestMethod.GET)
	public ModelAndView addresslist(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value = "/review.do", method = RequestMethod.GET)
	public ModelAndView review(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value = "/QandA.do", method = RequestMethod.GET)
	public ModelAndView QandA(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value = "/point.do", method = RequestMethod.GET)
	public ModelAndView listpoints (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+viewName);
		logger.debug("debug : "+viewName);
	
		
		List<PointVO> pointList = mypageService.listPoints();
		ModelAndView mav = new ModelAndView();
		mav.addObject("pointList", pointList);
	
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
		
		logger.info("info : "+viewName);
		logger.debug("debug : "+viewName);
	
		
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


}










