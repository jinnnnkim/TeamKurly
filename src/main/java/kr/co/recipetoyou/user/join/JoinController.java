package kr.co.recipetoyou.user.join;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public interface JoinController {

	@RequestMapping(value="/join/regist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	@RequestMapping(value="/join/joinProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registProcess(@ModelAttribute("userVO") UserVO userVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
	
	
	
	/*
	 * @RequestMapping(value="/join/regist.do", method = {RequestMethod.GET,
	 * RequestMethod.POST}) public ModelAndView regist(@RequestParam(value =
	 * "user_id", required = false) String user_id,
	 * 
	 * @RequestParam(value = "user_pw", required = false) String user_pw,
	 * 
	 * @RequestParam(value = "user_name", required = false) String user_name,
	 * 
	 * @RequestParam(value = "user_email", required = false) String user_email,
	 * 
	 * @RequestParam(value = "user_phone", required = false) String user_phone, //
	 * 주소도 받아야 됨 @RequestParam(value = "user_addr", required = false) String
	 * user_addr,
	 * 
	 * HttpServletRequest request, HttpServletResponse response) throws Exception;
	 */
	
	
}
