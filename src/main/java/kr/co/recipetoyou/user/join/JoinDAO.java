package kr.co.recipetoyou.user.join;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.UserVO;

public interface JoinDAO {

	//public List<UserVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UserVO userVO) throws DataAccessException;
	//public int deleteUser(String id) throws DataAccessException;

	public int idChk(String user_id) throws Exception;

	public int mailChk(String user_email)throws DataAccessException;

	//int idChk(UserVO userVO) throws DataAccessException;
	
}
