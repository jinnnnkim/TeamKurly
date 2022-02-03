package kr.co.recipetoyou.user.login;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.join.UsersVO;

public interface LoginService {

	public List<UsersVO> listUsers() throws DataAccessException;
	public int addUser(UsersVO userVO) throws DataAccessException;
	public int removeUser(String id) throws DataAccessException;
	public UsersVO login(UsersVO userVO) throws DataAccessException;
}