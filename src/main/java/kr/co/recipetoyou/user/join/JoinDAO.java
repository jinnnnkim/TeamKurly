package kr.co.recipetoyou.user.join;

import java.util.List;

import org.springframework.dao.DataAccessException;

<<<<<<< HEAD
=======
import kr.co.recipetoyou.user.UserVO;

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
public interface JoinDAO {

	//public List<UserVO> selectAllUserList() throws DataAccessException;
	public int insertUser(UserVO userVO) throws DataAccessException;
	//public int deleteUser(String id) throws DataAccessException;

<<<<<<< HEAD
	public int idChk(UserVO userVO) throws Exception;
=======
	public int idChk(String user_id) throws Exception;

	public int mailChk(String user_email)throws DataAccessException;

	//int idChk(UserVO userVO) throws DataAccessException;
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	
}
