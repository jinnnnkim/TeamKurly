package kr.co.recipetoyou.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("testController")
public class TestController {
	
	@Autowired
	TestService testService;
	
	@Autowired
	testVO testVO;
	
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public ModelAndView test(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		List<testVO> test = testService.list();
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("test",test);
		
		 
		return mav;
	}

}
