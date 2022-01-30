package kr.co.recipetoyou.admin.adfaq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller("faqController")
@EnableAspectJAutoProxy
public class AdFAQControllerImpl implements AdFAQController {

	private static final Logger logger = LoggerFactory.getLogger("AdFAQControllerImpl.class");
	
	@Autowired
	private AdFAQService service;
	
	@RequestMapping(value = "/adfaq/*.do", method = RequestMethod.GET)
	public ModelAndView form(@RequestParam(value = "result", required = false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("result", result);
		return mav;
	}
	
	//FAQ관리 - 페이징처리한 목록 
	@Override
	@RequestMapping(value = "/adfaq/faqManagement.do", method = RequestMethod.GET)
	public void listFAQGET(PagingVO vo, Model model) throws Exception{
		logger.info("C: listVO 겟 호출" + vo);
		model.addAttribute("ListUsers", service.listFAQ(vo));
	}
	
	//전체 FAQ관리 목록 
	@Override
	@RequestMapping(value = "/adfaq/faqAdManagement.do", method = RequestMethod.GET)
	public ModelAndView listFAQManagement(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
	    PageMaker pm = new PageMaker();
		pm.setVo(vo);
	    pm.setTotalCount(service.FAQListCount()); 
		logger.info("C: vo는 "+ vo);
		logger.info("info 레벨 : viewName = "+viewName);  
		int cnt = service.FAQListCount();  
		List<AdFAQVO> sendFAQ = service.listFAQ(vo);
	    ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("sendList", sendFAQ);
		mav.addObject("cnt", cnt);
		mav.addObject("pm",pm);	 
		return mav;
	}
	
}
