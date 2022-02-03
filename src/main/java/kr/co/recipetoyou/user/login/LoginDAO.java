package kr.co.recipetoyou.user.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

<<<<<<< HEAD
import kr.co.recipetoyou.user.join.UserVO;

public interface LoginDAO {

	public List<UserVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UserVO userVO) throws DataAccessException;
	public int deleteUser(String id) throws DataAccessException;
=======
import kr.co.recipetoyou.user.UserVO;


public interface LoginDAO {

	//public List<UserVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UserVO userVO) throws DataAccessException;
	//public int deleteUser(String id) throws DataAccessException;
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	public UserVO loginById(UserVO userVO) throws DataAccessException;
}
