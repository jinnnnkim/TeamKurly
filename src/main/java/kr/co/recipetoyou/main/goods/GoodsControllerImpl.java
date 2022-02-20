package kr.co.recipetoyou.main.goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;


@Controller("goodsController")
public class GoodsControllerImpl implements GoodsController{
	
	private static final Logger logger = LoggerFactory.getLogger("GoodsControllerImpl.class");

	@Autowired
	GoodsService goodsService;
	

	@Override
	@RequestMapping(value="/user/newGoodsPage.do", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		List goodsList = goodsService.listGoods(vo);
		
		if(!goodsList.isEmpty()) {
			mav.addObject("goodsList", goodsList);
		}else {
			mav.addObject("listCheck", "empty");
		}
		
		//mav.addObject("pm", new PageMaker());
		
		return mav;
	}
	
	
	  @Override
	  @RequestMapping(value="/prodDetail.do",method = RequestMethod.GET)
	  public ModelAndView main(@RequestParam (value = "prod_code", required = false, defaultValue="0") int prod_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
	  
		  System.out.println("controller 호출"); request.setCharacterEncoding("utf-8");
		  ModelAndView mav = new ModelAndView();
	  
		  //33, 34번 때문에 화면이 안보임. 33,34 주석처리하면 보임.
		  
		  if(prod_code!=0) {
			  GoodsVO goodsVO =
		      goodsService.listProduct(prod_code);
			  mav.addObject("goodsVO", goodsVO);
		  }
	  		return mav;
	  	}
	 
	
	//상품 상세 조회
	@Override
	@RequestMapping(value="/goods/goodsInfo.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public void getGoodsDetail(int prod_code, Model model, PagingVO vo) throws Exception {
		
		model.addAttribute("goodsVO", goodsService.goodsDetail(prod_code));
	}

	@Override
	public List<CommentVO> commentList(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		
		List<CommentVO> commentVO = goodsService.commentList(commentvo);
		
		return null;
	}

	@Override
	public CommentVO getNext(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		
		CommentVO commentVO = goodsService.commentUpdate(commentvo);
		
		return commentVO;
	}

	@Override
	public CommentVO commentWrite(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommentVO commentView(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommentVO commentDelete(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommentVO commentUpdate(HttpServletRequest request, HttpServletResponse response, CommentVO commentvo)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	
	
	

}
