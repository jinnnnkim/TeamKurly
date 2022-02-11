package kr.co.recipetoyou.board.notice;

import java.util.List;

import kr.co.recipetoyou.util.PagingVO;

public interface NoticeDAO {

	public int selectNoticeCount(PagingVO vo);

	public List<NoticeVO> selectNoticeList(PagingVO vo);

	public NoticeVO selectNoticeDetail(int notice_idx);

	public int selectNoticeFrequencyCount(PagingVO vo);

	public List<NoticeVO> selectNoticeFrequencyList(PagingVO vo);

}