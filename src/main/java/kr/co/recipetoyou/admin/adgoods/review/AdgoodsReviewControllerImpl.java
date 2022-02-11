package kr.co.recipetoyou.admin.adgoods.review;

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
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PagingVO;

@Controller("adreviewController")
public class AdgoodsReviewControllerImpl implements AdgoodsReviewController{
	
	private static final Logger logger = LoggerFactory.getLogger("ReviewControllerImpl.class");
	
	@Autowired
	AdgoodsReviewService adgoodsReviewService;

	//상품 후기 목록
	@Override
	@RequestMapping(value = "/adgoods/adReviewList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listReviewGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		
		List reviewList = adgoodsReviewService.listReview(vo);
		mav.addObject("reviewList", reviewList);
		
		return mav;
	}

	//상품 후기 목록 조회 및 페이징 처리
	@Override
	@RequestMapping(value = "/adgoods/listReview.do")
	public void listReview(PagingVO vo, Model model) throws Exception {
		
		model.addAttribute("ListReview", adgoodsReviewService.listReview(vo));
		
	}

	//상품 후기 상세 조회
	@Override
	@RequestMapping(value = "/adgoods/adReviewDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public void getReviewDetail(int prod_review_code, Model model, PagingVO vo) throws Exception {
		
		model.addAttribute("vo", vo);
		
		//후기 정보
		model.addAttribute("review", adgoodsReviewService.adReviewDetail(prod_review_code));
	}

}
