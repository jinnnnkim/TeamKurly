package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("adReviewDAO")
public class AdgoodsReviewDAOImpl implements AdgoodsReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.adgoodsreview";

	//페이징
	@Override
	public List<AdgoodsReviewVO> listPage(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;
		return sqlSession.selectList(NAMESPACE+".listPage", page);
	}

	//페이징 처리, 후기 목록, 상품명으로 검색
	@Override
	public List<AdgoodsReviewVO> listPaging(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".getReviewList", vo);
	}

	//상세 조회
	@Override
	public AdgoodsReviewVO readReview(int prod_review_code) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".getReviewDetail", prod_review_code);
	}

	//총 후기 수
	@Override
	public int reviewCount(PagingVO vo) throws DataAccessException {
		
		return sqlSession.selectOne(NAMESPACE+".getReviewAllCount");
	}

	//검색 결과 개수
	@Override
	public int reviewAllCount(PagingVO vo) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".getReviewCount", vo);
	}

}
