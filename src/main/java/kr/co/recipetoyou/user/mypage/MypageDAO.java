package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

public interface MypageDAO {
	
	public List<CouponVO> selectAllCouponList() throws DataAccessException;

	public List<PointVO> selectAllPointList() throws DataAccessException;
 
}
