package kr.co.recipetoyou.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("testDAO")
public class TestDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<testVO> list() {
		List<testVO> list = sqlSession.selectList("mapper.test.testList");
		return list;
	}

}
