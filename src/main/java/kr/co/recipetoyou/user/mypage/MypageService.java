package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

public interface MypageService {

	public List<CouponVO> listCoupons () throws DataAccessException;

	//포인트
	public List<PointVO> pointlist() throws DataAccessException;
}