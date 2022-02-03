package kr.co.recipetoyou.user.join;

<<<<<<< HEAD
=======
import java.util.HashMap;

import org.json.simple.JSONObject;
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

<<<<<<< HEAD
=======
import kr.co.recipetoyou.user.UserVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
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
<<<<<<< HEAD
	public int idChk(UserVO userVO) throws Exception {
		int result = joinDAO.idChk(userVO);
		return result;
	}

=======
	public int idChk(String user_id) throws Exception {
		int result = joinDAO.idChk(user_id);
		return result;
	}

	@Override
	public int mailChk(String user_email) {
		System.out.println("service: "+user_email);
		int result = joinDAO.mailChk(user_email);
		return result;
	}
	
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) { 
		String api_key = "NCSGCCOOXTD0NBH5"; 
		String api_secret = "DP2EU13TDMD0CSHXJXVVW9WXUGQDB8AL"; 
		Message coolsms = new Message(api_key, api_secret); 
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", userPhoneNumber); 
		params.put("from", "01041772313"); 
		params.put("type", "SMS"); 
		params.put("text", "[recipetoyou] 인증번호는" + "["+randomNumber+"]" + "입니다."); 
		params.put("app_version", "test app 1.2"); 
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage()); 
			System.out.println(e.getCode()); 
		} 
	}


>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
}
