package kr.co.recipetoyou.adgoods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

public interface AdGoodsController {

	
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 목록 조회 및 페이징 처리
	public void listProduct(PagingVO vo, Model model) throws Exception;
	
	
	//상품 상세 정보 조회
	public void getProductInfo(@RequestParam(value = "code") int code, Model model) throws Exception;
	
	//상품 카테고리 검색
	public void listCategory(Model model) throws Exception;
}
