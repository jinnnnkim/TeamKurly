package kr.co.recipetoyou.adsend;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.main.goods.PaymentVO;
import kr.co.recipetoyou.main.goods.ProdVO;
import kr.co.recipetoyou.main.order.OrderVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.util.PagingVO;

public interface AdSendDAO {

	public List<AdSendVO> sendListPage(int page) throws Exception;
	
	public List<AdSendVO> sendListPaging(PagingVO vo) throws Exception;

	public int sendListCount() throws DataAccessException;

	public UserVO readUserSend(String id) throws DataAccessException;

	public OrderVO readOrderSend(int ord) throws DataAccessException;

	public PaymentVO readPaymentSend(int pay) throws DataAccessException;


}
