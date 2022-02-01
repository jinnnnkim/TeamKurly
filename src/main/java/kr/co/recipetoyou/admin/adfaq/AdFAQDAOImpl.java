package kr.co.recipetoyou.admin.adfaq;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.admin.aduser.AdUserVO;
import kr.co.recipetoyou.util.PagingVO;

@Repository("faqDAO")
public class AdFAQDAOImpl implements AdFAQDAO{

	@Autowired
	private SqlSession sqlSession;
	
	//페이징
	@Override
	public List<AdFAQVO> FAQListPage(int page) throws Exception {
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;
		return sqlSession.selectList("mapper.adfaq.FAQListPage", page);
	}
		
	//페이징 처리하는 동작(PagingVO 객체 사용)
	@Override
	public List<AdFAQVO> FAQListPaging(PagingVO vo) throws Exception {
		System.out.println("DAO: listPageVO 호출");
		return sqlSession.selectList("mapper.adfaq.FAQListPaging", vo);
	}

	//FAQ 정보 수 조회
	@Override
	public int FAQListCount() {
		return sqlSession.selectOne("mapper.adfaq.FAQListCount");
	}

	//FAQ 정보 삭제
	@Override
	public int deleteFAQ(@RequestParam("id") String id) throws DataAccessException {	
		int result = sqlSession.delete("mapper.adfaq.deleteFAQ", id);
		return result;
	}
	
	//FAQ 상세 정보 조회
	@Override
	public AdFAQVO readFAQ(String id) throws DataAccessException {
		return sqlSession.selectOne("mapper.adfaq.readFAQ", id);
	}
		
	//FAQ 정보 수정
	@Override
	public void updateFAQ(AdFAQVO vo) throws DataAccessException {
		sqlSession.update("mapper.adfaq.updateFAQ", vo);
	}

	//카테고리
	@Override
	public List<AdFAQCategoryVO> cateFAQList() throws DataAccessException {
		return sqlSession.selectList("mapper.adfaq.cateFAQList");
	}

	//상품명 검색
	@Override
	public List<AdFAQVO> listFAQSearch(AdFAQCategoryVO option) throws Exception {
		return sqlSession.selectOne("mapper.adfaq.search", option);
	}

	//상품 등록
	@Override
	public void register(AdFAQVO vo) throws Exception {
		sqlSession.insert("mapper.adfaq.registerFAQ", vo);
		
	} 

}
