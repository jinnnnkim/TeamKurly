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
	public ModelAndView main(@RequestParam (value = "prod_code", required = false, defaultValue="0") int prod_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("controller 호출");
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		
		//33, 34번 때문에 화면이 안보임. 33,34 주석처리하면 보임.
		if(prod_code!=0) {
		  GoodsVO goodsVO = goodsService.listProduct(prod_code);
		  mav.addObject("goodsVO", goodsVO);
		}
		return mav;
	}

}
