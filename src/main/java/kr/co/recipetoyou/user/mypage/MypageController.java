package kr.co.recipetoyou.user.mypage;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;

public interface MypageController {
	
	//쿠폰 내역 조회
	public ModelAndView listCoupons(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//쿠폰 등록하기
	//@ModelAttribute() : vo 객체 전달시 이름이 너무 길때 이름을 바꿔서 보낼 수 있음
	public ModelAndView addCoupons(@ModelAttribute("info") CouponVO couponVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//포인트 내역 조회
	public ModelAndView listPoints(HttpServletRequest request, HttpServletResponse response) throws Exception;

	//배송지관리 조회
	public ModelAndView listAddress(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//주문내역 조회
	public ModelAndView listOrders(HttpServletRequest request, HttpServletResponse response) throws Exception;

	//주문내역 상세 정보 조회
	public void orderDetail(@RequestParam("ord_code")int ord_code, Model model) throws Exception;
	
	//상품문의 조회
	public ModelAndView listQnA(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품리뷰 조회
	public ModelAndView listReviews(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView addrModify(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
