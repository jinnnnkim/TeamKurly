package kr.co.recipetoyou.board.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recipetoyou.util.PageMaker;
import kr.co.recipetoyou.util.PagingVO;

@Controller("noticeController")
public class NoticeControllerImpl implements NoticeController{
	
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
	@RequestMapping(value="notice/noticeFrequencyQuestion.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticeFrequencyQuestion(PagingVO vo,HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		
		PageMaker pm = new PageMaker();
		pm.setVo(vo);
		pm.setTotalCount(noticeService.noticeFrequencyCount(vo));
		int cnt  = pm.getTotalCount();
		
		List<NoticeVO> noticeFrequencyList = noticeService.noticeFrequencyList(vo);
		
		
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
	public ModelAndView noticeOneToOneQuestion(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
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

}
