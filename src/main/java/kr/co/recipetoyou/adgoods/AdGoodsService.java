package kr.co.recipetoyou.adgoods;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

public interface AdGoodsService {

	
	//전체 상품 조회
	public List<AdGoodsVO> listProduct(PagingVO vo) throws Exception;
		
	//조회된 상품 수 조회
	public int prodCount(PagingVO vo) throws DataAccessException;
		
	//상품 상세 정보 조회
	public AdGoodsVO getGoodsInfo(int prodCode) throws DataAccessException;
		
	//카테고리 리스트
	public List<AdGoodsCateVO> cateList() throws Exception;
		
	//상품명 검색
	public List<AdGoodsVO> listSearch(AdGoodsCateVO option) throws Exception;
	
	//상품 등록
	public void register(AdGoodsVO agvo) throws Exception;
		
	//검색 결과 갯수
	public int countSearch(AdGoodsCateVO option) throws Exception;
}
