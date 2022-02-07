package kr.co.recipetoyou.board.recipe;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Controller("recipeContoller")
public class RecipeContollerImpl implements RecipeController{

	private static String ARTICLE_IMAGE_REPO ="C:/workspace_recipeToYou/repo/";
	
	private static final Logger logger = LoggerFactory.getLogger("RecipeContollerImpl.class");

	@Autowired
	private RecipeService recipeService;

	@Autowired
	private RecipeVO recipeVO;

	@RequestMapping(value="/community/communityRecipeMain.do", method= {RequestMethod.GET,RequestMethod.POST} )
	public ModelAndView communityRecipeMain(PagingVO vo, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		System.out.println("게시글 총 갯수"+recipeService.recipeCount());
		pm.setTotalCount(recipeService.recipeCount());
		int cnt = pm.getTotalCount();
		
		
		List<RecipeVO> recipeList = recipeService.recipeList(vo);
		
		List<RecipeCateVO> cateTitleList = recipeService.recipeCateTitleList();
		List<RecipeCateVO> cateDetailList = recipeService.recipeCateDetailList();

		ModelAndView mav = new ModelAndView();

		mav.addObject("recipeList", recipeList);
		mav.addObject("cateTitleList", cateTitleList);
		mav.addObject("cateDetailList", cateDetailList);
		mav.addObject("cnt",cnt);
		mav.addObject("pm",pm);

		return mav;
	}

	@RequestMapping(value="/community/communityRecipeWrite.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeWrite(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception{
		
		ObjectMapper  objm = new ObjectMapper();
		
		List<RecipeCateVO> list = recipeService.recipeCateList();
		
		String cateList = objm.writeValueAsString(list);

		ModelAndView mav = new ModelAndView();
		logger.info("cateList: "+cateList);

		model.addAttribute("cateList", cateList);

		
		return mav;
		
	}
	
	@RequestMapping(value="/community/communityRecipeWriteProcess.do" ,method=RequestMethod.POST)
	public String communityRecipeWriteProcess(
			MultipartHttpServletRequest multipartRequest,
			HttpServletResponse response) throws Exception{
		
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		
		Map recipeMap = new HashMap();
		Enumeration enun = multipartRequest.getParameterNames();
		while (enun.hasMoreElements()) {
			String name = (String) enun.nextElement();
			String value = multipartRequest.getParameter(name);
			recipeMap.put(name, value);
		}
		
		ModelAndView mav = new ModelAndView();
		
		recipeService.addRecipe(recipeMap);
		
		return "redirect:/community/communityRecipeMain.do";
	}

	@RequestMapping(value="/community/communityRecipeDetail.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeDetail(@RequestParam("recipe_idx") int recipe_idx, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		recipeVO = recipeService.recipeDetail(recipe_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("recipeVO", recipeVO);
		
		return mav;
	}
	
	@RequestMapping(value="/community/communityRecipeModify.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeModify(@RequestParam("recipe_idx") int recipe_idx, Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		recipeVO = recipeService.recipeModify(recipe_idx);
		ObjectMapper  objm = new ObjectMapper();
		
		List<RecipeCateVO> list = recipeService.recipeCateList();
		
		String cateList = objm.writeValueAsString(list);
		
		ModelAndView mav = new ModelAndView();
		logger.info("cateList: "+cateList);

		model.addAttribute("cateList", cateList);
		mav.addObject("recipeVO", recipeVO);
		
		return mav;
	}
	
	@RequestMapping(value="/community/communityRecipeModifyProcess.do" ,method=RequestMethod.POST)
	public String communityRecipeModifyProcess(
			MultipartHttpServletRequest multipartRequest,
			HttpServletResponse response) throws Exception{
		
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		String recipe_idx = null;
		Map recipeMap = new HashMap();
		Enumeration enun = multipartRequest.getParameterNames();
		while (enun.hasMoreElements()) {
			String name = (String) enun.nextElement();
			if(name.equals("recipe_idx")) recipe_idx = multipartRequest.getParameter(name);
			
			String value = multipartRequest.getParameter(name);
			recipeMap.put(name, value);
		}
		
		ModelAndView mav = new ModelAndView();
		
		recipeService.updateRecipe(recipeMap);
		
		
		return "redirect:/community/communityRecipeDetail.do?recipe_idx="+recipeMap.get("recipe_idx");
	}
	
