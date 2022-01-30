package kr.co.recipetoyou.admin.adfaq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

public interface AdFAQController {

	public void listSendGET(PagingVO vo, Model model) throws Exception;

	public ModelAndView listFAQManagement(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;

}
