package kr.co.recipetoyou.main.inqreview;

import java.util.List;
import java.util.Map;

import kr.co.recipetoyou.util.PagingVO;

public interface InqReviewDAO {
	
	
	public List<InquiryVO> inqlistPaging(int page)throws Exception;
	
	public List<InquiryVO> getInquiryList(PagingVO vo)throws Exception;
	
	public void insertInquiry(InquiryVO vo)throws Exception;
	
	public List<ReviewVO> revlistPaging(int page) throws Exception;
	
	public List<ReviewVO> getReviewList(PagingVO vo)throws Exception;
	
	public void insertReview(ReviewVO vo)throws Exception;
	
	//후기 조회
	public ReviewVO getReviewDetail(int prod_review_code)throws Exception;
	
	public int checkOrderUser(Map<String, Object>map)throws Exception;

}
