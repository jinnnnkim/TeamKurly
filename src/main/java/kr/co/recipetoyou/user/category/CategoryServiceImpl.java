package kr.co.recipetoyou.user.category;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;


@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

private static final Logger logger = LoggerFactory.getLogger("CategoryServiceImpl.class");
	
	@Autowired
	private CategoryDAO dao;

	@Override
	public List<CategoryVO> goodsInfoList() throws DataAccessException{
		
		List<CategoryVO> goodsInfo = dao.goodsInfo();
		
		goodsInfo.forEach(agvo->{
			
			try {
				int prod_code = agvo.getProd_code();
				List<AdgoodsImgVO> imageList  = dao.getGoodsInfoImage(prod_code);
				agvo.setImageList(imageList);
				
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (JsonMappingException e) {
				// TODO: handle exception
			}catch (IOException e) {
				// TODO: handle exception
			}
			
		});

		return goodsInfo;
	}

	//이미지 데이터
	@Override
	public List<AdgoodsImgVO> getGoodsInfoImage(int prod_code) throws Exception {
		
		return dao.getGoodsInfoImage(prod_code);
	}
	
	//상품 정보
	@Override
	public CategoryVO getGoodsInfo(int prod_code) throws JsonProcessingException {
			
		CategoryVO vo = dao.getGoodsInfo(prod_code);
		vo.setImageList(dao.getGoodsInfoImage(prod_code));
		
		return vo;
	}
	@Override
	public List<CategoryVO> bargainList() throws DataAccessException{
		
		List<CategoryVO> bargain = dao.bargain();
		return bargain;
	}
	
	@Override
	public CategoryVO goodsDetailInfo(int prod_code) throws DataAccessException{
		return dao.goodsDetailInfo(prod_code);
	}

	@Override
	public List<CategoryVO> goodsDetailList() throws DataAccessException {
		List<CategoryVO> goodsDetail = dao.goodsDetail();
		return goodsDetail;
	}
	
	
	
}
