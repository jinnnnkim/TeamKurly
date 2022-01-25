package kr.co.recipetoyou.user.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.user.UserVO;

@Service("joinService")
@Transactional(propagation = Propagation.REQUIRED)
public class JoinServiceImpl implements JoinService {
	@Autowired  //인젝션을 자유롭게 하기위해.
	private JoinDAO joinDAO;
	
	@Override
	public int addUser(UserVO userVO) throws DataAccessException {
		return joinDAO.insertUser(userVO);
	}

	@Override
	public int idChk(UserVO userVO) throws Exception {
		int result = joinDAO.idChk(userVO);
		return result;
	}

}
