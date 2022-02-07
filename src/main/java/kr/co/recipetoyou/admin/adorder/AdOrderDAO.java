package kr.co.recipetoyou.admin.adorder;

import java.util.List;

import org.springframework.dao.DataAccessException;
import kr.co.recipetoyou.util.PagingVO;

public interface AdOrderDAO {

	List<AdOrderVO> listOrdPage(int page) throws Exception;

	List<AdOrderVO> listOrdPaging(PagingVO vo) throws Exception;

	int ordCount() throws DataAccessException;

	int deleteOrd(int id) throws DataAccessException;

	AdOrderVO readOrd(int id) throws DataAccessException;

//	void updateOrdIng(AdOrderVO vo) throws DataAccessException;

	

}
