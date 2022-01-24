package kr.co.recipetoyou.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recipetoyou.user.UserVO;

@Controller("adminController")
public class AdminControllerImpl implements AdminController{
	
	private static final Logger logger = LoggerFactory.getLogger("AdminControllerImpl.class");
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private AdminVO adminVO;
	
	@Autowired
	private UserVO userVO;
	
	
	@Override
	@RequestMapping(value = "/admin/main.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String)request.getAttribute("admin/main");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);

		return mav;
	}
	
	 
	 
	
	@RequestMapping(value = "/admin/adloginForm.do", method = RequestMethod.GET)
	public ModelAndView form(@RequestParam(value = "result",required = false) String result,
			@RequestParam(value = "action", required = false) String action,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
	
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		
	 	ModelAndView mav = new ModelAndView("/admin/adloginForm");

	 	return mav;
		
	 }
	

	//관리자 로그인
	@Override
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("admin") AdminVO admin, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		adminVO = adminService.login(admin);
		//System.out.println(adminVO);
		
		
		if (adminVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", adminVO);		//세션에 회원 정보를 저장함.
			session.setAttribute("isLogOn", true);		//세션에 로그인 상태를 true로 설정함.
			mav.setViewName("redirect:/user/listadUsers.do");
			System.out.println("관리자 로그인실패");
//			String action = (String)session.getAttribute("action");
//			session.removeAttribute("action");
			
//			if (action != null) {
//				if (action.equals("/admin/moduserInfo.do")) {
//					mav.setViewName("redirect"+action);
//				}
//				else if (action.equals("/admin/.do")) {
//					mav.setViewName("redirect:" + action);
//				}
//			}
//			else {
//				mav.setViewName("redirect:/main.do");
//			}
					
		}
		else {
			System.out.println("관리자 로그인성공");
			rAttr.addAttribute("result", "loginFailed");		//로그인 실패시 실패 메시지를 로그인창으로 전달함.
			mav.setViewName("redirect:/admin/main.do");	//로그인 실패시 다시 로그인창으로 리다이렉트함
		}
		
		return mav;
	}
		 
	//관리자 로그아웃
	@Override
	@RequestMapping(value = "/admin/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session= request.getSession();
		session.removeAttribute("admin");
		session.removeAttribute("isLogOn");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/adloginForm.do");
		
		return mav;
	}
	
	

	

	


	

}
