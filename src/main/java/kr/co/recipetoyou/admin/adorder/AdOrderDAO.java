package kr.co.recipetoyou.admin.adorder;

import java.util.List;

import org.springframework.dao.DataAccessException;
import kr.co.recipetoyou.util.PagingVO;

public interface AdOrderDAO {

	List<AdOrderVO> listOrdPage(int page) throws Exception;

	List<AdOrderVO> listOrdPaging(PagingVO vo) throws Exception;

	int ordCount() throws DataAccessException;

	int deleteOrd(String id) throws DataAccessException;

	AdOrdIngVO readOrdIng(int id) throws DataAccessException;

	void updateOrdIng(AdOrdIngVO vo) throws DataAccessException;

	

}
