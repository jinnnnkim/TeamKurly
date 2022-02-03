package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.join.UserVO;
import kr.co.recipetoyou.user.login.LoginService;

@Controller("cartPickController")
public class CartPickControllerImpl implements CartPickController {
	@Autowired
	private CartPickService cartPickService;
	@Autowired
	private CartPickVO__ cartPickVO;

	@Override
	@RequestMapping(value = "/cartPick/listCartPicks.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listCartPick(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		//System.out.println("viewName : " + viewName);
		String viewName = (String) request.getAttribute("viewName");	//인터셉터에서 바인딩 된 뷰이름을 가져옴
				
		
		List<CartPickVO__> CartPicksList = cartPickService.listCartPicks();		//회원목록이 리턴됨
		ModelAndView mav = new ModelAndView(viewName);	//viewName이 <definition>에서 설정한 뷰이름과 일치함
		mav.addObject("CartPicksList", CartPicksList);		//바인딩
		return mav;		//ModelAndView 객체에 설정한 뷰이름을 타일즈 뷰리절버로 반환함.
	}

	@Override
	@RequestMapping(value = "/cartPick/addCartPick.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView addCartPick(CartPickVO__ cartPickVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = cartPickService.addCartPick(cartPickVO); 	//정상적 inset하면 정수 1을 리턴
		ModelAndView mav = new ModelAndView("redirect:/cartPick/listCartPicks.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/cartPick/removeCartPick.do",  method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView removeCartPick(String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		cartPickService.removeCartPick(id);
		ModelAndView mav = new ModelAndView("redirect:/cartPick/listCartPicks.do");
		return mav;
	}

	
	
}


/*
	@Override
	@RequestMapping(value = "/member/listMembers.do", method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		//System.out.println("viewName : " + viewName);
		String viewName = (String) request.getAttribute("viewName");	//인터셉터에서 바인딩 된 뷰이름을 가져옴
		
		logger.info("info 레벨 : viewName" + viewName);
		logger.debug("debug 레벨 : viewName" + viewName);
		
		List<MemberVO> membersList = memberService.listMembers();		//회원목록이 리턴됨
		ModelAndView mav = new ModelAndView(viewName);	//viewName이 <definition>에서 설정한 뷰이름과 일치함
		mav.addObject("membersList", membersList);		//바인딩
		return mav;		//ModelAndView 객체에 설정한 뷰이름을 타일즈 뷰리절버로 반환함.
	}

	@Override
	@RequestMapping(value = "/member/addMember.do", method = RequestMethod.POST)
	public ModelAndView addMember(MemberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		request.setCharacterEncoding("utf-8");
		int result = memberService.addMember(memberVO); 	//정상적 inset하면 정수 1을 리턴
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/member/removeMemver.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}


*/