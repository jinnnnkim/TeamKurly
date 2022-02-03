package kr.co.recipetoyou.user.join;

import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
=======
import org.apache.commons.lang3.StringEscapeUtils; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recipetoyou.user.login.LoginService;

import kr.co.recipetoyou.user.UserVO;

@Controller("joinController")
<<<<<<< HEAD
public class JoinControllerImpl {
=======
public class JoinControllerImpl implements JoinController {
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	@Autowired
	private JoinService joinService;
	@Autowired
	private UserVO userVO;
<<<<<<< HEAD

	
	@RequestMapping(value="/join/regist.do", method = {RequestMethod.GET, RequestMethod.POST})
=======
	
	@RequestMapping(value="/join/regist.do",  method =  {RequestMethod.GET, RequestMethod.POST})
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	public ModelAndView regist(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();		
		return mav;
		
	}
	
<<<<<<< HEAD
	
=======
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
	@RequestMapping(value="/join/joinProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registProcess(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
		request.setCharacterEncoding("utf-8");
		int result = joinService.addUser(userVO); 	//정상적 inset하면 정수 1을 리턴
<<<<<<< HEAD
		System.out.println("result : " + result);
=======
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
		
		ModelAndView mav = new ModelAndView("redirect:/login/login.do");
		
		return mav;
<<<<<<< HEAD
		
		
		
		
		
		
		//회원가입하면서 로그인 - 서비스에서 doa inser 되면서 서비스에서 로그인 함수 실행해서 회원 불러오고 메인페이지 돌려주면서 세션이구현. 
				//컨트롤러에서 구현.  신사임당5000원 넣고, - 트랜젝션 - 회원가입시키고 로그인시킴 .
				//로그인 페이지로 이동한다-> 먼저 만들고. 
				// => 회원가입시키고, 로그인 페이지로 이동하고, 로그인하면 -> 메인페이지로 이동하도록 먼저 만들어!!!!
		
		/*
		 * if((user_id != null || user_id != "") && (user_pw != null || user_pw != "")
		 * && (user_name != null || user_name != "") && (user_email != null ||
		 * user_email != "") && (user_phone != null || user_phone != "")) {
		 * userVO.setUser_id(user_id); userVO.setUser_pw(user_pw);
		 * userVO.setUser_name(user_name); userVO.setUser_email(user_email);
		 * userVO.setUser_phone(user_phone); userVO = loginService.login(userVO); }
		 * 
		 * 
		 * if (userVO != null) { //로그인 성공시 조건문을 수행함. HttpSession session =
		 * request.getSession(); session.setAttribute("user", userVO); //세션에 회원 정보를 저장함.
		 * session.setAttribute("isLogOn", true); //세션에 로그인 상태를 토글형식 true로 설정함.
		 * //mav.setViewName("redirect:/main.do");
		 * 
		 * } else { //rAttr.addAttribute("result", "loginFailed"); //로그인 실패시 실패 메시지를
		 * 로그인창으로 전달함. mav.setViewName("redirect:/login/login.do"); //로그인 실패시 다시 로그인창으로
		 * 리다이렉트함. }
		 * 
		 */
		 
		 
	}
	

	@RequestMapping(value="/idChk.do", method = {RequestMethod.GET, RequestMethod.POST})
	public int  idChk(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		int result = joinService.idChk(userVO);
		System.out.println("result : " + result);	
		return result;
		
	}
	
	

}
=======
		 
		 
	}
	@RequestMapping(value = "/user/idChk.do", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public int idChk(
			@RequestParam("user_id") String user_id,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		int result = joinService.idChk(user_id);
		return result;
	}
	
	@RequestMapping(value = "/user/mailChk.do", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public int mailChk(
			@RequestParam("user_mail") String user_mail,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		int result = joinService.mailChk(user_mail);
		return result;
	}
	
	@RequestMapping(value = "/user/phoneCheck.do", method = RequestMethod.GET) 
	@ResponseBody 
	public String sendSMS(@RequestParam("phone") String userPhoneNumber) { 
		int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);
		joinService.certifiedPhoneNumber(userPhoneNumber,randomNumber); 
		return Integer.toString(randomNumber); 
	}
}
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
