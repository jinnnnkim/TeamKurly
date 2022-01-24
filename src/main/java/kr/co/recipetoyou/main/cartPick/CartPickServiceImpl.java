package kr.co.recipetoyou.main.cartPick;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("cartPickService")
@Transactional(propagation = Propagation.REQUIRED)
public class CartPickServiceImpl implements CartPickService{

	@Autowired
	private CartPickDAO cartPickDAO;

	@Override
	public List<CartPickVO> listPicks () throws DataAccessException {
	
		List<CartPickVO> pickList = cartPickDAO.selectAllCartPickList();
		return pickList;
	}

	@Override
	public int removePick(String PROD_NAME) throws DataAccessException {
		System.out.println("service 호출");
		return cartPickDAO.deletePick(PROD_NAME);
		
	}
	
	

}
