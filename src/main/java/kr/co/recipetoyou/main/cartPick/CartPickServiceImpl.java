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
import com.thoughtworks.qdox.model.Member;

import kr.co.recipetoyou.user.login.LoginDAO;
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
	/*@Override
	
	 * public int addCart(PickVO pickVO) throws DataAccessException { return
	 * cartPickDAO.insertCart(pickVO); }
	 */
	//마이페이지 장바구니 담기
	@Override
	public int addCart(CartAddVO cartAddVO) throws DataAccessException {
		System.out.println("장바구니 Service 호출");
		return cartPickDAO.insertCart(cartAddVO);
	}
	
	
	@Override
	public int removeCartPick(String id) throws DataAccessException {
		return cartPickDAO.deleteCartPick(id);
	}

	@Override
	public int addCartPick(CartAddVO cartAddVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//마이페이지 장바구니 목록 조회
	@Override
	public List<ProdVO> listCarts() throws Exception {
		List<ProdVO> cartList = cartPickDAO.selectAllCartList();
		
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
		
		
		return cartList;
	}
	
	//마이페이지 장바구니 목록 삭제
		@Override
		public int removeCart(String prod_name) throws DataAccessException {
			System.out.println("service 호출");
			return cartPickDAO.deleteCart(prod_name);
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

	

	
	
	
}
