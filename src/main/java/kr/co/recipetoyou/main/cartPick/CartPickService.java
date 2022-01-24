package kr.co.recipetoyou.main.cartPick;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.user.UserVO;

public interface CartPickService {
	
	  public List<CartPickVO> listPicks () throws DataAccessException;
	  public int removePick(String PROD_NAME) throws DataAccessException;
	  
}
	 
