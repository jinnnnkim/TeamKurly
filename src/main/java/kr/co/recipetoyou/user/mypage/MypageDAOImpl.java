package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO{
		@Autowired
		private SqlSession sqlSession;

		//쿠폰
		@Override
		public List<CouponVO> selectAllCouponList() throws DataAccessException {
			
			List<CouponVO> couponList = sqlSession.selectList("mapper.user.selectAllCouponList");
			return couponList;
		}
		
		//포인트
		@Override
		public List<PointVO> selectAllPointList() throws DataAccessException {
			
			List<PointVO> pointList = sqlSession.selectList("mapper.user.selectAllPointList");
			
			return pointList;
		}
}
