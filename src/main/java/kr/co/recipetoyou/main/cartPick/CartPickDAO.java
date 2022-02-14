package kr.co.recipetoyou.main.cartPick;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;

public interface CartPickDAO{
	//조회
	public List<PickVO> selectAllCartPickList() throws DataAccessException;
	//삭제
	public int deletePick(String prod_name) throws DataAccessException;
	//장바구니에 담기, 추가
	public int insertCart (PickVO pickVO) throws DataAccessException;
	
	
	//장바구니 목록 조회
	public List<ProdVO> selectAllCartList() throws DataAccessException;
	//장바구니 목록 삭제
	public int deleteCart(String prod_name) throws DataAccessException;
	
	
	//장바구니 담기
	public int insertCartAdd(CartAddVO cartAddVO) throws DataAccessException;
	//찜 담기
	public int insertFavAdd(FavVO favVO) throws DataAccessException;
	
	public int insertCartPick(CartPickVO__ cartPickVO) throws DataAccessException;
	public int deleteCartPick(String id) throws DataAccessException;
	
	public List<CartPickVO__> selectAllCartPickList__() throws DataAccessException;
	
}
