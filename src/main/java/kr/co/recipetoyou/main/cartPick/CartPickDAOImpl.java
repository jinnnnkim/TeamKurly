package kr.co.recipetoyou.main.cartPick;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import org.springframework.web.bind.annotation.RequestParam;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;


@Repository("cartPickDAO")
public class CartPickDAOImpl implements CartPickDAO {

	@Autowired
	private SqlSession sqlSession;

	//찜하기 조회
	@Override
	public List<PickVO> selectAllCartPickList() throws DataAccessException {
		
		List<PickVO> pickList = sqlSession.selectList("mapper.member.selectAllCartPickList");
		return pickList;
	}
	
	//찜목록 상품 삭제
	@Override
	public int deletePick(@RequestParam("prod_name") String prod_name) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deletePick", prod_name);
		System.out.println("dao 호출"+prod_name);
		return result;
	}


	//마이페이지에서 찜하기 담기 클릭 시 1.장바구니 담기
	@Override
	public void insertCart(CartAddVO cartAddVO) throws DataAccessException {
		System.out.println("insertCart DAO 호출");
		sqlSession.insert("mapper.member.insertCart", cartAddVO);	
	}
	
	//마이페이지 2. 장바구니 조회
	/*
	 * @Override public List<ProdVO> selectAllCartList() throws DataAccessException
	 * { List<ProdVO> cartList =
	 * sqlSession.selectList("mapper.member.selectAllCartList"); return cartList; }
	 */
	
	@Override
	public List<ProdVO> selectAllCartList(String user_id) throws DataAccessException {
		return sqlSession.selectList("mapper.member.selectAllCartList", "user_id");
	}

	
	//마이페이지 3.장바구니 조회 삭제	
	@Override
	public int deleteCart(String prod_name) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteCart", prod_name);
		System.out.println("dao 호출"+prod_name);
		return result;
	}
	
	
	//4. 장바구니 수정
	@Override
	public void modifyCart(CartAddVO cartAddVO) throws Exception {
		sqlSession.update("mapper.member.modifyCart", cartAddVO);
			
	}
	
	//5. 장바구니 총합
	@Override
	public int sumMoney(String user_id) throws DataAccessException {
		sqlSession.selectOne("mapper.member.sumMoney","user_id");
		return sqlSession.selectOne("mapper.member.sumMoney", "user_id");
	}
	
	//6. 장바구니 동일한 상품 레코드 확인
	@Override
	public int commCart(int prod_code, String user_id) throws DataAccessException {
		Map<String, Object> map = new HashMap<>();
		map.put("prod_code", prod_code);
		map.put("user_id","user_id");
		System.out.println("prod_code"+prod_code);
		System.out.println("user_id"+user_id);
		System.out.println("map"+sqlSession.selectOne("mapper.member.commCart", map));
		return sqlSession.selectOne("mapper.member.commCart", map);
		
	}
	
	//7. 장바구니 수량 변경
	@Override
	public void updateCount(CartAddVO cartAddVO) throws DataAccessException {
			sqlSession.update("mapper.member.updateCount", cartAddVO);
			
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//찜 담기
	@Override
	public int insertFavAdd(FavVO favVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertFavAdd", favVO);
		return result;
	}

	@Override
	public int insertCartPick(CartPickVO__ cartPickVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.cartPick.insertCartPick", cartPickVO);
		return result;
	}

	@Override
	public int deleteCartPick(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.cartPick.deleteCartPick", id);
		return result;
	}

	@Override
	public List<CartPickVO__> selectAllCartPickList__() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int insertCartAdd(CartAddVO cartAddVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	

	

}
