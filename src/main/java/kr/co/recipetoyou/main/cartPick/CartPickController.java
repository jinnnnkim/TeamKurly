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

	//장바구니 담기 
	//public ModelAndView addCartPick(@ModelAttribute("info") ,
	//	 HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addCartPick(CartAddVO cartAddVO, HttpServletRequest
			request, HttpServletResponse response)throws Exception; //찜(좋아요) 담기 public
	ModelAndView addFavPick(FavVO favVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

}