	@Override
	public ModelAndView communityRecipeModifyProcess(int recipe_idx, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	@RequestMapping(value="/community/communityRecipeDelete.do", method=RequestMethod.GET )
	public String communityRecipeDelete(@RequestParam("recipe_idx") int recipe_idx, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		recipeService.recipeDelete(recipe_idx);
		return "redirect:/community/communityRecipeMain.do";
	}
	

	@RequestMapping(value="/mine/imageUpload.do", method = RequestMethod.POST) 
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, 
			MultipartHttpServletRequest multiFile , @RequestParam MultipartFile upload) throws Exception{ 
		UUID uid = UUID.randomUUID(); 
		OutputStream out = null; 
		PrintWriter printWriter = null; 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		try{ 
			String fileName = upload.getOriginalFilename(); 
			byte[] bytes = upload.getBytes(); 
			String path = ARTICLE_IMAGE_REPO;
			String ckUploadPath = path + uid + "_" + fileName;
			System.out.println("path:"+ckUploadPath);
			File folder = new File(path); 
			if(!folder.exists()){ 
				try{ folder.mkdirs(); 
				}catch(Exception e){ 
					e.getStackTrace(); 
				} 
			} 
			out = new FileOutputStream(new File(ckUploadPath)); 
			out.write(bytes); 
			out.flush(); 
			String callback = request.getParameter("CKEditorFuncNum"); 
			printWriter = response.getWriter(); 
			String fileUrl = "/recipetoyou/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}"); 
			printWriter.flush(); 
			System.out.println("upload complete");
		}catch(IOException e){
			e.printStackTrace();
		} finally { 
			try {
				if(out != null) { 
					out.close(); 
				} 
				if(printWriter != null) { 
					printWriter.close(); 
				} 
			} catch(IOException e) { 
				e.printStackTrace(); 
			} 
		}return; 
	}
	
	@RequestMapping(value="/mine/ckImgSubmit.do")
	public void ckSubmit(@RequestParam(value="uid") String uid , @RequestParam(value="fileName") String fileName 
			, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{ 
		String path = ARTICLE_IMAGE_REPO; 
		String sDirPath = path + uid + "_" + fileName; 
		File imgFile = new File(sDirPath); 
		if(imgFile.isFile()){ 
			byte[] buf = new byte[1024]; 
			int readByte = 0; 
			int length = 0;
			byte[] imgBuf = null; 
			FileInputStream fileInputStream = null; 
			ByteArrayOutputStream outputStream = null; 
			ServletOutputStream out = null; 
			try{ 
				fileInputStream = new FileInputStream(imgFile); 
				outputStream = new ByteArrayOutputStream(); 
				out = response.getOutputStream();
				while((readByte = fileInputStream.read(buf)) != -1){ 
					outputStream.write(buf, 0, readByte); 
				} 
				imgBuf = outputStream.toByteArray(); 
				length = imgBuf.length; out.write(imgBuf, 0, length); 
				out.flush(); 
			}catch(IOException e){ 
				e.printStackTrace();
			}finally { 
				outputStream.close(); 
				fileInputStream.close(); 
				out.close(); 
			}
		}

	}
	/*
	@Override
	@RequestMapping(value = "/board/addNewArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		
		Map articleMap = new HashMap();
		Enumeration enun = multipartRequest.getParameterNames();
		while (enun.hasMoreElements()) {
			String name = (String) enun.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}
		
		HttpSession session = multipartRequest.getSession();
	
	
		 UserVO userVO = (UserVO) session.getAttribute("userVO"); String id =
		 userVO.getUser_id(); articleMap.put("id", id);
		 
		
		String parentNO = (String) session.getAttribute("parentNO");
		articleMap.put("parentNO", (parentNO == null ? 0 : parentNO));
		
		List<String> fileList = upload(multipartRequest);
		List<ImageVO> imageFileList = new ArrayList<>();
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
		}
		
		HttpHeaders responseHeaders = new HttpHeaders(); 
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		String message;
		ResponseEntity resEnt = null;
		
		try {
			//서비스 호출
			int articleNO = boardService.addNewArticle(articleMap);
			
			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ imageFileName);
					File destFile = new File(ARTICLE_IMAGE_REPO +"\\"+ articleNO);
					FileUtils.moveFileToDirectory(srcFile, destFile, true);
				}
			}
			
			message = "<script>";
			message += " alert('새글을 추가했습니다.');" ;
			message += " location.href='"+multipartRequest.getContextPath()+"/board/listArticles.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			
		} 
		catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (ImageVO imageVO : imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ imageFileName);
					srcFile.delete();
				}
			}
			
			message = "<script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요.');" ;
			message += " location.href='"+multipartRequest.getContextPath()+"/board/articleForm.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);			
						
			e.printStackTrace();
		}
		
		return resEnt;
	}
	
	private List<String> upload(MultipartHttpServletRequest multipartRequest) throws ServletException, IOException {
		
		List<String> fileList = new ArrayList<>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFilename = mFile.getOriginalFilename();
			
			if (originalFilename != "" && originalFilename != null) {
				fileList.add(originalFilename);
				File file = new File(ARTICLE_IMAGE_REPO +"\\"+ fileName);
				if(mFile.getSize() != 0) {		// File Null Check
					if (!file.exists() ) {		// 경로상에 존재하지 않는다면
						file.getParentFile().mkdirs();	//경로에 해당하는 디렉토리들을 생성
						mFile.transferTo(new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ originalFilename));  //임시로
					}															// 저장한 MultipartFile을 실제 파일로 전송
				}
			}
		}
		

		return fileList;
	}
	*/

}


