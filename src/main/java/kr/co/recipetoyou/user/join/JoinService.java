package kr.co.recipetoyou.user.join;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface JoinService {

	//public List<UserVO> listUsers() throws DataAccessException;
	public int addUser(UserVO userVO) throws DataAccessException;
	//public int removeUser(String id) throws DataAccessException;

	public int idChk(UserVO userVO) throws Exception;

	
	
}
