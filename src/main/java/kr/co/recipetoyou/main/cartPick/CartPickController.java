package kr.co.recipetoyou.main.cartPick;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



public interface CartPickController {
	
	//찜하기 목록 조회
	public ModelAndView listPicks (HttpServletRequest request, HttpServletResponse response) throws Exception;
	//찜하기 목록 삭제
	public ModelAndView removePick(@RequestParam("PROD_NAME") String PROD_NAME, HttpServletRequest request, HttpServletResponse response) throws Exception; 
	

}
