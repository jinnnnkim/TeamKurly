package kr.co.recipetoyou.user.mypage;


import java.sql.Date; 

import java.util.List;
import java.io.IOException;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import kr.co.recipetoyou.admin.adgoods.AdGoodsDAO;
import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
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
	
	@Autowired
	private AdGoodsDAO adGoodsDAO;
	
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
		List<MyOrderVO> orderList = mypageDAO.selectAllOrderList();
		
		
		orderList.forEach(order->{
			
			try {
					int prod_code = order.getProd_code();
					List<AdgoodsImgVO> imageList  = mypageDAO.getGoodsImage(prod_code);
					order.setImageList(imageList);
					System.out.println(imageList.toString());
				
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (JsonMappingException e) {
				// TODO: handle exception
			}catch (IOException e) {
				// TODO: handle exception
			}
			
		});
		
		
		return orderList;
		
	}
	
	//주문내역 상세 조회
	@Override
	public MyOrderVO orderDetail(int ord_code) throws Exception {
		System.out.println("orderDetail Service 호출");
		return mypageDAO.orderDetailList(ord_code);
	}

	//주문내역 연도별 조회
	@Override
	public MyOrderVO searchOrderList(Date ord_date) throws Exception {
		System.out.println("searchOrderList Service 호출");
		return mypageDAO.searchOrderList(ord_date);
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


	//상품문의 삭제
	@Override
	public int removeQnA(int prod_inq_code) throws DataAccessException {
		 return mypageDAO.removeQnA(prod_inq_code);
	}

	

}
