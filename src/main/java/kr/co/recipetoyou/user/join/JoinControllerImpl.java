package kr.co.recipetoyou.user.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.UserVO;

@Controller("joinController")
public class JoinControllerImpl implements JoinController {
	@Autowired
	private JoinService joinService;
	@Autowired
	private UserVO userVO;
	
	@RequestMapping(value="/join/regist.do",method=RequestMethod.GET)
	public ModelAndView regist(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();		
		return mav;
		
	}
	
	@RequestMapping(value="/join/joinProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registProcess(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
		request.setCharacterEncoding("utf-8");
		int result = joinService.addUser(userVO); 	//정상적 inset하면 정수 1을 리턴
		System.out.println("result : " + result);
		
		ModelAndView mav = new ModelAndView("redirect:/login/login.do");
		
		return mav;
		 
		 
	}

	
	

}
