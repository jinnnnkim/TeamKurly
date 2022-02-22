package kr.co.recipetoyou.user.mypage;

import java.sql.Date;
import java.util.List; 

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.main.goods.ReviewVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;
import kr.co.recipetoyou.util.PagingVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;


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
	public List<MyOrderVO> selectAllOrderList() throws DataAccessException;

	//주문내역 상세 정보 조회
	public MyOrderVO orderDetailList(int ord_code) throws DataAccessException;
	
	//주문내역 연도별 조회
	public MyOrderVO searchOrderList(Date ord_date) throws DataAccessException;
	
	//주문취소
	public int CancleOrders (int ord_code) throws DataAccessException;
	
	//상품문의 조회
	public List<QnAVO> selectAllQnAList() throws DataAccessException;
	
	//상품문의 삭제
	public int deleteQnA(@RequestParam("prod_inq_code") int prod_inq_code) throws DataAccessException;
	
	//상품후기 조회
	public List<ReviewVO> selectAllReviewList() throws DataAccessException;
	
	public void updateUser(UserVO userVO) throws DataAccessException;
	
	//이미지 데이터 얻기
	public List<AdgoodsImgVO> getGoodsImage(int ord_code) throws JsonProcessingException;
	
	public int deleteAddress(@RequestParam("addr_code") String addr_code) throws DataAccessException;
 

}
