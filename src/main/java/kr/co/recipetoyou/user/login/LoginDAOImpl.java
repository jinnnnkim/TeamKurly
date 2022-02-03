package kr.co.recipetoyou.user.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import kr.co.recipetoyou.user.join.UserVO;
=======
import kr.co.recipetoyou.user.UserVO;

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	private SqlSession sqlSession;

<<<<<<< HEAD
	@Override
	public List<UserVO> selectAllUserList() throws DataAccessException {
		List<UserVO> usersList = sqlSession.selectList("mapper.user.selectAllUserList");
		return usersList;
	}
=======
	/*
	 * @Override public List<UserVO> selectAllUserList() throws DataAccessException
	 * { List<UserVO> usersList =
	 * sqlSession.selectList("mapper.user.selectAllUserList"); return usersList; }
	 */
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816

	@Override
	public int insertUser(UserVO userVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertUser", userVO);
		return result;
	}

<<<<<<< HEAD
	@Override
	public int deleteUser(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.user.deleteUser", id);
		return result;
	}
=======
	/*
	 * @Override public int deleteUser(String id) throws DataAccessException { int
	 * result = sqlSession.delete("mapper.user.deleteUser", id); return result; }
	 */
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816

	@Override
	public UserVO loginById(UserVO userVO) throws DataAccessException {
		UserVO vo = sqlSession.selectOne("mapper.user.loginById", userVO);
		return vo;
	}


}
