package kr.co.recipetoyou.main.goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

public interface GoodsController {
	
	public ModelAndView main(@RequestParam("prod_code") int prod_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 문의&후기 목록
	public List<CommentVO> commentList(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//상품 상세 조회
	public void getGoodsDetail(int prod_code, Model model, PagingVO vo)throws Exception;
	
	//상품 문의&후기 번호
	public CommentVO getNext (HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	
	//상품 문의&후기 작성
	public CommentVO commentWrite(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	
	//상품 문의&후기 조회
	public CommentVO commentView(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	
	//상품 문의&후기 삭제
	public CommentVO commentDelete(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	
	//상품 문의&후기 수정
	public CommentVO commentUpdate(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo) throws Exception;
	//답글 작성 페이지
	
	//답글 작성

}
