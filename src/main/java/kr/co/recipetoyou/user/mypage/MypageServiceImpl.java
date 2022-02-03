package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;

@Service("mypageService")
@Transactional(propagation =  Propagation.REQUIRED)
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;
	
	//쿠폰
	@Override
	public List<CouponVO> listCoupons() throws DataAccessException {
	
		List<CouponVO> couponList = mypageDAO.selectAllCouponList();
		return couponList;
	}

	//쿠폰등록
	@Override
	public int addCoupon(CouponVO couponVO) throws DataAccessException {
		return mypageDAO.insertCoupon(couponVO);
	}

	//포인트
	@Override
	public List<PointVO> listPoints() throws DataAccessException {
		List<PointVO> pointList = mypageDAO.selectAllPointList();
		return pointList;
	}

	/*
	 * //배송지관리
	 * 
	 * @Override public List<AddressVO> listAddress() throws DataAccessException {
	 * List<AddressVO> addressList = mypageDAO.selectAllAddressList(); return
	 * addressList; }
	 */
	
	//상품문의
	@Override
	public List<QnAVO> listQnA() throws DataAccessException {
		List<QnAVO> qnaList = mypageDAO.selectAllQnAList();
		return qnaList;
	}


}
