package kr.co.recipetoyou.main.goods;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.util.PagingVO;

@Service("inqReviewService")
@Transactional(propagation = Propagation.REQUIRED)
public class InqReviewServiceImpl implements InqReviewService{
	
	@Autowired
	private InqReviewDAO inqReviewDAO;

	@Override
	public int getInqSequence() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<InquiryVO> getInquiryList(PagingVO vo, int prod_code) throws Exception {
		
		List<InquiryVO> inquiryList = inqReviewDAO.getInquiryList(vo);
		
		return inquiryList;
	}

	@Override
	public void insertInquiry(InquiryVO vo) throws Exception {
		
		inqReviewDAO.insertInquiry(vo);
		
	}

	@Override
	public int getRevSequence() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReviewVO> getReviewList(PagingVO vo, int prod_code) throws Exception {
		
		List<ReviewVO> reviewList = inqReviewDAO.getReviewList(vo);
		
		return reviewList;
	}

	//리뷰 등록
	@Override
	public void insertReview(ReviewVO vo) throws Exception {
		
		//리뷰 등록 쿼리 실행
		inqReviewDAO.insertReview(vo);	//리뷰 등록

		
	}

	@Override
	public int checkOrderUser(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


}
