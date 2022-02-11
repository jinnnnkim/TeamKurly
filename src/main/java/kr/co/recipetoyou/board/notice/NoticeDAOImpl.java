package kr.co.recipetoyou.board.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.util.PagingVO;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int selectNoticeCount(PagingVO vo) {
		return sqlSession.selectOne("mapper.notice.getNoticeCount",vo);
	}

	@Override
	public List<NoticeVO> selectNoticeList(PagingVO vo) {
		return sqlSession.selectList("mapper.notice.getNoticeList",vo);
	}

	@Override
	public NoticeVO selectNoticeDetail(int notice_idx) {
		return sqlSession.selectOne("mapper.notice.selectNoticeDetail",notice_idx);
	}

	@Override
	public int selectNoticeFrequencyCount(PagingVO vo) {
		return sqlSession.selectOne("mapper.notice.selectNoticeFrequencyCount",vo);
	}

	@Override
	public List<NoticeVO> selectNoticeFrequencyList(PagingVO vo) {
		return sqlSession.selectList("mapper.notice.selectNoticeFrequencyList",vo);
	}
	
}
