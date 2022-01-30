package kr.co.recipetoyou.user.join;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.user.UserVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

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
		// 수신전화번호 
		params.put("from", "01041772313"); 
		// 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨 
		params.put("type", "SMS"); 
		params.put("text", "[recipetoyou] 인증번호는" + "["+randomNumber+"]" + "입니다."); 
		// 문자 내용 입력 
		params.put("app_version", "test app 1.2"); 
		// application name and version 
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage()); 
			System.out.println(e.getCode()); 
		} 
	}


}
