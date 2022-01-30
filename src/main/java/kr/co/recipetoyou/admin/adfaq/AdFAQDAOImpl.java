package kr.co.recipetoyou.admin.adfaq;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	@Override
	public int FAQListCount() {
		return sqlSession.selectOne("mapper.adfaq.FAQListCount");
	}

}
