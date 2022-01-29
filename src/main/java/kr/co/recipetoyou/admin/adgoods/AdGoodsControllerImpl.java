package kr.co.recipetoyou.admin.adgoods;

import org.springframework.http.MediaType;
import java.awt.image.BufferedImage;
import java.io.File;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import kr.co.recipetoyou.util.UploadFileUtils;
import net.coobird.thumbnailator.Thumbnails;


@Controller("productController")
@EnableAspectJAutoProxy
public class AdGoodsControllerImpl implements AdGoodsController {
	
	private static final Logger logger = LoggerFactory.getLogger("ProductControllerImpl.class");
	
	private static String UPLOAD_DIR = "C:\\git-recipetoyou\\RecipeToYou\\src\\main\\webapp\\Resources\\Admin\\Img\\AdgoodsImg";
	
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
	@RequestMapping(value = "/adgoods/register.do", method = RequestMethod.POST)
	public ModelAndView uploadGoodsRegister(AdGoodsVO agvo, RedirectAttributes rttr) throws Exception {
		
		
		  //String imgUploadPath = uploadPath + File.separator+"AdgoodsImg";
		  //String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  //String fileName = null;
		 
		

		//파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 없다면)
		
		/*
		 * if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		 * 
		 * fileName =
		 * UploadFileUtils.fileUpload(imgUploadPath,file.getOriginalFilename(),
		 * file.getBytes(), ymdPath);
		 * 
		 * } else{ //첨부된 파일이 없다면
		 * 
		 * fileName = uploadPath + File.separator + "SubgoodsImg" + File.separator +
		 * "ready.jpg"; agvo.setProd_img(fileName); agvo.setProdThumbImg(fileName);
		 * 
		 * Path path = Paths.get(imgUploadPath).toAbsolutePath();
		 * file.transferTo(path.toFile()); }
		 * 
		 * //원본 파일 경로+파일명 저장
		 * agvo.setProd_img(File.separator+"AdgoodsImg"+ymdPath+File.separator+fileName)
		 * ;
		 * 
		 * //썸네일 파일 경로+썸네일파일 저장
		 * agvo.setProdThumbImg(File.separator+"AdgoodsImg"+ymdPath+File.separator+"s"+
		 * File.separator+"s_"+fileName);
		 */
		  
	
		logger.info("goodsRegisterPost......"+agvo);
		
		adGoodsService.register(agvo);
		
		//rttr.addFlashAttribute("goodsResult", agvo.getProd_name());
		
		//상품 등록 후 상품 목록 페이지로 리다이렉트
		ModelAndView mav = new ModelAndView("redirect:/adgoods/listProduct.do");
		
		return mav;
	}
	
	//첨부 파일 업로드
	/*
	 * 1.이미지 파일 저장
	 * 2.썸네일 이미지 파일 생성 및 저장
	 * 3.각 이미지 정보 List 객체에 저장
	 * 4.ResponseEntity를 통해서 뷰(view)로 상태 코드가 200인 List 객체 전송
	 * 5.뷰(view)에서 ajax를 통해 요청 시 JSON 타입의 데이터를 요청
	 */
	@Override																		//서버에서 뷰로 변환하는 데이터 인코딩
	@RequestMapping(value = "/adgoods/uploadAction.do", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<AdgoodsImgVO>> uploadAction(MultipartFile[] file) throws Exception {
		
		//이미지 파일 체크
		for(MultipartFile multipartFile : file) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String filetype = null;
			
			try {
				
				filetype = Files.probeContentType(checkfile.toPath());
				logger.info("TYPE : " +filetype);
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			if(!filetype.startsWith("image")) {
				
				List<AdgoodsImgVO> list = null;
				return new ResponseEntity<List<AdgoodsImgVO>>(list, HttpStatus.BAD_REQUEST);		
			}
		}//for
		
		
		/*너무 많은 파일이 한 곳에 모여있지 않도록 날짜 폴더 경로 생성*/
		//날짜 경로 문자열 얻기
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = dateformat.format(date);
		
		//2022-01-29 에 포함된 -를 / or  \로 변경
		String datePath = str.replace("-", File.separator);
		
		//폴더 생성
		File uploadPath = new File(UPLOAD_DIR, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		//이미지 정보 담는 객체
		List<AdgoodsImgVO> list = new ArrayList();
		
		for(MultipartFile multipartFile : file) {
			
			AdgoodsImgVO imagevo = new AdgoodsImgVO();
			
			//파일 이름
			String uploadfileName = multipartFile.getOriginalFilename();
			imagevo.setFileName(uploadfileName);
			imagevo.setUploadPath(datePath);
			
			/*uuid 적용 파일 이름*/
			//동일한 이름을 가진 파일을 덮어쓰지 않도록 각 파일이 고유한 이름을 갖도록 UUID(범용 고유 식별자)가 포함되도록함.
			String uuid = UUID.randomUUID().toString();
			imagevo.setUuid(uuid);
			
			uploadfileName = uuid + "_" + uploadfileName;
			
			//파일 경로 + 파일 이름 합친 File 객체
			File saveFile = new File(uploadPath, uploadfileName);
			
			//파일 저장
			try {
				//파일 저장 메서드 transferTo()호출
				multipartFile.transferTo(saveFile);
				
				//썸네일 생성
				File thumbnailFile = new File(uploadPath, "s_" + uploadfileName);
				
					BufferedImage thumbimg = ImageIO.read(saveFile);
					
					//비율
					double ratio = 3;
					//넓이 높이
					int width = (int)(thumbimg.getWidth()/ratio);
					int height = (int)(thumbimg.getHeight()/ratio);
					
				Thumbnails.of(saveFile).size(width, height).toFile(thumbnailFile);	
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			list.add(imagevo);
		}//for
		
		ResponseEntity<List<AdgoodsImgVO>> result = new ResponseEntity<List<AdgoodsImgVO>>(list, HttpStatus.OK);
		
		return result;
	}
	
	//이미지 삭제
	@Override
	public ResponseEntity<String> deleteAction(String fileName) throws Exception {
		
		logger.info("deleteFile......." + fileName);
		
		File file = null;
		
		try{
			
			//썸네일 파일 삭제
			file = new File(UPLOAD_DIR+URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			//원본 이미지 삭제
			String originFile = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName : " + originFile);
			
			file = new File(originFile);
			
			file.delete();
			
			
		}catch (Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

	

}
