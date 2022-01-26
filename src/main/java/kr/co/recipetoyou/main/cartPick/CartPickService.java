package kr.co.recipetoyou.main.cartPick;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.user.UserVO;

public interface CartPickService {
	
	  public List<PickVO> listPicks () throws DataAccessException;
	  public int removePick(String prod_name) throws DataAccessException;
	  public int addCart(PickVO pickVO) throws DataAccessException;
	  
	  //장바구니 담기
	  public int addCartPick(CartAddVO cartAddVO) throws DataAccessException;
	  
	  //찜(좋아요) 담기
	  public int addFavPick(FavVO favVO) throws DataAccessException;
}
	 
