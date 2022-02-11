package kr.co.recipetoyou.board.notice;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface NoticeService {

	public int noticeCount(PagingVO vo);

	public List<NoticeVO> noticeList(PagingVO vo);

	public NoticeVO getNoticeDetail(int notice_idx);

	public int noticeFrequencyCount(PagingVO vo);

	public List<NoticeVO> noticeFrequencyList(PagingVO vo);

}
