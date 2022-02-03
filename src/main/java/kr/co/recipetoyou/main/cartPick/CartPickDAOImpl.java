package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository("cartPickDAO")
public class CartPickDAOImpl implements CartPickDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CartPickVO__> selectAllCartPickList() throws DataAccessException {
		List<CartPickVO__> cartPicksList = sqlSession.selectList("mapper.cartPick.selectAllCartPickList");
		return cartPicksList;
	}

	@Override
	public int insertCartPick(CartPickVO__ cartPickVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.cartPick.insertCartPick", cartPickVO);
		return result;
	}

	@Override
	public int deleteCartPick(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.cartPick.deleteCartPick", id);
		return result;
	}

	

}
