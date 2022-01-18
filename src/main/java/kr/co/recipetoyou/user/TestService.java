package kr.co.recipetoyou.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("testService")
public class TestService {
	
	@Autowired
	TestDAO testDAO;

	public List<testVO> list() {
		List<testVO> list = testDAO.list();
		return list;
	}

}
