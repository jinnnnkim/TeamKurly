package kr.co.recipetoyou.main.goods;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

public interface GoodsController {
	
	public ModelAndView main(@RequestParam("prod_code") int prod_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 상세 조회
	public void getGoodsDetail(HttpServletRequest request, int prod_code, Model model, PagingVO vo, String job, InquiryVO ivo, ReviewVO rvo)throws Exception;
	
	//public List<InquiryVO> insertInquiry(int prod_code, String job, InquiryVO vo)throws Exception;
	
	//public List<ReviewVO> insertInquiry(int prod_code, String job, ReviewVO vo)throws Exception;
	
	public ModelAndView insertInquiry(InquiryVO vo, HttpServletRequest request)throws Exception;
	
	public ModelAndView insertReview(ReviewVO vo, HttpServletRequest request)throws Exception;
	
	
	//ck에디터 이미지 업로드
	public void qnaUpload(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile , @RequestParam MultipartFile upload) throws Exception;
	
	//ck이미지 전송
	public void ckedSubmit(@RequestParam(value="uid") String uid , @RequestParam(value="fileName") String fileName 
			, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
