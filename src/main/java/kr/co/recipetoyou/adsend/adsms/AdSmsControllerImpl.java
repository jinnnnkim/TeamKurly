package kr.co.recipetoyou.adsend.adsms;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller("smsController")
@EnableAspectJAutoProxy
public class AdSmsControllerImpl implements AdSmsController {

	private static final Logger logger = LoggerFactory.getLogger("SmsControllerImpl.class");

	@Autowired
	private AdSmsService smsService;
	
	@RequestMapping(value = "/adsms/*.do", method = RequestMethod.GET)
	public ModelAndView form(@RequestParam(value = "result", required = false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");		
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("result", result);
		return mav;
	}
	
	
}
