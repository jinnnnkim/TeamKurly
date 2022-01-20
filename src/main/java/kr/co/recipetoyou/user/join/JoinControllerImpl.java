package kr.co.recipetoyou.user.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("joinController")
public class JoinControllerImpl {
	
	@RequestMapping(value="/join/regist.do",method=RequestMethod.GET)
	public ModelAndView regist(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}

}
