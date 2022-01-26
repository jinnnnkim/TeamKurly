package kr.co.recipetoyou.adsend;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.adsend.PaymentVO;
import kr.co.recipetoyou.adsend.OrderVO;
import kr.co.recipetoyou.aduser.AdUserVO;
import kr.co.recipetoyou.util.PagingVO;

public interface AdSendDAO {

	public List<AdSendVO> sendListPage(int page) throws Exception;
	
	public List<AdSendVO> sendListPaging(PagingVO vo) throws Exception;

	public int sendListCount() throws DataAccessException;

	public AdUserVO readUserSend(String id) throws DataAccessException;

	public OrderVO readOrderSend(int ord) throws DataAccessException;

	public PaymentVO readPaymentSend(int pay) throws DataAccessException;


}
