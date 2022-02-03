package kr.co.recipetoyou.user.join;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface JoinDAO {

	//public List<UserVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UserVO userVO) throws DataAccessException;
	//public int deleteUser(String id) throws DataAccessException;

	public int idChk(UserVO userVO) throws Exception;
	
}
