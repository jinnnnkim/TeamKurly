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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

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
	    pm.setTotalCount(service.FAQListCount(vo)); 
		logger.info("C: vo는 "+ vo);
		logger.info("info 레벨 : viewName = "+viewName);  
		int cnt = service.FAQListCount(vo);  
		List<AdFAQVO> FAQList = service.listFAQ(vo);
	    ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("FAQList", FAQList);
		mav.addObject("cnt", cnt);
		mav.addObject("pm",pm);	 
		return mav;
	}
	
	//FAQ 상세 정보 조회
	@Override
	@RequestMapping(value = {"/adfaq/faqInfoManagement.do", "/adfaq/modFAQInfo.do"}, produces = "application/json", method = RequestMethod.GET)
	public void getFAQInfo(int id, Model model, PagingVO vo) throws Exception {
		logger.info("클릭한 code:"+id);
		
		ObjectMapper objm = new ObjectMapper();
		
		model.addAttribute("cateFAQList", objm.writeValueAsString(service.cateFAQList()));
		model.addAttribute("vo", vo);
	}
	
	//FAQ 정보 수정 페이지로 이동
//	@Override
//	@RequestMapping(value = "/adfaq/modFAQInfo.do", method = RequestMethod.GET)
//	public ModelAndView updateFAQInfo(@RequestParam(value="id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {	
//		logger.info("FAQ : "+id);
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);	
//		mav.addObject("adFAQVO", service.getFAQInfo(id));
//		return mav;
//	}
	
	//FAQ 정보 수정 완료
	@Override
	@RequestMapping(value = "/adfaq/FAQUpdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateFAQAction(@ModelAttribute AdFAQVO vo, RedirectAttributes rttr,  HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("update 통과 확인");
		int result = service.updateFAQInfo(vo);
		rttr.addFlashAttribute("modify_result", result);
		return mav;	
	}
	//FAQ 정보 삭제
	@Override
	@RequestMapping(value = "/adfaq/removeFAQ.do", method = RequestMethod.GET)
	public ModelAndView removeFAQ(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		service.removeFAQ(id);
		ModelAndView mav = new ModelAndView("redirect:faqAdManagement.do");
		return mav;
	}
	//FAQ 카테고리 검색
	@Override
	@RequestMapping(value = "/adfaq/FAQCategory.do", method = RequestMethod.GET)
	public void FAQListCategory(Model model) throws Exception {		
	}	
	
	//FAQ 등록 페이지로 이동
	@Override
	@RequestMapping(value = "/adfaq/moveRegister.do", method = RequestMethod.GET)
	public ModelAndView moveRegister(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		ObjectMapper objm = new ObjectMapper();	
		List<AdFAQCategoryVO> list = service.cateFAQList();	
		String cateFAQList = objm.writeValueAsString(list);	
		model.addAttribute("cateFAQList", cateFAQList);
			
		logger.info("변경 전========"+list);
		logger.info("변경 후========"+cateFAQList);
			
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;	
	}	
	//FAQ 등록
	@Override
	@RequestMapping(value = "/adfaq/FAQInsert.do", method = RequestMethod.POST)
	public ModelAndView FAQRegister(AdFAQVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("FAQRegisterPost......"+vo);
	        
	    //레코드를 저장함
	    service.register(vo);
	    rttr.addFlashAttribute("FAQResult",vo.getFaq_title());
	    //게시물을 저장한 후에 게시물 목록페이지로 다시 이동함
	    ModelAndView mav = new ModelAndView( "redirect:faqAdManagement.do");
	    return mav;
	}
}
