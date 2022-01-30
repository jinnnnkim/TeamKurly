package kr.co.recipetoyou.admin.adfaq;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.util.PagingVO;

public interface AdFAQService {

	public List<AdFAQVO> listFAQ(PagingVO vo) throws Exception;

	public int FAQListCount() throws DataAccessException;

}
