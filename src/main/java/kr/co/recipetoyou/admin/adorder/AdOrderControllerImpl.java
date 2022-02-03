package kr.co.recipetoyou.admin.adorder;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Controller("adOrderController")
public class AdOrderControllerImpl implements AdOrderController {

	private static final Logger logger = LoggerFactory.getLogger("AdOrderControllerImpl.class");
	
	@Autowired
	private AdOrderService service;
	
	//페이징처리한 글목록
	@Override
	@RequestMapping(value = "/adorder/listOrd.do", method = RequestMethod.GET)
	public void listOrdGET(PagingVO vo, Model model) throws Exception{
		logger.info("C: listOrdVO 겟 호출" + vo);
		model.addAttribute("ListOrdUsers", service.listOrdUsers(vo));
	}
		
	//글목록보기(PageMaker객체 사용)
	//전체 주문 조회
	@Override
	@RequestMapping(value = "/adorder/listadOrd.do", method = RequestMethod.GET)
	public ModelAndView listOrdPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
	    PageMaker pm = new PageMaker();
		pm.setVo(vo);
	    pm.setTotalCount(service.ordCount()); 
		logger.info("C: vo는 "+ vo);
		logger.info("info 레벨 : viewName = "+viewName);  
		int cnt = service.ordCount();  
		List<AdOrderVO> ordList = service.listOrdUsers(vo);
	    ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("ordList", ordList);
		mav.addObject("cnt", cnt);
		mav.addObject("pm",pm);	 
		return mav;
	}
	
	//페이징 이동 시에 필요함 
	@RequestMapping(value = "/adorder/*Form.do", method = RequestMethod.GET)
	 public ModelAndView form(@RequestParam(value = "result", required = false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
	 	//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");		
	 	ModelAndView mav = new ModelAndView(viewName);
	 	mav.addObject("result", result);
	 	return mav;
	 }
	
	//주문 상세 정보 조회
	@Override
	@RequestMapping(value = "/adorder/adOrdInfo.do", method = RequestMethod.GET)
	public ModelAndView getOrdInfo(@RequestParam(value="id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("클릭한 아이디:"+id);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("adOrdVO", service.getOrdInfo(id));
		return mav;
	}

	//주문 정보 수정 페이지로 이동
	@Override
	@RequestMapping(value = "/adorder/modOrdInfo.do", method = RequestMethod.GET)
	public ModelAndView updateOrdInfo(@RequestParam(value="id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {	
		logger.info("클릭한 id : "+id);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);	
		mav.addObject("adOrdVO", service.getOrdInfo(id));
		return mav;
	}
		
	//주문 정보 수정 완료
	@Override
	@RequestMapping(value = "/adorder/ordUpdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateAction(@ModelAttribute AdOrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("controller 주문코드:"+vo.getOrd_code());
		request.setCharacterEncoding("utf-8");
		service.updateOrdInfo(vo);
		System.out.println("update 통과 확인");
		ModelAndView mav = new ModelAndView("redirect:listadOrd.do");
		return mav;	
	}

	//주문 정보 삭제
	@Override
	@RequestMapping(value = "/adorder/removeOrd.do", method = RequestMethod.GET)
	public ModelAndView removeOrd(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		service.removeOrd(id);
		ModelAndView mav = new ModelAndView("redirect:listadOrd.do");
		return mav;
	}

}