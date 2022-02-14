package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.util.PagingVO;

public interface AdgoodsReviewDAO {
	
	//페이징
	public List<AdgoodsReviewVO> listPage(int page) throws Exception;
	
	//전체 후기 조회
	public List<AdgoodsReviewVO> listPaging(PagingVO vo) throws Exception;
	
	//후기 상세 내용 조회
	public AdgoodsReviewVO readReview(int prod_review_code) throws Exception;
	
	//전체 후기 수 조회
	//DB 테이블에 있는 모든 후기 수 계산 후 리턴
	public int reviewCount(PagingVO vo) throws DataAccessException;
	
	//검색 결과 개수
	public int reviewAllCount(PagingVO vo) throws Exception;

}
