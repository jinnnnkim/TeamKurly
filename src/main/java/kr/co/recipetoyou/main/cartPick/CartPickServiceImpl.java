package kr.co.recipetoyou.main.cartPick;

import java.io.IOException; 
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;

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
	private AdGoodsDAO adGoodsDAO;
	
	
	
	@Override
	public List<PickVO> listPicks (String user_id) throws DataAccessException {
	
		List<PickVO> pickList = cartPickDAO.selectAllCartPickList(user_id);
		
		return pickList;
		
	}
	//찜목록 삭제
	@Override
	public int removePick(String prod_name) throws DataAccessException {
		System.out.println("Pick delete service 호출");
		return cartPickDAO.deletePick(prod_name);
		
	}
	
	//마이페이지 - 찜하기 담기 클릭시 마이페이지 장바구니 이동
	@Override
	public void insertCart(CartAddVO cartAddVO) throws DataAccessException {
		System.out.println("insertCart Service 호출");
		cartPickDAO.insertCart(cartAddVO);	
	}

	@Override
	public void modifyCart(CartAddVO cartAddVO) throws Exception {
		cartPickDAO.modifyCart(cartAddVO);
		
	}

	@Override
	public int sumMoney(String user_id) throws DataAccessException {
		return cartPickDAO.sumMoney(user_id);
	}

	@Override
	public int commCart(String user_id, int prod_code) throws DataAccessException {
		int result = cartPickDAO.selectCart(user_id);
		
		if(result==1) {
			return cartPickDAO.selectCheckCartProd(prod_code);
		}else {
			return 0;
		}
		
	}

	@Override
	public void updateCart(CartAddVO cartAddVO) throws DataAccessException {
		cartPickDAO.updateCount(cartAddVO);	
	}

	
	
	//마이페이지 장바구니 목록 조회
	@Override
	public List<ProdVO> listCarts(String user_id) throws Exception {
		List<ProdVO> cartList = cartPickDAO.selectAllCartList(user_id);
		
		cartList.forEach(agvo->{
			
			try {
					int prod_code = agvo.getProd_code();
					List<AdgoodsImgVO> imageList  = adGoodsDAO.getGoodsImage(prod_code);
					agvo.setImageList(imageList);
					System.out.println(imageList);
				
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (JsonMappingException e) {
				// TODO: handle exception
			}catch (IOException e) {
				// TODO: handle exception
			}
			
		});
		
		System.out.println("listCarts Service 호출");
		
		return cartList;
	}
	
	//마이페이지 장바구니 목록 삭제
		@Override
		public int removeCart(String prod_name) throws DataAccessException {
			System.out.println("service 호출");
			return cartPickDAO.deleteCart(prod_name);
		}
	
		
		
		
				
		
		
		
		
		
		
		
		
		
	@Override
	public int removeCartPick(String id) throws DataAccessException {
		return cartPickDAO.deleteCartPick(id);
	}
	
		
		
		

	//찜(좋아요) 담기
	@Override
	public int addFavPick(FavVO favVO) throws DataAccessException {
		return cartPickDAO.insertFavAdd(favVO);
	}


	@Override
	public List<CartPickVO__> listCartPicks() throws DataAccessException {
		List<CartPickVO__> membersList = cartPickDAO.selectAllCartPickList__();
		return membersList;
	}

	@Override
	public int addCartPick(CartPickVO__ cartPickVO) throws DataAccessException {
		return cartPickDAO.insertCartPick(cartPickVO);
	}
	@Override
	public int addCartPick(CartAddVO cartAddVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	

	
	
	
}
