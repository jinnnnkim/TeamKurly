package kr.co.recipetoyou.main.cartPick;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.UserVO;

public interface CartPickDAO{
	//조회
	public List<CartPickVO> selectAllCartPickList() throws DataAccessException;
	//삭제
	public int deletePick(String PROD_NAME) throws DataAccessException;


}
