package kr.co.recipetoyou.user.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;

@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO{
	
	@Autowired
	private SqlSession sqlSession;

	//조회
	@Override
	public List<CouponVO> selectAllCouponList() throws DataAccessException {
			
		List<CouponVO> couponList = sqlSession.selectList("mapper.member.selectAllCouponList");
		return couponList;
	}

	//등록
	@Override
	public int insertCoupon(CouponVO couponVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertCoupon", couponVO);
		return result;
	}
		
	//포인트 조회
	@Override
	public List<PointVO> selectAllPointList() throws DataAccessException {
		List<PointVO> pointList = sqlSession.selectList("mapper.member.selectAllPointList");
		return pointList;
	}

	/*
	 * //배송지관리 조회
	 * 
	 * @Override public List<AddressVO> selectAllAddressList() throws
	 * DataAccessException { List<AddressVO> addressList =
	 * sqlSession.selectList("mapper.member.selectAllAddressList"); return
	 * addressList; }
	 */
		
	//상품문의 조회
	@Override
	public List<QnAVO> selectAllQnAList() throws DataAccessException {
		List<QnAVO> qnaList = sqlSession.selectList("mapper.member.selectAllQnAList");
		return qnaList;
	}
}
