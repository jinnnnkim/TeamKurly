package kr.co.recipetoyou.admin.adgoods.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PageMaker;
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
		
		//총 후기 수
		int cnt = adgoodsReviewService.reviewAllCount(vo);
		//검색 결과 개수
		int searchcnt = adgoodsReviewService.reviewCount(vo);
		
		if(!reviewList.isEmpty()) {
			mav.addObject("reviewList", reviewList);
			mav.addObject("cnt", cnt);
			mav.addObject("searchcnt", searchcnt);
		
		}else {
			mav.addObject("listCheck", "empty");
			
		}
		
		//페이지 데이터
		mav.addObject("pm", new PageMaker(vo, adgoodsReviewService.reviewAllCount(vo)));
		
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
