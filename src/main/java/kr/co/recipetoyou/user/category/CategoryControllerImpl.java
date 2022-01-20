package kr.co.recipetoyou.user.category;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("categoryController")
public class CategoryControllerImpl {
	
	private static final Logger logger = LoggerFactory.getLogger("CategoryControllerImpl.class");
	
	@RequestMapping(value="/main.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}
	
	@RequestMapping(value="/user/benefitPage.do",method=RequestMethod.GET)
	public ModelAndView benefitPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/bestGoodsPage.do",method=RequestMethod.GET)
	public ModelAndView bestGoodsPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/goodsView.do",method=RequestMethod.GET)
	public ModelAndView goodsView(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/kf365Page",method=RequestMethod.GET)
	public ModelAndView kf365Page(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/kf365TestPage.do",method=RequestMethod.GET)
	public ModelAndView kf365TestPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/newGoodsPage.do",method=RequestMethod.GET)
	public ModelAndView newGoodsPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/saleEventPage.do",method=RequestMethod.GET)
	public ModelAndView saleEventPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/saleGoodsPage.do",method=RequestMethod.GET)
	public ModelAndView saleGoodsPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

}
