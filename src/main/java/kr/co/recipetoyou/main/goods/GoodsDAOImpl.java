package kr.co.recipetoyou.main.goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("goodsDAO")
public class GoodsDAOImpl implements GoodsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.goods";
	
	@Override
	public GoodsVO selectProdCode(int prod_code) {
		GoodsVO goodsVO = sqlSession.selectOne(NAMESPACE+".selectProdCode", prod_code);
		return goodsVO;
	}

	//목록 조회
	@Override
	public List<CommentVO> CommentList(CommentVO commentvo) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".commentList", commentvo);
	}

	//총 개수
	@Override
	public int commentTotal(CommentVO commentvo) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".commentTotal", commentvo);
	}

	//comment_code 생성
	@Override
	public int GetNext() throws Exception {
		
		List<CommentVO> commentVO = sqlSession.selectList(NAMESPACE+".getNext");
		int i;
		
		if(commentVO.isEmpty()) {
			i=1;
		}else {
			i=commentVO.get(0).getComment_code()+1;
		}
		
		return i;
	}

	
	//subcomm_code 생성
	@Override
	public int SubGetNext(CommentVO commentvo) throws Exception {
		
		List<CommentVO> commentVO = sqlSession.selectList(NAMESPACE+".subGetNext", commentvo);
		int i;
		
		if(commentVO.isEmpty()) {
			i=0;
		}else {
			System.out.println(commentVO.get(0).getSubcomm_code());
			i=commentVO.get(0).getSubcomm_code()+1;
		}
		
		return i;
	}

	//글 작성
	@Override
	public int commentWrite(CommentVO commentvo) throws Exception {
		
		return sqlSession.insert(NAMESPACE+".commentWrite", commentvo);
	}

	//상세 조회
	@Override
	public CommentVO commentView(CommentVO commentvo) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".commentView", commentvo);
	}

	//후기작성할 조건 충족여부
	@Override
	public int UserReview(CommentVO commentvo) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".UserReview", commentvo);
	}

	//글 삭제
	@Override
	public int commentDelete(CommentVO commentvo) throws Exception {
		
		return sqlSession.delete(NAMESPACE+".commentDelete", commentvo);
	}

	//글 수정
	@Override
	public int commentUpdate(CommentVO commentvo) throws Exception {
		
		return sqlSession.update(NAMESPACE+".commentUpdate", commentvo);
	}

}
