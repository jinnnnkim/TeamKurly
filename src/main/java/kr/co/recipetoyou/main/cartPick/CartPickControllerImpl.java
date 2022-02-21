package kr.co.recipetoyou.main.cartPick;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@Autowired
	private CartPickVO__ cartPickVO;


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
	@RequestMapping(value = "/insertCart.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String insertCart(@ModelAttribute CartAddVO cartAddVO, HttpSession session) throws Exception {
			
		
		String viewName = (String) session.getAttribute("viewName");

		logger.info("info : "+viewName);
		logger.debug("debug : "+viewName);
		
		
		/* String user_id = (String) session.getAttribute("user_id"); */
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		String user_id = "";
		if(userVO != null) {
			if(userVO.getUser_id() == null || userVO.getUser_id() == "") {
				user_id = "";
			}else {
				System.out.println("write user_id:"+userVO.getUser_id());
				user_id = userVO.getUser_id();
			}
		}
		
		
		
		
		
		
		cartAddVO.setUser_id(user_id);
			
		System.out.println("insert Controller 호출");
		
		//장바구니에 기존 상품있는지 점검
		int count = cartPickService.commCart(cartAddVO.getProd_code(), user_id);
		// 삼항연산자 사용했으나 오류 떠서 조건문 사용
		/*
		 * count == 0 ? cartPickService.updateCart(cartAddVO) : cartPickService.insertCart(cartAddVO);
		 */
		if(count == 0) {
			cartPickService.insertCart(cartAddVO);
		}else {
			cartPickService.updateCart(cartAddVO);
		}
			return "redirect:/cart.do";
	}
		
	//수정
	@Override
	@RequestMapping(value = "/updateCart.do")
	public String updateCart(int[] prod_quantity, int[] prod_code, HttpSession session) throws Exception {
		//session의 id
		String user_id =(String) session.getAttribute("user_id");
			
		//레코드 갯수 만큼 반복문 실행
		for(int i=0; i<prod_code.length; i++) {
			CartAddVO cartAddVO = new CartAddVO();
			cartAddVO.setUser_id(user_id);					//사용자 아이디
			cartAddVO.setProd_code(prod_code[i]);			//상품 코드
			cartAddVO.setProd_quantity(prod_quantity[i]);	//상품 수량
			cartPickService.modifyCart(cartAddVO);
		}
			return "redirect:/cart.do";
	}

	
	
	//장바구니 목록 조회
	/*
	 * @RequestMapping(value = "/cart.do", method = {RequestMethod.GET,
	 * RequestMethod.POST}) public ModelAndView listCarts (HttpServletRequest
	 * request, HttpServletResponse response) throws Exception {
	 * 
	 * String viewName = (String) request.getAttribute("viewName");
	 * 
	 * 
	 * logger.info("info : "+viewName); logger.debug("debug : "+viewName);
	 * 
	 * List<ProdVO> cartList = cartPickService.listCarts(); ModelAndView mav = new
	 * ModelAndView(); mav.addObject("cartList", cartList);
	 * 
	 * return mav; }
	 */
	
	
	@Override
	@RequestMapping(value = "/cart.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView list(HttpSession session, ModelAndView mav) throws Exception {
		String user_id = (String)session.getAttribute("user_id");
		Map<String, Object> map = new HashMap<String, Object>();
		
		/* List<ProdVO> cartList = cartPickService.listCarts(user_id); */
		   List<ProdVO> cartList = cartPickService.listCarts(user_id);
	   int sumMoney = cartPickService.sumMoney(user_id);
	   //장바구니ㅣ 전체 금액에 따라 배송비 구분
	   //배송료 (3만원이상 무료, 미만 3000원)
	   int fee = sumMoney >= 30000 ? 0: 3000;
	   
	   map.put("list", cartList);
	   map.put("count", cartList.size());
	   map.put("sumMoney", sumMoney);
	   map.put("fee", fee);
	   map.put("allSum", sumMoney+fee);
	   mav.setViewName("cart");
	   mav.addObject("map", map);
	  			
	   return mav;
	}

	
	
	//장바구니 목록 삭제
	@Override
	@RequestMapping(value = "/removeCart.do", method = RequestMethod.GET)
	public ModelAndView removeCarts(String prod_name, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("controller 호출");
		request.setCharacterEncoding("utf-8");
		cartPickService.removeCart(prod_name);
		ModelAndView mav = new ModelAndView("redirect:/cart.do");
		return mav;
	}


	
	
	
	
	
	
	
	
	//장바구니 담기
	@Override
	@RequestMapping(value = "/cartPick/addCartPick2.do", method ={RequestMethod.GET, RequestMethod.POST}) 
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




	@Override
	@RequestMapping(value = "/cartPick/listCartPicks.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listCartPick(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		//System.out.println("viewName : " + viewName);
		String viewName = (String) request.getAttribute("viewName");	//인터셉터에서 바인딩 된 뷰이름을 가져옴


		List<CartPickVO__> CartPicksList = cartPickService.listCartPicks();		//회원목록이 리턴됨
		ModelAndView mav = new ModelAndView(viewName);	//viewName이 <definition>에서 설정한 뷰이름과 일치함
		mav.addObject("CartPicksList", CartPicksList);		//바인딩
		return mav;		//ModelAndView 객체에 설정한 뷰이름을 타일즈 뷰리절버로 반환함.
	}

	//담기
	@Override
	@RequestMapping(value = "/cartPick/addCartPick.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView addCartPick(CartPickVO__ cartPickVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = cartPickService.addCartPick(cartPickVO); 	//정상적 inset하면 정수 1을 리턴
		ModelAndView mav = new ModelAndView("redirect:/cartPick/listCartPicks.do");
		return mav;
	}
	
	

	//삭제
	@Override
	@RequestMapping(value = "/cartPick/removeCartPick.do",  method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView removeCartPick(String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		cartPickService.removeCartPick(id);
		ModelAndView mav = new ModelAndView("redirect:/cartPick/listCartPicks.do");
		return mav;
	}

	
	

	

}


/*
	@Override
	@RequestMapping(value = "/member/listMembers.do", method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		//System.out.println("viewName : " + viewName);
		String viewName = (String) request.getAttribute("viewName");	//인터셉터에서 바인딩 된 뷰이름을 가져옴

		logger.info("info 레벨 : viewName" + viewName);
		logger.debug("debug 레벨 : viewName" + viewName);

		List<MemberVO> membersList = memberService.listMembers();		//회원목록이 리턴됨
		ModelAndView mav = new ModelAndView(viewName);	//viewName이 <definition>에서 설정한 뷰이름과 일치함
		mav.addObject("membersList", membersList);		//바인딩
		return mav;		//ModelAndView 객체에 설정한 뷰이름을 타일즈 뷰리절버로 반환함.
	}

	@Override
	@RequestMapping(value = "/member/addMember.do", method = RequestMethod.POST)
	public ModelAndView addMember(MemberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("utf-8");
		int result = memberService.addMember(memberVO); 	//정상적 inset하면 정수 1을 리턴
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/member/removeMemver.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}


 */











