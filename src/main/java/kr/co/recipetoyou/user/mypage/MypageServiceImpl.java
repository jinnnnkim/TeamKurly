package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

@Service("mypageService")
@Transactional(propagation =  Propagation.REQUIRED)
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;
	

	@Override
	public List<CouponVO> listCoupons() throws DataAccessException {
	
		List<CouponVO> couponList = mypageDAO.selectAllCouponList();
		return couponList;
	}


	@Override
	public int addCoupon(CouponVO couponVO) throws DataAccessException {
		return mypageDAO.insertCoupon(couponVO);
	}


	@Override
	public List<PointVO> listPoints() throws DataAccessException {
		List<PointVO> pointList = mypageDAO.selectAllPointList();
		return pointList;
	}


}
