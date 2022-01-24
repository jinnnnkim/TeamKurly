package kr.co.recipetoyou.user.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface MypageController {
	
	//쿠폰 내역 조회
	public ModelAndView listCoupons(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
