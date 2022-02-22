package kr.co.recipetoyou.main.goods;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("inqReviewDAO")
public class InqReviewDAOImpl implements InqReviewDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.inqreview";

	@Override
	public int getInqSequence() throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".getInqSequence");
	}

	@Override
	public List<InquiryVO> inqlistPaging(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page<=0) {
			page = 1;
		}
		page = (page -1)*10;
		
		return sqlSession.selectList(NAMESPACE+".listinqPage", page);
	}
	
	@Override
	public List<InquiryVO> getInquiryList(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".getInquiryList", vo);
	}

	@Override
	public void insertInquiry(InquiryVO vo) throws Exception {
		
		
		sqlSession.insert(NAMESPACE+".insertInquiry", vo);
		
	}

	@Override
	public int getRevSequence() throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".getRevSequence");
	}
	
	@Override
	public List<ReviewVO> getReviewList(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".getReviewList", vo);
	}

	@Override
	public List<ReviewVO> revlistPaging(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page<=0) {
			page = 1;
		}
		page = (page -1)*10;
		
		return sqlSession.selectList(NAMESPACE+".listrevPage", page);
	
	}

	@Override
	public void insertReview(ReviewVO vo) throws Exception {
		
		sqlSession.insert(NAMESPACE+".insertReview", vo);
	}

	@Override
	public int checkOrderUser(Map<String, Object> map) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".checkOrderUser");
	}

}
