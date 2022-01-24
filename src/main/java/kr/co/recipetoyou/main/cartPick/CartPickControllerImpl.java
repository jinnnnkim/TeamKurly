package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.co.recipetoyou.user.UserVO;

@Controller("cartpickController")
public class CartPickControllerImpl implements CartPickController {
	private static final Logger logger = LoggerFactory.getLogger("CartPickControllerImpl.class");

	@Autowired
	private CartPickService cartPickService;
	
	@Autowired
	private CartPickVO cartPickVO;
	
	//찜 목록 조회하기
	@Override
	@RequestMapping(value = "/picklist_add.do", method = RequestMethod.GET)
	public ModelAndView listPicks (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info("info : "+viewName);
		logger.debug("debug : "+viewName);
		
		List<CartPickVO> pickList = cartPickService.listPicks();
		ModelAndView mav = new ModelAndView();		
		mav.addObject("pickList", pickList);	//view에 전달할 객체 생성
		
		return mav;
	}

	@Override
	@RequestMapping(value = "/removePick.do", method = RequestMethod.GET)
	public ModelAndView removePick(@RequestParam(value="PROD_NAME", required = false) String PROD_NAME, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("controller 호출");
		request.setCharacterEncoding("utf-8");
		cartPickService.removePick(PROD_NAME);
		ModelAndView mav = new ModelAndView("redirect:/picklist_add.do");
		return mav;
	}
	

	//장바구니
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public ModelAndView cart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
}












