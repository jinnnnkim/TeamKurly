package kr.co.recipetoyou.admin.adgoods.Inquiry;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface AdInquiryService {
	
	//전체 문의 조회
	public List<AdInquiryVO> listInquiry(PagingVO vo)throws Exception;
	
	//문의 상세 페이지
	public AdInquiryVO adInquiryDetail(int prod_inq_code)throws Exception;

}
