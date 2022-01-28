package kr.co.recipetoyou.main.goods;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("goodsDAO")
public class GoodsDAOImpl implements GoodsDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public GoodsVO selectProdCode(int prod_code) {
		GoodsVO goodsVO = sqlSession.selectOne("mapper.goods.selectProdCode", prod_code);
		return goodsVO;
	}

}
