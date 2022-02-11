package kr.co.recipetoyou.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.util.PagingVO;

@Service("service")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public int noticeCount(PagingVO vo) {
		return noticeDAO.selectNoticeCount(vo);
	}

	@Override
	public List<NoticeVO> noticeList(PagingVO vo) {
		return noticeDAO.selectNoticeList(vo);
	}

	@Override
	public NoticeVO getNoticeDetail(int notice_idx) {
		return noticeDAO.selectNoticeDetail(notice_idx);
	}

	@Override
	public int noticeFrequencyCount(PagingVO vo) {
		return noticeDAO.selectNoticeFrequencyCount(vo);
	}

	@Override
	public List<NoticeVO> noticeFrequencyList(PagingVO vo) {
		return noticeDAO.selectNoticeFrequencyList(vo);
	}

}