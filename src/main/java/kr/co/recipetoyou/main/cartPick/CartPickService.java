package kr.co.recipetoyou.main.cartPick;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;
import kr.co.recipetoyou.user.UserVO;

public interface CartPickService {
	
	 //찜 목록 조회
	  public List<PickVO> listPicks () throws DataAccessException;
	  //찜 목록 삭제
	  public int removePick(String prod_name) throws DataAccessException;
	  //마이페이지 장바구니에 담기 - 미완
	  public int addCart(PickVO pickVO) throws DataAccessException;
	  //마이페이지 장바구니 조회
	  public List<ProdVO> listCarts () throws DataAccessException;
	  
	  
	  //장바구니 담기
	  public int addCartPick(CartAddVO cartAddVO) throws DataAccessException;
	  
	  //찜(좋아요) 담기
	  public int addFavPick(FavVO favVO) throws DataAccessException;
}
	 
