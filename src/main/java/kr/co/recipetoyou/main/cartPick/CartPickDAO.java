package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.join.UserVO;

public interface CartPickDAO {
	
	public List<CartPickVO__> selectAllCartPickList() throws DataAccessException;
	public int insertCartPick(CartPickVO__ cartPickVO) throws DataAccessException;
	public int deleteCartPick(String id) throws DataAccessException;

}
