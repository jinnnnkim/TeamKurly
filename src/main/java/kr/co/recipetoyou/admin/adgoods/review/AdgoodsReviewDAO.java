package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface AdgoodsReviewDAO {
	
	//페이징
	public List<AdgoodsReviewVO> listPage(int page) throws Exception;
	
	//전체 후기 조회
	public List<AdgoodsReviewVO> listPaging(PagingVO vo) throws Exception;
	
	//후기 상세 내용 조회
	public AdgoodsReviewVO readReview(int prod_review_code) throws Exception;

}
