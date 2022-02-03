package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.join.UserVO;

public interface CartPickService {

	public List<CartPickVO__> listCartPicks() throws DataAccessException;
	public int addCartPick(CartPickVO__ cartPickVO) throws DataAccessException;
	public int removeCartPick(String id) throws DataAccessException;
	
}
