package kr.co.recipetoyou.admin.adgoods.Inquiry;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

@Controller("inquiryController")
@EnableAspectJAutoProxy
public class AdInquiryControllerImpl implements AdInquiryController{
	
	private static final Logger logger = LoggerFactory.getLogger("InquiryControllerImpl.class");
	
	@Autowired
	AdInquiryService adInquiryService;

	//상품 문의 목록
	@Override
	@RequestMapping(value = "/adInquiry/adgoodsInquiry.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listInquiryGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		
		List inquiryList = adInquiryService.listInquiry(vo);
		mav.addObject("inquiryList", inquiryList);
		
		return mav;
	}

	//상품 문의 목록 조회 및 페이징 처리
	@Override
	
	public void listInquiry(PagingVO vo, Model model) throws Exception {
		
		model.addAttribute("ListProd", adInquiryService.listInquiry(vo));
	}

	//상품 문의 상세 조회
	@Override
	@RequestMapping(value = "/adInquiry/adInquiryDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public void getInquiryDetail(int prod_inq_code, Model model, PagingVO vo) throws Exception {
		
		//페이징 정보
		model.addAttribute("vo", vo);
		
		//문의 정보
		model.addAttribute("inquiry", adInquiryService.adInquiryDetail(prod_inq_code));
		
	}

}
