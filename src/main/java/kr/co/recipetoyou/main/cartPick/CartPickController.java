package kr.co.recipetoyou.main.cartPick;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
=======
import javax.servlet.http.HttpServletRequest;  
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import kr.co.recipetoyou.user.join.UserVO;

public interface CartPickController {

	public ModelAndView listCartPick(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addCartPick(@ModelAttribute("info") CartPickVO__ cartPickVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeCartPick(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
=======
import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;


public interface CartPickController {

	//찜하기 목록 조회
	public ModelAndView listPicks (HttpServletRequest request, HttpServletResponse response) throws Exception;
	//찜하기 목록 삭제
	public ModelAndView removePick(@RequestParam("prod_name") String prod_name, HttpServletRequest request, HttpServletResponse response) throws Exception; 
	//찜하기 장바구니 페이지에 추가 담기
	public ModelAndView addCart(@ModelAttribute("info") PickVO pickVO, HttpServletRequest request, HttpServletResponse response) throws Exception;

	
	
	
	//장바구니 목록 조회
	public ModelAndView listCarts (HttpServletRequest request, HttpServletResponse response) throws Exception;
	//장바구니 목록 삭제
	public ModelAndView removeCarts (@RequestParam("prod_name") String prod_name, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
	
	//장바구니 담기 
	//public ModelAndView addCartPick(@ModelAttribute("info") ,
	//	 HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addCartPick(CartAddVO cartAddVO, HttpServletRequest
			request, HttpServletResponse response)throws Exception; //찜(좋아요) 담기 public
	ModelAndView addFavPick(FavVO favVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
}

