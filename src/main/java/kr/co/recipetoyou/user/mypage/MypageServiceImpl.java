package kr.co.recipetoyou.user.mypage;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;

import kr.co.recipetoyou.user.mypage.vo.QnAVO;
import kr.co.recipetoyou.user.mypage.vo.ReviewVO;


@Service("mypageService")
@Transactional(propagation = Propagation.REQUIRED)
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
	
	 //배송지관리
	 @Override 
	 public List<UserAddrVO> listAddress() throws DataAccessException {
		  
		 System.out.println("addr Service 호출");
	 
		 List<UserAddrVO> addressList = mypageDAO.selectAllAddressList(); 
		 return addressList; 
	 }

	//상품문의
	@Override
	public List<QnAVO> listQnA() throws DataAccessException {
		List<QnAVO> qnaList = mypageDAO.selectAllQnAList();
		return qnaList;
	}

	 //주문내역 조회
	@Override
	public List<MyOrderVO> listOrders() throws DataAccessException {
		List<MyOrderVO> OderList = mypageDAO.selectAllOrderList();
		return OderList;
	}
	
	//주문내역 상세 조회
	@Override
	public MyOrderVO orderDetail(int ord_code) throws Exception {
		System.out.println("orderDetail Service 호출");
		return mypageDAO.orderDetailList(ord_code);
	}


	//상품후기 조회
	@Override
	public List<ReviewVO> listReviews() throws DataAccessException {
		List<ReviewVO> reviewList = mypageDAO.selectAllReviewList();
		return reviewList;
	}

	@Override
	public void updateUser(UserVO userVO) throws DataAccessException {
		mypageDAO.updateUser(userVO);
		
	}
	

}
