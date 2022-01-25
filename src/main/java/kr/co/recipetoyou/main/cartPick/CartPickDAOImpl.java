package kr.co.recipetoyou.main.cartPick;


import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Repository("cartPickDAO")
public class CartPickDAOImpl implements CartPickDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CartPickVO> selectAllCartPickList() throws DataAccessException {
		
		List<CartPickVO> pickList = sqlSession.selectList("mapper.user.selectAllCartPickList");
		return pickList;
	}

	@Override
	public int deletePick(@RequestParam("PROD_NAME") String PROD_NAME) throws DataAccessException {
		int result = sqlSession.delete("mapper.user.deletePick", PROD_NAME);
		System.out.println("dao 호출"+PROD_NAME);
		return result;
	}

	//장바구니 담기
	@Override
	public int insertCartAdd(CartAddVO cartAddVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertCartAdd", cartAddVO);
		return result;
	}

	//찜 담기
	@Override
	public int insertFavAdd(FavVO favVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertFavAdd", favVO);
		return result;
	}

	
	

	
	
}
