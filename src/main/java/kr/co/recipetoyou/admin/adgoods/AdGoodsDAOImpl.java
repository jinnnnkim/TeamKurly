package kr.co.recipetoyou.admin.adgoods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Repository("adgoodsDAO")
public class AdGoodsDAOImpl implements AdGoodsDAO{
	
	@Autowired
	private SqlSession sqlSession;	//DB 연결 (XML에서 만들어진 객체를 가져다 사용하겠다. = 의존 주입)
	
	private static final String NAMESPACE = "mapper.adgoods"; 	//mapper 구분하는 값 namespace
	
	//페이징
	@Override
	public List<AdGoodsVO> listPage(int page) throws Exception {
		
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;
		return sqlSession.selectList(NAMESPACE+".listPage", page);
	}

	//페이징 처리하는 동작(PagingVO 객체 사용)
	@Override
	public List<AdGoodsVO> listPaging(PagingVO vo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".listPaging", vo);
	}
	
	//상품 수 조회
	//DB 테이블에 있는 모든 상품수 계산 후 리턴
	@Override
	public int goodsCount(PagingVO vo) throws DataAccessException {
		
		return sqlSession.selectOne(NAMESPACE+".prodCount");
	}

	//상품 상세 정보 조회
	@Override
	public AdGoodsVO readGoods(int prodCode) throws DataAccessException {
		
		return sqlSession.selectOne(NAMESPACE+".readProduct", prodCode);
	}
	
	//카테고리
	@Override
	public List<AdGoodsCateVO> cateList() throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".cateList");
	}
	
	//상품명 검색
	@Override
	public List<AdGoodsVO> listSearch(AdGoodsCateVO option) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".search", option);
	}

	@Override
	public int countSearch(AdGoodsCateVO option) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".countSearch", option);
	}
	
	//상품 등록
	@Override
	public void register(AdGoodsVO agvo) throws Exception {
		
		sqlSession.insert(NAMESPACE+".register", agvo);
		
	}
	
	//이미지 등록
	@Override
	public void imageUpload(AdgoodsImgVO imagevo) throws Exception {
		
		
		sqlSession.insert(NAMESPACE+"imageUpload", imagevo);
		
	}
	
	

}
