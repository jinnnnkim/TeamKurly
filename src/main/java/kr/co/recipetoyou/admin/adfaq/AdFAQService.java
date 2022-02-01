package kr.co.recipetoyou.admin.adfaq;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.admin.aduser.AdUserVO;
import kr.co.recipetoyou.util.PagingVO;

public interface AdFAQService {

	public List<AdFAQVO> listFAQ(PagingVO vo) throws Exception;

	public int FAQListCount() throws DataAccessException;

	public AdFAQVO getFAQInfo(String id) throws DataAccessException;

	public int removeFAQ(String id) throws DataAccessException;

	public void updateFAQInfo(AdFAQVO vo) throws DataAccessException;

	public List<AdFAQCategoryVO> cateFAQList() throws Exception;

	public List<AdFAQVO> listSearch(AdFAQCategoryVO option) throws Exception;

	public void register(AdFAQVO vo) throws Exception;


}
