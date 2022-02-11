package kr.co.recipetoyou.admin.adgoods.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

public interface AdgoodsReviewController {
	
	//상품 후기 목록
	public ModelAndView listReviewGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 후기 목록 조회 및 페이징 처리
	public void listReview(PagingVO vo, Model model) throws Exception;
	
	//상품 후기 상세 조회
	public void getReviewDetail(int prod_review_code, Model model, PagingVO vo) throws Exception;

}
