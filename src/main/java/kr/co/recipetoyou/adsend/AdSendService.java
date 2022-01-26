package kr.co.recipetoyou.adsend;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.recipetoyou.adsend.PaymentVO;
import kr.co.recipetoyou.adsend.OrderVO;
import kr.co.recipetoyou.aduser.AdUserVO;
import kr.co.recipetoyou.util.PagingVO;

public interface AdSendService {

	public List<AdSendVO> listSend(PagingVO vo) throws Exception;

	public int sendListCount() throws DataAccessException;

	public AdUserVO getSendUserInfo(String id) throws DataAccessException;

	public OrderVO getSendOrderInfo(int ord) throws DataAccessException;

	public PaymentVO getSendPaymentInfo(int pay) throws DataAccessException;


}
