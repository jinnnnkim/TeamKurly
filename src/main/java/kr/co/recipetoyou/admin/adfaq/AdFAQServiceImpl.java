package kr.co.recipetoyou.admin.adfaq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.util.PagingVO;

@Service("faqService")
public class AdFAQServiceImpl implements AdFAQService {
	
	@Autowired
	private AdFAQDAO dao;
	
	//전체 FAQ목록 조회
	@Override
		public List<AdFAQVO> listFAQ(PagingVO vo) throws Exception {		
		List<AdFAQVO> FAQList = dao.FAQListPaging(vo);	
		return FAQList;
	}

	//FAQ목록 수 조회
	@Override
	public int FAQListCount() throws DataAccessException {
		return dao.FAQListCount();
	}
}