package kr.co.recipetoyou.user.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

<<<<<<< HEAD
import kr.co.recipetoyou.user.join.UserVO;
=======
import kr.co.recipetoyou.user.UserVO;

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816

@Service("loginService")
@Transactional(propagation = Propagation.REQUIRED)
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;

<<<<<<< HEAD
	@Override
	public List<UserVO> listUsers() throws DataAccessException {
		List<UserVO> usersList = loginDAO.selectAllUserList();
		return usersList;
	}

=======
	/*
	 * @Override public List<UserVO> listUsers() throws DataAccessException {
	 * List<UserVO> usersList = loginDAO.selectAllUserList(); return usersList; }
	 * 
	 */
	
	
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	@Override
	public int addUser(UserVO userVO) throws DataAccessException {
		return loginDAO.insertUser(userVO);
	}

<<<<<<< HEAD
	@Override
	public int removeUser(String id) throws DataAccessException {
		return loginDAO.deleteUser(id);
	}

=======
	
	/*
	 * @Override public int removeUser(String id) throws DataAccessException {
	 * return loginDAO.deleteUser(id); }
	 */

	
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	@Override
	public UserVO login(UserVO userVO) throws DataAccessException {
		return loginDAO.loginById(userVO);
	}

}
