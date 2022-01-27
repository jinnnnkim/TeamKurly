package kr.co.recipetoyou.adsend;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.main.goods.PaymentVO;
import kr.co.recipetoyou.main.order.OrderVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.util.PagingVO;

public interface AdSendService {

	public List<AdSendVO> listSend(PagingVO vo) throws Exception;

	public int sendListCount() throws DataAccessException;

	public UserVO getSendUserInfo(String id) throws DataAccessException;

	public OrderVO getSendOrderInfo(int ord) throws DataAccessException;

	public PaymentVO getSendPaymentInfo(int pay) throws DataAccessException;


}
