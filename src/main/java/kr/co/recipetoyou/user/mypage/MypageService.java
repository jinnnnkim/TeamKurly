package kr.co.recipetoyou.user.mypage;

import java.sql.Date;
import java.util.List; 

import org.springframework.dao.DataAccessException;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;

import kr.co.recipetoyou.user.mypage.vo.QnAVO;
import kr.co.recipetoyou.user.mypage.vo.ReviewVO;


public interface MypageService {

	//쿠폰
	public List<CouponVO> listCoupons () throws DataAccessException;
	//쿠폰등록
	public int addCoupon(CouponVO couponVO) throws DataAccessException;

	//포인트
	public List<PointVO> listPoints() throws DataAccessException;
	
	//배송지관리 
	public List<UserAddrVO> listAddress() throws DataAccessException;
	
	//주문내역 조회
	public List<MyOrderVO> listOrders() throws DataAccessException;

	//주문 상세 페이지
	public MyOrderVO orderDetail(int ord_code) throws Exception;
	
	//주문내역 연도별 조회
	public MyOrderVO searchOrderList(Date ord_date) throws Exception; 
	
	//상품문의
	public List<QnAVO> listQnA() throws DataAccessException;
	
	//상품문의 삭제
	public int removeQnA(int prod_inq_code) throws DataAccessException;
	
	//상품후기
	public List<ReviewVO> listReviews() throws DataAccessException;

	public void updateUser(UserVO userVO) throws DataAccessException;
}
