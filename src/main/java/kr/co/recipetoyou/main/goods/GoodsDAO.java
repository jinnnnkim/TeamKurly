package kr.co.recipetoyou.main.goods;

import java.util.List;

public interface GoodsDAO {

	public GoodsVO selectProdCode(int prod_code);
	
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
