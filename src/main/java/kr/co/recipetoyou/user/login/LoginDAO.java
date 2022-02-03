package kr.co.recipetoyou.user.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.join.UsersVO;

public interface LoginDAO {

	public List<UsersVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UsersVO userVO) throws DataAccessException;
	public int deleteUser(String id) throws DataAccessException;
	public UsersVO loginById(UsersVO userVO) throws DataAccessException;

}
