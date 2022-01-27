package kr.co.recipetoyou.main.goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface GoodsController {
	
	public ModelAndView main(@RequestParam("prod_code") String prod_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception;

}
