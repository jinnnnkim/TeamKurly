package kr.co.recipetoyou.board.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("noticeController")
public class NoticeControllerImpl implements NoticeController{
	
	private static final Logger logger = LoggerFactory.getLogger("NoticeControllerImpl.class");

	@Override
	@RequestMapping(value="/notice/notice.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView notice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
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
	public ModelAndView noticeDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
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
	public ModelAndView noticeFrequencyQuestion(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		logger.info(viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		
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
