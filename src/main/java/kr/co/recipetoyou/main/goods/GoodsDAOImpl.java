package kr.co.recipetoyou.main.goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.util.PagingVO;

@Repository("goodsDAO")
public class GoodsDAOImpl implements GoodsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "mapper.goods";
	
	@Override
	public GoodsVO selectProdCode(int prod_code)throws Exception{
		GoodsVO goodsVO = sqlSession.selectOne(NAMESPACE+".selectProdCode", prod_code);
		return goodsVO;
	}
	
	@Override
	public List<GoodsVO> listPage(int page) throws Exception {
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;
		return sqlSession.selectList(NAMESPACE+".listPage", page);
	}

	@Override
	public List<GoodsVO> listPaging(PagingVO vo) throws Exception {
		return sqlSession.selectList(NAMESPACE+".selectGoodsList", vo);
	}

	//이미지 데이터 반환
	@Override
	public List<AdgoodsImgVO> goodsImageList(int prod_code) throws JsonProcessingException {
		
		return sqlSession.selectList(NAMESPACE+".goodsImageList", prod_code);
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
