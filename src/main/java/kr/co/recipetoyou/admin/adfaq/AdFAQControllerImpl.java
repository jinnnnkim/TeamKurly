package kr.co.recipetoyou.admin.adfaq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		model.addAttribute("ListFAQ", service.listFAQ(vo));
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
		List<AdFAQVO> FAQList = service.listFAQ(vo);
	    ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("FAQList", FAQList);
		mav.addObject("cnt", cnt);
		mav.addObject("pm",pm);	 
		return mav;
	}
	
	//FAQ 상세 정보 조회
	@Override
	@RequestMapping(value = "/adfaq/faqDetailManagement.do", method = RequestMethod.GET)
	public ModelAndView getFAQInfo(@RequestParam(value="id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("FAQ:"+id);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("adFAQVO", service.getFAQInfo(id));
		return mav;
	}
	
	//회원 정보 수정 페이지로 이동
	@Override
	@RequestMapping(value = "/adfaq/modFAQInfo.do", method = RequestMethod.GET)
	public ModelAndView updateFAQInfo(@RequestParam(value="id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {	
		logger.info("FAQ : "+id);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);	
		mav.addObject("FAQVO", service.getFAQInfo(id));
		return mav;
	}
	
	//FAQ 정보 수정 완료
	@Override
	@RequestMapping(value = "/adfaq/FAQUpdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateFAQAction(@ModelAttribute AdFAQVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		service.updateFAQInfo(vo);
		System.out.println("update 통과 확인");
		ModelAndView mav = new ModelAndView("redirect:adfaq/faqAdManagement.do");
		return mav;	
	}

	//FAQ 정보 삭제
	@Override
	@RequestMapping(value = "/adfaq/removeFAQ.do", method = RequestMethod.GET)
	public ModelAndView removeFAQ(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		service.removeFAQ(id);
		ModelAndView mav = new ModelAndView("redirect:adfaq/faqAdManagement.do");
		return mav;
	}
	
}
