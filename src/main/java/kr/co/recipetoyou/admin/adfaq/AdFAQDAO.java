package kr.co.recipetoyou.admin.adfaq;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.util.PagingVO;

public interface AdFAQDAO {

	public List<AdFAQVO> FAQListPage(int page) throws Exception;

	public List<AdFAQVO> FAQListPaging(PagingVO vo) throws Exception;

	public int FAQListCount();

	public int deleteFAQ(String id) throws DataAccessException;

	public AdFAQVO readFAQ(String id) throws DataAccessException;

	public void updateFAQ(AdFAQVO vo) throws DataAccessException;

}
