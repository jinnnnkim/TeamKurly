package kr.co.recipetoyou.main.goods;

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


@Controller("goodsController")
public class GoodsControllerImpl implements GoodsController{
	
	private static final Logger logger = LoggerFactory.getLogger("GoodsControllerImpl.class");

	@Autowired
	GoodsService goodsService;
	
	@Override                      
	@RequestMapping(value="/prodDetail.do",method = RequestMethod.GET)
	public ModelAndView main(@RequestParam(value = "prod_code", required = false) String prod_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		GoodsVO goodsVO = goodsService.listProduct(prod_code);
		//mav.addObject("goodsVO", goodsVO);
		return mav;
	}
	
	

}
