package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.user.login.LoginDAO;

@Service("cartPickService")
@Transactional(propagation = Propagation.REQUIRED)
public class CartPickServiceImpl implements CartPickService {
	@Autowired
	private CartPickDAO cartPickDAO;

	@Override
	public List<CartPickVO__> listCartPicks() throws DataAccessException {
		List<CartPickVO__> membersList = cartPickDAO.selectAllCartPickList();
		return membersList;
	}

	@Override
	public int addCartPick(CartPickVO__ cartPickVO) throws DataAccessException {
		return cartPickDAO.insertCartPick(cartPickVO);
	}

	@Override
	public int removeCartPick(String id) throws DataAccessException {
		return cartPickDAO.deleteCartPick(id);
	}

	

}
