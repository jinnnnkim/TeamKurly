package kr.co.recipetoyou.main.goods;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface GoodsService {

	public GoodsVO listProduct(int prod_code)throws Exception;
	
	//전체 상품 조회
	public List<GoodsVO> listGoods(PagingVO vo) throws Exception;
	
	//상품 상세 조회
	public GoodsVO goodsDetail(int prod_code)throws Exception;
	
	//목록
	public List<CommentVO> commentList(CommentVO commentvo)throws Exception;
	
	//총 개수
	public int commentTotal(CommentVO commentvo)throws Exception;
	
	//글 등록
	public CommentVO commentWrite(CommentVO commentvo) throws Exception;
	
	//상세 조회
	public CommentVO commentView(CommentVO commentvo)throws Exception;
	
	public int UserReview(CommentVO commentvo)throws Exception;
	
	//삭제
	public CommentVO commentDelete(CommentVO commentvo)throws Exception;
	
	//수정
	public CommentVO commentUpdate(CommentVO commentvo)throws Exception;

}
