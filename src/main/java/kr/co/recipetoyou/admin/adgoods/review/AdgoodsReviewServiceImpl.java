package kr.co.recipetoyou.admin.adgoods.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.util.PagingVO;

@Service("adReviewService")
public class AdgoodsReviewServiceImpl implements AdgoodsReviewService {

	@Autowired
	AdgoodsReviewDAO adgoodsReviewDAO;
	
	@Override
	public List<AdgoodsReviewVO> listReview(PagingVO vo) throws Exception {
		
		List<AdgoodsReviewVO> reviewList = adgoodsReviewDAO.listPaging(vo);
		
		return reviewList;
	}

	@Override
	public AdgoodsReviewVO adReviewDetail(int prod_review_code) throws Exception {
		
		return adgoodsReviewDAO.readReview(prod_review_code);
	}

	@Override
	public int reviewCount(PagingVO vo) throws Exception {
		
		return adgoodsReviewDAO.reviewCount(vo);
	}

	@Override
	public int reviewAllCount(PagingVO vo) throws Exception {
		
		return adgoodsReviewDAO.reviewAllCount(vo);
	}

}
