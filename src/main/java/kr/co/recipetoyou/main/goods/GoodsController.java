package kr.co.recipetoyou.main.goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface GoodsController {
	
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
