package kr.co.recipetoyou.admin.adgoods;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Service("adgoodsService")
public class AdGoodsServiceImpl implements AdGoodsService {
	
	private static final Logger logger = LoggerFactory.getLogger("ProductServiceImpl.class");
	
	@Autowired
	AdGoodsDAO adGoodsDAO;
	
	//전체 상품 조회
	@Override
	public List<AdGoodsVO> listProduct(PagingVO vo) throws Exception {
		
		List<AdGoodsVO> prodList = adGoodsDAO.listPaging(vo);
		return prodList;
	}
	
	//상품 수 조회
	@Override
	public int prodCount(PagingVO vo) throws DataAccessException {
		
		return adGoodsDAO.goodsCount(vo);
	}
	
	//상품 상세 정보 조회
	@Override
	public AdGoodsVO getGoodsInfo(int prodCode) throws DataAccessException {
		
		return adGoodsDAO.readGoods(prodCode);
	}
	
	//카테고리
	@Override
	public List<AdGoodsCateVO> cateList() throws Exception {
		
		logger.info("(service)cateList.....");
		
		return adGoodsDAO.cateList();
	}

	//상품명 검색
	@Override
	public List<AdGoodsVO> listSearch(AdGoodsCateVO option) throws Exception {
		
		return adGoodsDAO.listSearch(option);
	}

	//검색 결과 갯수
	@Override
	public int countSearch(AdGoodsCateVO option) throws Exception {
		
		return adGoodsDAO.countSearch(option);
	}
	
	//상품 등록
	@Override
	public void register(AdGoodsVO agvo) throws Exception {
		
		logger.info("(service) register........");
		adGoodsDAO.register(agvo);
		
		//이미지가 없는 경우 register() 메서드 실행 종료
		if(agvo.getImageList() == null || agvo.getImageList().size() == 0) {
			return;
		}
		//업로드 이미지 정보 DB 등록
		for(AdgoodsImgVO imagevo : agvo.getImageList()) {
			imagevo.getProd_code();
			adGoodsDAO.imageUpload(imagevo);
		}
		
	}
	
	//이미지 데이터
	@Override
	public List<AdgoodsImgVO> getGoodsImage(int prod_code) throws Exception {
		
		return adGoodsDAO.getGoodsImage(prod_code);
	}
	
	
	

}
