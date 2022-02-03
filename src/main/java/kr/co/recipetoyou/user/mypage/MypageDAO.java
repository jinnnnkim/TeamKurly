package kr.co.recipetoyou.user.mypage;

import java.util.List; 

import org.springframework.dao.DataAccessException;


import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.OrdIngVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;
import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;

public interface MypageDAO {
	
		//쿠폰 조회
		public List<CouponVO> selectAllCouponList() throws DataAccessException;
		//쿠폰 등록
		public int insertCoupon(CouponVO couponVO) throws DataAccessException;
		
		//포인트 조회
		public List<PointVO> selectAllPointList() throws DataAccessException;
		
		//배송지관리 조회
		public List<UserAddrVO> selectAllAddressList() throws DataAccessException;
		
		//주문내역 조회
		public List<OrdIngVO> selectAllOrderList() throws DataAccessException;
}
