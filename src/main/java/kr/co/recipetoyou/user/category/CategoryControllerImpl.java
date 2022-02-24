package kr.co.recipetoyou.user.category;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;


@Controller("categoryController")
public class CategoryControllerImpl implements CategoryController{
	
	private static final Logger logger = LoggerFactory.getLogger("CategoryControllerImpl.class");
	
	private static final String UPLOAD_DIR = "/Users/kimbyeongmin/Desktop/workspace_gitclone/src/main/webapp/Resources/Admin/Img/AdgoodsImg/";

	@Autowired
	private CategoryService service;
	
	@Autowired
	private CategoryVO categoryVO;
	
	
	@Override
	@RequestMapping(value="/main.do", method= {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<CategoryVO> goodsInfo = service.goodsInfoList();
		List<CategoryVO> bargain = service.bargainList();
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("goodsInfo", goodsInfo);
		mav.addObject("bargain", bargain);
		return mav;
	}
	
	
	//이미지 출력
	@Override
	@RequestMapping(value = "/user/getImageInfo.do")
	public ResponseEntity<byte[]> getGoodsListImage(String fileName) throws Exception {
			
		File file = new File(UPLOAD_DIR+fileName);
		ResponseEntity<byte[]> result = null;
			
		try {	
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//이미지 정보 반환
	@Override
	@RequestMapping(value = "/user/getImageList.do", produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AdgoodsImgVO>> getGoodsImageList(int prod_code) throws Exception {
		
		return new ResponseEntity<List<AdgoodsImgVO>>(service.getGoodsInfoImage(prod_code), HttpStatus.OK);
	}
		
	@RequestMapping(value="/user/benefitPage.do",method=RequestMethod.GET)
	public ModelAndView benefitPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/bestGoodsPage.do",method=RequestMethod.GET)
	public ModelAndView bestGoodsPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/user/goodsView.do",method=RequestMethod.GET)
	public ModelAndView goodsView(int prod_code, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String) request.getAttribute("viewName");
		CategoryVO goodsDetailInfo = service.goodsDetailInfo(prod_code);
		AdgoodsImgVO agi = service.getGoodsDetailImage(prod_code);
		List<CategoryVO> goodsDetail = service.goodsDetailList();
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("goodsDetailInfo", goodsDetailInfo);
		mav.addObject("goodsDetail", goodsDetail);
		mav.addObject("agi", agi);
		return mav;
	}
	
	//goddsViewProcess.do
	
	@RequestMapping(value="/user/kf365Page",method=RequestMethod.GET)
	public ModelAndView kf365Page(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/kf365TestPage.do",method=RequestMethod.GET)
	public ModelAndView kf365TestPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/newGoodsPage.do",method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView newGoodsPage(PagingVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(service.cateCount(vo));
		List<CategoryVO> listGoods = service.listGoods(vo);
		ModelAndView mav = new ModelAndView();
		int cnt = service.cateCount(vo); 
		mav.addObject("listGoods", listGoods);
		mav.addObject("cnt", cnt);
		mav.addObject("pm",pm);	
		return mav;
	}
	
	@RequestMapping(value="/user/saleEventPage.do",method=RequestMethod.GET)
	public ModelAndView saleEventPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="/user/saleGoodsPage.do",method=RequestMethod.GET)
	public ModelAndView saleGoodsPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

}
