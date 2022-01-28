package kr.co.recipetoyou.main.goods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("goodsService")
@Transactional(propagation = Propagation.REQUIRED)
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDAO goodsDAO;
	

	@Override
	public GoodsVO listProduct(int prod_code) {
		GoodsVO goodsVO = goodsDAO.selectProdCode(prod_code);
		return goodsVO;
	}

}
