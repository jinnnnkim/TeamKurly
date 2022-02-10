package kr.co.recipetoyou.admin.adgoods.Inquiry;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("adInquiryDAO")
public class AdInquiryDAOImpl implements AdInquiryDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.adgoodsInquiry";

	//페이징
	@Override
	public List<AdInquiryVO> listPage(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
				if(page <= 0) {
					page = 1;
				}
				page = (page - 1)*10;
				return sqlSession.selectList(NAMESPACE+".listPage", page);
	}

	//전체 목록 조회
	@Override
	public List<AdInquiryVO> listPaging(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".getInquiryList", vo);
	}

	//문의 상세 페이지
	@Override
	public AdInquiryVO readInquiry(int prod_inq_code) throws Exception {
		
		System.out.println("prod_inq_code"+prod_inq_code);
		
		return sqlSession.selectOne(NAMESPACE+".getInquiryDetail", prod_inq_code);
	}

}
