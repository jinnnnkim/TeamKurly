package kr.co.recipetoyou.main.cartPick;


import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.recipetoyou.main.cartPick.vo.CartAddVO;
import kr.co.recipetoyou.main.cartPick.vo.FavVO;
import kr.co.recipetoyou.main.cartPick.vo.PickVO;
import kr.co.recipetoyou.main.cartPick.vo.ProdVO;


@Repository("cartPickDAO")
public class CartPickDAOImpl implements CartPickDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PickVO> selectAllCartPickList() throws DataAccessException {
		
		List<PickVO> pickList = sqlSession.selectList("mapper.member.selectAllCartPickList");
		return pickList;
	}

	@Override
	public int deletePick(@RequestParam("prod_name") String prod_name) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deletePick", prod_name);
		System.out.println("dao 호출"+prod_name);
		return result;
	}

	//마이페이지에서 찜하기 담기 클릭 시 장바구니 담기
		@Override
		public int insertCart(PickVO pickVO) throws DataAccessException {
			int result = sqlSession.insert("mapper.member.insertCart", pickVO);
			return result;
		}

	//마이페이지 장바구니 조회
	@Override
		public List<ProdVO> selectAllCartList() throws DataAccessException {
			List<ProdVO> cartList = sqlSession.selectList("mapper.member.selectAllCartList");
			return cartList;
		}	
		
		
		
		
		
		
		
		
	//찜 담기
	@Override
	public int insertFavAdd(FavVO favVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertFavAdd", favVO);
		return result;
	}

	@Override
	public int insertCartAdd(CartAddVO cartAddVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	
	

	
	
}
