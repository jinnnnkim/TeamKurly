package kr.co.recipetoyou.user.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.user.join.UsersVO;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UsersVO> selectAllUserList() throws DataAccessException {
		List<UsersVO> usersList = sqlSession.selectList("mapper.user.selectAllUserList");
		return usersList;
	}

	@Override
	public int insertUser(UsersVO userVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertUser", userVO);
		return result;
	}

	@Override
	public int deleteUser(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.user.deleteUser", id);
		return result;
	}

	@Override
	public UsersVO loginById(UsersVO userVO) throws DataAccessException {
		UsersVO vo = sqlSession.selectOne("mapper.user.loginById", userVO);
		return vo;
	}


}
