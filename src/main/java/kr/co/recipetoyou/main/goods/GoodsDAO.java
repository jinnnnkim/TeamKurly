package kr.co.recipetoyou.main.goods;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.util.PagingVO;

public interface GoodsDAO {

	//페이징
	public List<GoodsVO> listPage(int page)throws Exception;
	
	//페이징 처리, 상품 목록
	public List<GoodsVO> listPaging(PagingVO vo) throws Exception;
	
	//상품 조회
	public GoodsVO selectProdCode(int prod_code)throws Exception;
	
	//이미지 데이터 반환
	public List<AdgoodsImgVO> goodsImageList(int prod_code) throws JsonProcessingException;

	//댓글 목록
	public List<CommentVO> CommentList(CommentVO commentvo)throws Exception;
	
	//댓글 총 개수
	public int commentTotal(CommentVO commentvo)throws Exception;
	
	//comment_code 생성
    public int GetNext() throws Exception;
    
    //subcomm_code 생성
    public int SubGetNext(CommentVO commentvo) throws Exception;
    
    //댓글 등록
    public int commentWrite(CommentVO commentvo) throws Exception;
    
    //댓글 상세 조회
    public CommentVO commentView(CommentVO commentvo) throws Exception;
    
    //후기작성할 조건 충족여부
    public int UserReview(CommentVO commentvo) throws Exception;
    
    //댓글 삭제
    public int commentDelete(CommentVO commentvo) throws Exception;
    
    //댓글 수정
    public int commentUpdate(CommentVO commentvo) throws Exception;

}
