package kr.co.recipetoyou.main.goods;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;

import kr.co.recipetoyou.admin.adgoods.AdGoodsDAO;
import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.util.PagingVO;

@Service("goodsService")
@Transactional(propagation = Propagation.REQUIRED)
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDAO goodsDAO;
	

	@Override
	public GoodsVO listProduct(int prod_code)throws Exception {
		GoodsVO goodsVO = goodsDAO.selectProdCode(prod_code);
		return goodsVO;
	}

	@Override
	public List<GoodsVO> listGoods(PagingVO vo) throws Exception {
		List<GoodsVO> goodsList = goodsDAO.listPaging(vo);
		
		goodsList.forEach(goodsvo->{
			try {
				int prod_code = goodsvo.getProd_code();
				List<AdgoodsImgVO> imageList  = goodsDAO.goodsImageList(prod_code);
				goodsvo.setImageList(imageList);
			
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (JsonMappingException e) {
			// TODO: handle exception
		}catch (IOException e) {
			// TODO: handle exception
		}
		});
		return goodsList;
	}
	
	//상품 상세 조회
	@Override
	public GoodsVO goodsDetail(int prod_code) throws Exception {
		
		return goodsDAO.selectProdCode(prod_code);
	}
	

	//목록 조회
	@Override
	public List<CommentVO> commentList(CommentVO commentvo) throws Exception {
		
		return goodsDAO.CommentList(commentvo);
	}

	//총 개수
	@Override
	public int commentTotal(CommentVO commentvo) throws Exception {
		
		return goodsDAO.commentTotal(commentvo);
	}

	//글 작성
	@Override
	public CommentVO commentWrite(CommentVO commentvo) throws Exception {
		
		CommentVO commentVO = new CommentVO();
		commentvo.setSubcomm_code(goodsDAO.SubGetNext(commentVO));
		
		//답글이 아닐 경우
		if(commentvo.getSubcomm_code()==0) {
			commentvo.setComment_code(goodsDAO.GetNext());
		}
		int cnt = goodsDAO.commentWrite(commentVO);
		
		if(cnt>0) {
			commentVO.setResult("SUCCESS");
		}
		
		
		return commentVO;
	}

	//상세 조회
	@Override
	public CommentVO commentView(CommentVO commentvo) throws Exception {
		
		CommentVO commentVO = new CommentVO();
		commentVO = goodsDAO.commentView(commentvo);
		
		return commentVO;
	}

	@Override
	public int UserReview(CommentVO commentvo) throws Exception {
		
		return goodsDAO.UserReview(commentvo);
	}
	
	//삭제
	@Override
	public CommentVO commentDelete(CommentVO commentvo) throws Exception {
		
		CommentVO commentVO = new CommentVO();
		
		int cnt = goodsDAO.commentDelete(commentvo);
		
		if(cnt>0) {
			commentVO.setResult("SUCCESS");
		}
		
		return commentVO;
	}

	//수정
	@Override
	public CommentVO commentUpdate(CommentVO commentvo) throws Exception {
		
		CommentVO commentVO = new CommentVO();
		
		int cnt = goodsDAO.commentUpdate(commentvo);
		
		if(cnt>0) {
			commentVO.setResult("SUCCESS");
		}
		
		return commentVO;
	}

	


	

}
