package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface AdgoodsReviewService {
	
	//전체 후기 조회
	public List<AdgoodsReviewVO> listReview(PagingVO vo) throws Exception;
	
	//후기 상세 페이지
	public AdgoodsReviewVO adReviewDetail(int prod_review_code) throws Exception;

}
