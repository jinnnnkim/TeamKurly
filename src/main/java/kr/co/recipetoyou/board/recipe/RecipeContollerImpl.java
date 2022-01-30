package kr.co.recipetoyou.board.recipe;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.user.UserVO;

@Controller("recipeContoller")
public class RecipeContollerImpl implements RecipeController{

	private static String ARTICLE_IMAGE_REPO ="C:/workspace_recipeToYou/repo/";

	@Autowired
	private RecipeService recipeService;

	@Autowired
	private RecipeVO recipeVO;

	@RequestMapping(value="/community/communityRecipeMain.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeMain(HttpServletRequest request, HttpServletResponse response) throws Exception{

		List<RecipeVO> recipeList = recipeService.recipeList();
		List<RecipeCateVO> cateTitleList = recipeService.recipeCateTitleList();
		List<RecipeCateVO> cateDetailList = recipeService.recipeCateDetailList();

		ModelAndView mav = new ModelAndView();

		mav.addObject("recipeList", recipeList);
		mav.addObject("cateTitleList", cateTitleList);
		mav.addObject("cateDetailList", cateDetailList);

		return mav;
	}

	@RequestMapping(value="/community/communityRecipeWrite.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
		ModelAndView mav = new ModelAndView();

		
		return mav;
		
	}

	@RequestMapping(value="/community/communityRecipeDetail.do", method=RequestMethod.GET )
	public ModelAndView communityRecipeDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();

		return mav;
	}
	
	
	/*
	 * @RequestMapping(value = "/board/addNewArticle.do", method =
	 * RequestMethod.POST)
	 * 
	 * @ResponseBody public ResponseEntity addNewArticle(
	 * MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
	 * throws Exception {
	 * 
	 * multipartRequest.setCharacterEncoding("utf-8"); String imageFileName = null;
	 * 
	 * Map articleMap = new HashMap(); Enumeration enun =
	 * multipartRequest.getParameterNames(); while (enun.hasMoreElements()) { String
	 * name = (String) enun.nextElement(); String value =
	 * multipartRequest.getParameter(name); articleMap.put(name, value); }
	 * 
	 * // 로그인 시 세션에 저장된 회원정보에서 아이디(글쓴이)를 가져와서 map에 저장함 HttpSession session =
	 * multipartRequest.getSession(); UserVO userVO = (UserVO)
	 * session.getAttribute("userVO"); String id = userVO.getUser_id();
	 * articleMap.put("id", id);
	 * 
	 * List<String> fileList = upload(multipartRequest); List<ImageVO> imageFileList
	 * = new ArrayList<>(); if (fileList != null && fileList.size() != 0) { for
	 * (String fileName : fileList) { ImageVO imageVO = new ImageVO();
	 * imageVO.setImageFileName(fileName); imageFileList.add(imageVO); }
	 * articleMap.put("imageFileList", imageFileList); }
	 * 
	 * HttpHeaders responseHeaders = new HttpHeaders();
	 * responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	 * 
	 * String message; ResponseEntity resEnt = null;
	 * 
	 * try { //서비스 호출 int articleNO = boardService.addNewArticle(articleMap);
	 * 
	 * if (imageFileList != null && imageFileList.size() != 0) { for (ImageVO
	 * imageVO : imageFileList) { imageFileName = imageVO.getImageFileName(); File
	 * srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ imageFileName);
	 * File destFile = new File(ARTICLE_IMAGE_REPO +"\\"+ articleNO);
	 * FileUtils.moveFileToDirectory(srcFile, destFile, true); } }
	 * 
	 * message = "<script>"; message += " alert('새글을 추가했습니다.');" ; message +=
	 * " location.href='"+multipartRequest.getContextPath()+
	 * "/board/listArticles.do';"; message += "</script>"; resEnt = new
	 * ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	 * 
	 * } catch (Exception e) { if (imageFileList != null && imageFileList.size() !=
	 * 0) { for (ImageVO imageVO : imageFileList) { imageFileName =
	 * imageVO.getImageFileName(); File srcFile = new File(ARTICLE_IMAGE_REPO
	 * +"\\"+ "temp" +"\\"+ imageFileName); srcFile.delete(); } }
	 * 
	 * message = "<script>"; message += " alert('오류가 발생했습니다. 다시 시도해 주세요.');" ;
	 * message += " location.href='"+multipartRequest.getContextPath()+
	 * "/board/articleForm.do';"; message += "</script>"; resEnt = new
	 * ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	 * 
	 * e.printStackTrace(); }
	 * 
	 * return resEnt; }
	 * 
	 * private List<String> upload(MultipartHttpServletRequest multipartRequest)
	 * throws ServletException, IOException {
	 * 
	 * List<String> fileList = new ArrayList<>(); Iterator<String> fileNames =
	 * multipartRequest.getFileNames(); while (fileNames.hasNext()) { String
	 * fileName = fileNames.next(); MultipartFile mFile =
	 * multipartRequest.getFile(fileName); String originalFilename =
	 * mFile.getOriginalFilename();
	 * 
	 * if (originalFilename != "" && originalFilename != null) {
	 * fileList.add(originalFilename); File file = new File(ARTICLE_IMAGE_REPO
	 * +"\\"+ fileName); if(mFile.getSize() != 0) { // File Null Check if
	 * (!file.exists() ) { // 경로상에 존재하지 않는다면 file.getParentFile().mkdirs(); //경로에
	 * 해당하는 디렉토리들을 생성 mFile.transferTo(new File(ARTICLE_IMAGE_REPO
	 * +"\\"+ "temp" +"\\"+ originalFilename)); //임시로 } // 저장한 MultipartFile을 실제 파일로
	 * 전송 } } }
	 * 
	 * 
	 * return fileList; }
	 */

	@RequestMapping(value="/mine/imageUpload.do", method = RequestMethod.POST) 
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, 
			MultipartHttpServletRequest multiFile , @RequestParam MultipartFile upload) throws Exception{ 
		// 랜덤 문자 생성 
		System.out.println("fileUpload");
		UUID uid = UUID.randomUUID(); 
		OutputStream out = null; 
		PrintWriter printWriter = null; 
		//인코딩 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		try{ 
			//파일 이름 가져오기 
			String fileName = upload.getOriginalFilename(); 
			byte[] bytes = upload.getBytes(); 
			//이미지 경로 생성 
			String path = ARTICLE_IMAGE_REPO;
			// fileDir는 전역 변수라 그냥 이미지 경로 설정해주면 된다.
			String ckUploadPath = path + uid + "_" + fileName;
			System.out.println("path:"+ckUploadPath);
			File folder = new File(path); 
			//해당 디렉토리 확인 
			if(!folder.exists()){ 
				try{ folder.mkdirs(); 
				// 폴더 생성 
				}catch(Exception e){ 
					e.getStackTrace(); 
				} 
			} 
			out = new FileOutputStream(new File(ckUploadPath)); 
			out.write(bytes); 
			out.flush(); 
			// outputStram에 저장된 데이터를 전송하고 초기화 
			String callback = request.getParameter("CKEditorFuncNum"); 
			printWriter = response.getWriter(); 
			String fileUrl = "/recipetoyou/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;
			// 작성화면 
			// 업로드시 메시지 출력 
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
		//서버에 저장된 이미지 경로 
		System.out.println("fileDown");
		String path = ARTICLE_IMAGE_REPO; 
		String sDirPath = path + uid + "_" + fileName; 
		System.out.println(sDirPath);
		File imgFile = new File(sDirPath); 
		//사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다. 
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
}


