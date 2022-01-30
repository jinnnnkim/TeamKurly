package kr.co.recipetoyou.admin.adfaq;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface AdFAQDAO {

	public List<AdFAQVO> FAQListPage(int page) throws Exception;

	public List<AdFAQVO> FAQListPaging(PagingVO vo) throws Exception;

	public int FAQListCount();

}
