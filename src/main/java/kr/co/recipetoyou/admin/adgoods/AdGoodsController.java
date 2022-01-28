package kr.co.recipetoyou.admin.adgoods;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

public interface AdGoodsController {

	
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 목록 조회 및 페이징 처리
	public void listProduct(PagingVO vo, Model model) throws Exception;
	
	
	//상품 상세 정보 조회
	public void getProductInfo(@RequestParam(value = "code") int code, Model model) throws Exception;
	
	//상품 등록 페이지로 이동
	public ModelAndView moveRegister(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 카테고리 검색
	public void listCategory(Model model) throws Exception;
	
	//상품 등록
	public ModelAndView uploadGoodsRegister(@RequestParam @DateTimeFormat(pattern="yyyy-MM-dd")Date prod_vaild_date, @RequestParam("file") MultipartFile file,AdGoodsVO agvo, RedirectAttributes rttr) throws Exception;
}
