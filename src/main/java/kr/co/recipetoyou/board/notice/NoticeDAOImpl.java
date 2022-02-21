package kr.co.recipetoyou.board.notice;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

	@Override
	public int selectOneToOneCount(PagingVO vo) {
		return sqlSession.selectOne("mapper.notice.selectOneToOneCount",vo);
	}

	@Override
	public List<NoticeINQVO> selectOneToOneList(PagingVO vo) {
		return sqlSession.selectList("mapper.notice.selectOneToOneList", vo);
	}

	@Override
	public int insertInq(Map articleMap) {
		sqlSession.insert("mapper.notice.insertInq", articleMap);
		return 0;
	}

	@Override
	public void insertNewFile(Map articleMap) {
		List<NoticeINQFiileVO> list = (ArrayList)articleMap.get("imgFileList");
		
		int inq_idx = (Integer)articleMap.get("inq_idx");
		
		
		if (list != null && list.size() != 0) {
			for (NoticeINQFiileVO imageVO : list) {
				imageVO.setInq_file_idx(inq_idx);
			}
			
			sqlSession.insert("mapper.notice.insertNewFile", list);
		}
	}
	
}
