package kr.co.recipetoyou.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("mypageController")
public class MypageControllerImpl {
	
	@RequestMapping(value="/mypage/addressList.do",method=RequestMethod.GET)
	public ModelAndView addressList(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/coupon.do",method=RequestMethod.GET)
	public ModelAndView coupon(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/giftList.do",method=RequestMethod.GET)
	public ModelAndView giftList(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/myInfo.do",method=RequestMethod.GET)
	public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/mypageInfo.do",method=RequestMethod.GET)
	public ModelAndView mypageInfo(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/orderList.do",method=RequestMethod.GET)
	public ModelAndView orderList(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/pickList.do",method=RequestMethod.GET)
	public ModelAndView pickList(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/pickListAdd.do",method=RequestMethod.GET)
	public ModelAndView pickListAdd(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/point.do",method=RequestMethod.GET)
	public ModelAndView point(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/questionAnswer.do",method=RequestMethod.GET)
	public ModelAndView questionAnswer(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="/mypage/review.do",method=RequestMethod.GET)
	public ModelAndView review(HttpServletRequest request, HttpServletResponse response)throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
}
