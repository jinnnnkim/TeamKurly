package kr.co.recipetoyou.main.inqreview;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.recipetoyou.util.PagingVO;

public interface InqReviewService {

	
	public List<InquiryVO> getInquiryList(PagingVO vo, int prod_code)throws Exception;
	
	public void insertInquiry(InquiryVO vo)throws Exception;
	
	
	public List<ReviewVO> getReviewList(PagingVO vo, int prod_code) throws Exception;
	
	public void insertReview(ReviewVO vo)throws Exception;
	
	public ReviewVO getReviewDetail(int prod_review_code)throws Exception;
	
	public int checkOrderUser(Map<String, Object>map)throws Exception;
	
}
