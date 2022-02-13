package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("adReviewDAO")
public class AdgoodsReviewDAOImpl implements AdgoodsReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.adgoodsreview";

	@Override
	public List<AdgoodsReviewVO> listPage(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;
		return sqlSession.selectList(NAMESPACE+".listPage", page);
	}

	@Override
	public List<AdgoodsReviewVO> listPaging(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".getReviewList", vo);
	}

	@Override
	public AdgoodsReviewVO readReview(int prod_review_code) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".getReviewDetail", prod_review_code);
	}

}
