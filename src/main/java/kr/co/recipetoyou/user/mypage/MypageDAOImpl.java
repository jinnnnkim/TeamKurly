package kr.co.recipetoyou.user.mypage;

import java.sql.Date;
import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;
import kr.co.recipetoyou.util.PagingVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;
import kr.co.recipetoyou.user.mypage.vo.ReviewVO;


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

		
	//배송지관리 조회
	@Override 
	public List<UserAddrVO> selectAllAddressList() throws DataAccessException {
		  
		System.out.println("addrlist DAO 호출");
		  
		List<UserAddrVO> addressList = sqlSession.selectList("mapper.member.selectAllAddressList"); 
		return addressList; 
	}

	//주문내역 조회 
	@Override
	public List<MyOrderVO> selectAllOrderList() throws DataAccessException {
			
		List<MyOrderVO> OrderList = sqlSession.selectList("mapper.member.selectAllOrderList");
		return OrderList;
	}
		 
	//주문내역 상세 정보 조회
	@Override
	public MyOrderVO orderDetailList(int ord_code) throws DataAccessException {
		
		System.out.println("orderDetail DAO 호출");
		return sqlSession.selectOne("mapper.member.orderDetailList", ord_code);
		/* return (MyOrderVO) sqlSession.selectList("mapper.member.orderDetailList"); */
	}
	
	//주문내역 연도별 검색
	@Override
	public MyOrderVO searchOrderList(Date ord_date) throws DataAccessException {
		System.out.println("sesarOrder DAO 호출");
		return sqlSession.selectOne("mapper.member.searchOrderList", ord_date);
	}

	//주문 취소
	@Override
	public int CancleOrders(int ord_code) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.CancleOrders",ord_code);
		System.out.println("cancleDAO 주문 취소"+ord_code);
		return result;
	}

	//상품문의 조회
	@Override
	public List<QnAVO> selectAllQnAList() throws DataAccessException {
		List<QnAVO> qnaList = sqlSession.selectList("mapper.member.selectAllQnAList");
		return qnaList;
	}

	//상품후기 조회
	@Override
	public List<ReviewVO> selectAllReviewList() throws DataAccessException {
		List<ReviewVO> reviewList = sqlSession.selectList("mapper.member.selectAllReviewList");
		return reviewList;
	}

	@Override
	public void updateUser(UserVO userVO) throws DataAccessException {
		sqlSession.update("mapper.member.updateUser", userVO);
		
	}

	/*
	 * //이미지 정보 얻기
	 * 
	 * @Override public List<AdgoodsImgVO> getGoodsImage(int prod_code) throws
	 * JsonProcessingException {
	 * 
	 * return sqlSession.selectList("mapper.member.getImageList", prod_code);
	 * 
	 * }
	 */
	@Override
	public List<AdgoodsImgVO> getGoodsImage(int ord_code) throws JsonProcessingException {
		return sqlSession.selectList("mapper.member.getImageList", ord_code);
		
	}



	//상품문의 삭제
	@Override
    public int deleteQnA(@RequestParam("prod_inq_code") int prod_inq_code) throws DataAccessException {
		
		int result = sqlSession.delete("mapper.member.deleteQnA", prod_inq_code);
		return result;

	}

	@Override
	public int deleteAddress(@RequestParam("addr_code") String addr_code) throws DataAccessException {
		
		int result = sqlSession.delete("mapper.member.deleteAddress", addr_code);
		return result;
	}

	

	


	

	
	
}
