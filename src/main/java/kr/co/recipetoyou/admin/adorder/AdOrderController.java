package kr.co.recipetoyou.admin.adorder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

public interface AdOrderController {

	void listOrdGET(PagingVO vo, Model model) throws Exception;

	ModelAndView listOrdPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView getOrdInfo(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView updateOrdInfo(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView updateAction(AdOrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView removeOrd(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;

}
