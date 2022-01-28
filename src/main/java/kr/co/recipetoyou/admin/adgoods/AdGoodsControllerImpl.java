package kr.co.recipetoyou.admin.adgoods;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;


import kr.co.recipetoyou.admin.adgoods.category.AdGoodsCateVO;
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;


@Controller("productController")
@EnableAspectJAutoProxy
public class AdGoodsControllerImpl implements AdGoodsController {
	
	private static final Logger logger = LoggerFactory.getLogger("ProductControllerImpl.class");
	
	
	@Autowired
	AdGoodsService adGoodsService;

	
	//글목록보기(PageMaker 객체 사용)
	//전체 상품 목록 조회
	@Override
	@RequestMapping(value = "/adgoods/listProduct.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listPageGet(PagingVO vo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(adGoodsService.prodCount(vo));
		
		logger.info("C: vo는"+vo);
		logger.info("info 레벨 : viewName = "+viewName); 
		
		int cnt = adGoodsService.prodCount(vo);
		List<AdGoodsVO> prodList = adGoodsService.listProduct(vo);
		ModelAndView mav = new ModelAndView(viewName);
		
		ObjectMapper objm = new ObjectMapper();
		
		List list = adGoodsService.cateList();
		
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
	@RequestMapping(value = "/adgoods/listProd.do", method = RequestMethod.GET)
	public void listProduct(PagingVO vo, Model model) throws Exception {
		
		logger.info("C: listVO 겟 호출"+vo);
		
		model.addAttribute("ListProd", adGoodsService.listProduct(vo));
		
	}
	
	//상품 카테고리 검색
	@Override
	@RequestMapping(value = "/adgoods/listCategory.do", method = RequestMethod.GET)
	public void listCategory(Model model) throws Exception {
		
		
		
	}
	
	//상품 상세 정보 조회
	@Override
	@RequestMapping(value = {"/adgoods/goodsInfo.do", "adgoods/goodsUpdate.do"}, method = RequestMethod.GET)
	public void getProductInfo(@RequestParam(value = "code") int code, Model model) throws Exception{
		
		logger.info("클릭한 상품 : "+code);
		
		//목록 페이지 조건 정보
		//model.addAttribute("option", option);
		
		ObjectMapper objm = new ObjectMapper();
		
		List list = adGoodsService.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		//카테고리 리스트 데이터
		model.addAttribute("cateList", cateList);
		
		logger.info("변경 전========"+list);
		logger.info("변경 후========"+cateList);

		//상품 정보
		model.addAttribute("prodVO", adGoodsService.getGoodsInfo(code));
	
	}
	
	//상품 등록 페이지로 이동
	@Override
	@RequestMapping(value = "/adgoods/moveRegister.do", method = RequestMethod.GET)
	public ModelAndView moveRegister(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		ObjectMapper objm = new ObjectMapper();
		
		List list = adGoodsService.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		model.addAttribute("cateList", cateList);
		
		logger.info("변경 전========"+list);
		logger.info("변경 후========"+cateList);
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
		
	}

	//상품 등록
	@Override
	@RequestMapping(value = "/adgoods/register", method = RequestMethod.POST)
	public ModelAndView uploadGoodsRegister(@RequestParam @DateTimeFormat(pattern="yyyy-MM-dd")java.sql.Date prod_vaild_date, @RequestParam("file") MultipartFile file,AdGoodsVO agvo, RedirectAttributes rttr) throws Exception {
		
		/*
		 * String imgUploadPath = uploadPath + File.separator + "AdgoodsImg"; String
		 * ymdPath = UploadFileUtils.calcPath(imgUploadPath); String fileName = null;
		 */
		

		//파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 없다면)
		/*
		 * if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		 * 
		 * fileName =
		 * UploadFileUtils.fileUpload(imgUploadPath,file.getOriginalFilename(),
		 * file.getBytes(), ymdPath);
		 * 
		 * //원본 파일 경로+파일명 저장
		 * aGoodsVO.setProd_img(File.separator+"AdgoodsImg"+ymdPath+File.separator+
		 * fileName);
		 * 
		 * //썸네일 파일 경로+썸네일파일 저장
		 * aGoodsVO.setProdThumbImg(File.separator+"AdgoodsImg"+ymdPath+File.separator+
		 * "s"+File.separator+"s_"+fileName);
		 * 
		 * //첨부된 파일이 없다면 }else{ fileName = uploadPath + File.separator + "SubgoodsImg" +
		 * File.separator + "ready.jpg"; aGoodsVO.setProd_img(fileName);
		 * aGoodsVO.setProdThumbImg(fileName); }
		 */
		logger.info("goodsRegisterPost......"+agvo);
		
		adGoodsService.register(agvo);
		
		rttr.addFlashAttribute("goodsResult", agvo.getProd_name());
		
		//상품 등록 후 상품 목록 페이지로 리다이렉트
		ModelAndView mav = new ModelAndView("redirect:/adgoods/listProduct.do");
		
		return mav;
	}

	

}
