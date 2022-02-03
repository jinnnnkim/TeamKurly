package kr.co.recipetoyou.main.cartPick;

<<<<<<< HEAD
=======

>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

<<<<<<< HEAD
import kr.co.recipetoyou.user.login.LoginDAO;

@Service("cartPickService")
@Transactional(propagation = Propagation.REQUIRED)
public class CartPickServiceImpl implements CartPickService {
	@Autowired
	private CartPickDAO cartPickDAO;

	@Override
	public List<CartPickVO__> listCartPicks() throws DataAccessException {
		List<CartPickVO__> membersList = cartPickDAO.selectAllCartPickList();
		return membersList;
	}

	@Override
	public int addCartPick(CartPickVO__ cartPickVO) throws DataAccessException {
		return cartPickDAO.insertCartPick(cartPickVO);
	}

	@Override
	public int removeCartPick(String id) throws DataAccessException {
		return cartPickDAO.deleteCartPick(id);
	}

	
=======
import kr.co.recipetoyou.admin.adgoods.AdGoodsDAO;
import kr.co.recipetoyou.admin.adgoods.AdgoodsImgVO;
import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;

@Service("cartPickService")
@Transactional(propagation = Propagation.REQUIRED)
public class CartPickServiceImpl implements CartPickService{

	@Autowired
	private CartPickDAO cartPickDAO;

	@Autowired
	AdGoodsDAO adGoodsDAO;
	
	@Override
	public List<PickVO> listPicks () throws DataAccessException {
	
		List<PickVO> pickList = cartPickDAO.selectAllCartPickList();
		return pickList;
	}

	@Override
	public int removePick(String prod_name) throws DataAccessException {
		System.out.println("service 호출");
		return cartPickDAO.deletePick(prod_name);
		
	}
	
	
	//마이페이지 - 찜하기 담기 클릭시 마이페이지 장바구니 이동
	@Override
	public int addCart(PickVO pickVO) throws DataAccessException {
		return cartPickDAO.insertCart(pickVO);
	}
	
	//마이페이지 장바구니 목록 조회
	@Override
	public List<ProdVO> listCarts() throws Exception {
		List<ProdVO> cartList = cartPickDAO.selectAllCartList();
		
		for(ProdVO prodvo : cartList) {
			
			//이미지 정보 얻기
			int prod_code = prodvo.getProd_code();
			List<AdgoodsImgVO> imageList = adGoodsDAO.getGoodsImage(prod_code);
			prodvo.setImageList(imageList);
		}
		
		return cartList;
	}
	
	//마이페이지 장바구니 목록 삭제
		@Override
		public int removeCart(String prod_name) throws DataAccessException {
			System.out.println("service 호출");
			return cartPickDAO.deleteCart(prod_name);
		}
	
		
		
		
		
		
		
		
		
	//장바구니 담기
	@Override
	public int addCartPick(CartAddVO cartAddVO) throws DataAccessException {
		return cartPickDAO.insertCartAdd(cartAddVO);
	}

	//찜(좋아요) 담기
	@Override
	public int addFavPick(FavVO favVO) throws DataAccessException {
		return cartPickDAO.insertFavAdd(favVO);
	}

	
	
	
>>>>>>> 73327b0b5319c321c2a70427a6ba4013a5acd816

}
