package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;
import kr.co.recipetoyou.user.UserVO;

@Controller("cartpickController")
public class CartPickControllerImpl implements CartPickController {
	private static final Logger logger = LoggerFactory.getLogger("CartPickControllerImpl.class");

	@Autowired
	private CartPickService cartPickService;

	@Autowired
	private PickVO pickVO;

	@Autowired 
	private CartAddVO cartAddVO;
	
	@Autowired 
	private ProdVO prodVO;

	@Autowired 
	private FavVO favVO;


		//찜 목록 조회하기
		@Override
		@RequestMapping(value = "/picklist_add.do", method = RequestMethod.GET)
		public ModelAndView listPicks (HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			String viewName = (String) request.getAttribute("viewName");
			
			logger.info("info : "+viewName);
			logger.debug("debug : "+viewName);
			
			List<PickVO> pickList = cartPickService.listPicks();
			ModelAndView mav = new ModelAndView();		
			mav.addObject("pickList", pickList);	//view에 전달할 객체 생성
			
			return mav;
		}

	//찜 목록 삭제하기
	@Override
	@RequestMapping(value = "/removePick.do", method = RequestMethod.GET)
	public ModelAndView removePick(@RequestParam(value="prod_name", required = false) String prod_name, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("controller 호출");
		request.setCharacterEncoding("utf-8");
		cartPickService.removePick(prod_name);
		ModelAndView mav = new ModelAndView("redirect:/picklist_add.do");
		return mav;
	}
	
	//마이페이지 찜하기 페이지에서 담기 클릭 시 장바구니 페이지에 추가 담기 기능
		@Override
		@RequestMapping(value = "/addCart.do", method = RequestMethod.GET)
		public ModelAndView addCart(PickVO pickVO, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			int result = cartPickService.addCart(pickVO);
			ModelAndView mav = new ModelAndView("redirect:/cart.do");
			return mav;
		}
		
	

	
	
	//장바구니 목록 조회
	@RequestMapping(value = "/cart.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listCarts (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
			
		logger.info("info : "+viewName);
		logger.debug("debug : "+viewName);
			
		List<ProdVO> cartList = cartPickService.listCarts();
		ModelAndView mav = new ModelAndView();		
		mav.addObject("cartList", cartList);
			
		return mav;
		}

	

	
	
	
	

	//장바구니 담기
	@Override
	@RequestMapping(value = "/cartPick/addCartPick.do", method ={RequestMethod.GET, RequestMethod.POST}) 
	public ModelAndView addCartPick(CartAddVO cartAddVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8"); 
		int result =cartPickService.addCartPick(cartAddVO); 
		ModelAndView mav = new ModelAndView("redirect:/cart.do");
		return mav; 
	}
	

	//찜 담기
	@Override//상세페이지에서 찜 페이지로 이동
	@RequestMapping(value = "/cartPick/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView addFavPick(FavVO favVO, HttpServletRequest request, HttpServletResponse response) throws Exception { 
		request.setCharacterEncoding("utf-8"); 
		int result = cartPickService.addFavPick(favVO); 
		ModelAndView mav =new ModelAndView("redirect:/.do");//수정 (찜 페이지로 이동) 
		return mav; 
	}


}












