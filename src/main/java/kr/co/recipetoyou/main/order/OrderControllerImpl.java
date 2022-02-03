package kr.co.recipetoyou.main.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("orderController")
public class OrderControllerImpl {
	
	@RequestMapping(value="/order.do", method=RequestMethod.GET)
	public ModelAndView order(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
}
