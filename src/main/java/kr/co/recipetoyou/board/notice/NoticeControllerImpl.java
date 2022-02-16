package kr.co.recipetoyou.board.notice;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Controller("noticeController")
public class NoticeControllerImpl implements NoticeController{
	
	private static String ARTICLE_IMAGE_REPO ="C:/git_workTeam/src/main/webapp/Resources/Upload/OneToOne";
	
	private static final Logger logger = LoggerFactory.getLogger("NoticeControllerImpl.class");
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private NoticeVO noticeVO;

	@Override
	@RequestMapping(value="/notice/notice.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView notice(PagingVO vo,HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(noticeService.noticeCount(vo));
		int cnt  = pm.getTotalCount();
		
		List<NoticeVO> noticeList = noticeService.noticeList(vo);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("cnt",cnt);
		mav.addObject("noticeList",noticeList);
		mav.addObject("pm",pm);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/notice/noticeBulkOrder.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeBulkOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeDetail.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeDetail(@RequestParam(value="notice_idx") int notice_idx,HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		
		noticeVO = noticeService.getNoticeDetail(notice_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeVO",noticeVO);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeEchoWrapFeedback.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeEchoWrapFeedback(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeEchoWrapFeedbackDetail.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeEchoWrapFeedbackDetail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeFrequencyQuestion.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeFrequencyQuestion(@RequestParam(value="faq_cate_code", required=false) String faq_cate_code ,
			PagingVO vo,HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		
		if(faq_cate_code != null && faq_cate_code != "") {
			int result = Integer.parseInt(faq_cate_code);
			vo.setCateCode(result);
		}
		
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(noticeService.noticeFrequencyCount(vo));
		int cnt  = pm.getTotalCount();
		
		List<NoticeVO> noticeFrequencyList = noticeService.noticeFrequencyList(vo);
		System.out.println(noticeFrequencyList.toString());
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("cnt",cnt);
		mav.addObject("noticeFrequencyList",noticeFrequencyList);
		mav.addObject("pm",pm);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeGoodsOffer.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeGoodsOffer(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeGoodsOfferDetail.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeGoodsOfferDetail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeOneToOneQuestion.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeOneToOneQuestion(PagingVO vo ,HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		
		logger.info(viewName);
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		vo.setUser_id(userVO.getUser_id());
		System.out.println("=============userid:"+vo.getUser_id());
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(noticeService.noticeOneToOneCount(vo));
		int cnt  = pm.getTotalCount();
		
		List<NoticeINQVO> noticeOneToOneList = noticeService.noticeOneToOneist(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("cnt",cnt);
		mav.addObject("noticeOneToOneList",noticeOneToOneList);
		mav.addObject("pm",pm);
		
		return mav;
	}

	@Override
	@RequestMapping(value="/notice/noticeOneToOneQuestionDetail.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeOneToOneQuestionDetail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
		return mav;
	}
	
	@RequestMapping(value="/notice/noticeOneToOneWrite.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity noticeOneToOneWrite(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		
		String imageFileName = null;
		
		Map articleMap = new HashMap();
		Enumeration enun = multipartRequest.getParameterNames();
		while (enun.hasMoreElements()) {
			String name = (String) enun.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
			System.out.println("name:"+name+"  "+"value:"+value);
		}
		// 로그인 시 세션에 저장된 회원정보에서 아이디(글쓴이)를 가져와서 map에 저장함
		HttpSession session = multipartRequest.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userVO");
		String id = userVO.getUser_id();
		articleMap.put("id", id);
		
		List<String> fileList = upload(multipartRequest);

		ResponseEntity resEnt = null;
		
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
	
	

}
