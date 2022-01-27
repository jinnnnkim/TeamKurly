package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.mypage.vo.AddressVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

public interface MypageService {

	//쿠폰
	public List<CouponVO> listCoupons () throws DataAccessException;
	//쿠폰등록
	public int addCoupon(CouponVO couponVO) throws DataAccessException;

	//포인트
	public List<PointVO> listPoints() throws DataAccessException;
	
	//배송지관리
	public List<AddressVO> listAddress() throws DataAccessException;
}
