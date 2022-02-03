package kr.co.recipetoyou.main.cartPick;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.join.UserVO;

public interface CartPickController {

	public ModelAndView listCartPick(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addCartPick(@ModelAttribute("info") CartPickVO__ cartPickVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeCartPick(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
