package kr.co.recipetoyou.admin.adgoods.Inquiry;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.util.PagingVO;

public interface AdInquiryDAO {
	
	//페이징
	public List<AdInquiryVO> listPage(int page) throws Exception;
	
	//전체 문의 조회
	public List<AdInquiryVO> listPaging(PagingVO vo) throws Exception;
	
	//문의 상세 내용 조회
	public AdInquiryVO readInquiry(int prod_inq_code) throws Exception;
	
	//전체 후기 수 조회
	//DB 테이블에 있는 모든 후기 수 계산 후 리턴
	public int inquiryCount(PagingVO vo) throws DataAccessException;
		
	//검색 결과 개수
	public int inquiryAllCount(PagingVO vo) throws Exception;

}
