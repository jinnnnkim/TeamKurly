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
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import kr.co.recipetoyou.admin.adgoods.AdGoodsDAO;
import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.main.goods.ReviewVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.user.mypage.vo.CouponVO;
import kr.co.recipetoyou.user.mypage.vo.MyOrderVO;
import kr.co.recipetoyou.user.mypage.vo.PointVO;

import kr.co.recipetoyou.user.mypage.vo.UserAddrVO;
import kr.co.recipetoyou.user.mypage.vo.QnAVO;


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
		
		MyOrderVO orderVO = mypageDAO.orderDetailList(ord_code);
		orderVO.setImageList(mypageDAO.getGoodsImage(ord_code));
		return orderVO;
	}

	//주문내역 연도별 조회
	@Override
	public MyOrderVO searchOrderList(Date ord_date) throws Exception {
		System.out.println("searchOrderList Service 호출");
		return mypageDAO.searchOrderList(ord_date);
	}

	//주문 취소
	@Override
	public int CancleOrders(int ord_code) throws DataAccessException {
		return mypageDAO.CancleOrders(ord_code);
	}

	
	
	//상품후기 조회
	@Override
	public List<ReviewVO> listReviews() throws DataAccessException {
		List<ReviewVO> reviewList = mypageDAO.selectAllReviewList();
		return reviewList;
	}

	/*
	 * @Override public void updateUser(UserVO userVO) throws DataAccessException {
	 * mypageDAO.updateUser(userVO);
	 * 
	 * }
	 */


	//상품문의 삭제
	@Override
	public int deleteQnA(@RequestParam("prod_inq_code") int prod_inq_code) throws DataAccessException {
		return mypageDAO.deleteQnA(prod_inq_code);
	}

	//배송지삭제
	@Override
	public int deleteAddress(@RequestParam("addr_code") String addr_code) throws DataAccessException {
		return mypageDAO.deleteAddress(addr_code);
		
	}

	//개인정보수정
	@Override
	public void userInfoUpdate(UserVO userVO) throws DataAccessException {
		mypageDAO.userInfoUpdate(userVO);
		
	}

	//이메일 중복체크
	@Override
	public int emailChk(UserVO userVO) throws DataAccessException {
		int result = mypageDAO.emailChk(userVO);
		return result;
	}



	

}
