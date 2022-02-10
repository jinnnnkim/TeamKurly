package kr.co.recipetoyou.admin.adgoods.Inquiry;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface AdInquiryDAO {
	
	//페이징
	public List<AdInquiryVO> listPage(int page) throws Exception;
	
	//전체 문의 조회
	public List<AdInquiryVO> listPaging(PagingVO vo) throws Exception;
	
	//문의 상세 내용 조회
	public AdInquiryVO readInquiry(int prod_inq_code) throws Exception;

}
