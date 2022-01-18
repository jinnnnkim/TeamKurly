package kr.co.recipetoyou.board.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface NoticeController {
	
	public ModelAndView notice(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeBulkOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeEchoWrapFeedback(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeEchoWrapFeedbackDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeFrequencyQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeGoodsOffer(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeGoodsOfferDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeOneToOneQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView noticeOneToOneQuestionDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
