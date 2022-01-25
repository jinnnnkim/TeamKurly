package kr.co.recipetoyou.adgoods;

import java.util.List;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.recipetoyou.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Controller("productController")
@EnableAspectJAutoProxy
public class AdGoodsControllerImpl implements AdGoodsController {
	
	private static final Logger logger = LoggerFactory.getLogger("ProductControllerImpl.class");
	
	@Autowired
	AdGoodsService productService;
	
	//글목록보기(PageMaker 객체 사용)
	//전체 상품 목록 조회
	@Override
	@RequestMapping(value = "/product/listProduct.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(productService.prodCount(vo));
		
		logger.info("C: vo는"+vo);
		logger.info("info 레벨 : viewName = "+viewName); 
		
		int cnt = productService.prodCount(vo);
		List<AdGoodsVO> prodList = productService.listProduct(vo);
		ModelAndView mav = new ModelAndView(viewName);
		
		ObjectMapper objm = new ObjectMapper();
		
		List list = productService.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		mav.addObject("cateList", cateList);
		
		logger.info("변경 전========"+list);
		logger.info("변경 후========"+cateList);
		
		mav.addObject("prodList", prodList);
		mav.addObject("cnt", cnt);
		mav.addObject("pm", pm);
		
		PageMaker pageMake = new PageMaker(vo, cnt);
		mav.addObject("pageMaker", pageMake);
		
		return mav;
	}
	
	//페이징처리한 상품목록
	@Override
	@RequestMapping(value = "/product/listProd.do", method = RequestMethod.GET)
	public void listProduct(PagingVO vo, Model model) throws Exception {
		
		logger.info("C: listVO 겟 호출"+vo);
		
		model.addAttribute("ListProd", productService.listProduct(vo));
		
	}
	
	//상품 카테고리 검색
	@Override
	@RequestMapping(value = "/product/listCategory.do", method = RequestMethod.GET)
	public void listCategory(Model model) throws Exception {
		
		
		
	}
	
	//상품 상세 정보 조회
	@Override
	@RequestMapping(value = "/product/productInfo.do", method = RequestMethod.GET)
	public void getProductInfo(@RequestParam(value = "code") int code, Model model) throws Exception{
		
		logger.info("클릭한 상품 : "+code);
		
		//목록 페이지 조건 정보
		//model.addAttribute("option", option);
		
		//상품 정보
		model.addAttribute("prodVO", productService.getProductInfo(code));
	
	}

	

}
