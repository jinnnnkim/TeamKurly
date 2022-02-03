package kr.co.recipetoyou.user.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

<<<<<<< HEAD
import kr.co.recipetoyou.user.join.UserVO;

public interface LoginService {

	public List<UserVO> listUsers() throws DataAccessException;
	public int addUser(UserVO userVO) throws DataAccessException;
	public int removeUser(String id) throws DataAccessException;
=======
import kr.co.recipetoyou.user.UserVO;

public interface LoginService {

	//public List<UserVO> listUsers() throws DataAccessException;
	public int addUser(UserVO userVO) throws DataAccessException;
	//public int removeUser(String id) throws DataAccessException;
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	public UserVO login(UserVO userVO) throws DataAccessException;
}
