package kr.co.recipetoyou.main.goods;

import java.util.List;
import java.util.Map;

import kr.co.recipetoyou.util.PagingVO;

public interface InqReviewService {

	public int getInqSequence() throws Exception;
	
	public List<InquiryVO> getInquiryList(PagingVO vo, int prod_code)throws Exception;
	
	public void insertInquiry(InquiryVO vo)throws Exception;
	
	public int getRevSequence() throws Exception;
	
	public List<ReviewVO> getReviewList(PagingVO vo, int prod_code) throws Exception;
	
	public void insertReview(ReviewVO vo)throws Exception;
	
	public int checkOrderUser(Map<String, Object>map)throws Exception;
	
}
