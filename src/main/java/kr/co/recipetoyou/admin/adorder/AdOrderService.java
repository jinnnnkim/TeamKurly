package kr.co.recipetoyou.admin.adorder;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.util.PagingVO;

public interface AdOrderService {

	List<AdOrderVO> listOrdUsers(PagingVO vo) throws Exception;

	int ordCount() throws DataAccessException;

	AdOrderVO getOrdInfo(String id) throws DataAccessException;

	int removeOrd(String id) throws DataAccessException;

	void updateOrdInfo(AdOrderVO vo) throws DataAccessException;


}
