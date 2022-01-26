package kr.co.recipetoyou.adsend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kr.co.recipetoyou.main.goods.PaymentVO;
import kr.co.recipetoyou.main.goods.ProdVO;
import kr.co.recipetoyou.main.order.OrderVO;
import kr.co.recipetoyou.user.UserVO;
import kr.co.recipetoyou.util.PagingVO;

@Service("sendService")
public class AdSendServiceImpl implements AdSendService {

	@Autowired
	private AdSendDAO sendDAO;
	
	//전체 발송내역 조회
	@Override
	public List<AdSendVO> listSend(PagingVO vo) throws Exception {		
		List<AdSendVO> sendList = sendDAO.sendListPaging(vo);	
		return sendList;
	}

	//발송내역 수 조회
	@Override
	public int sendListCount() throws DataAccessException {
		return sendDAO.sendListCount();
	}
		
	//회원 상세 정보 조회
	@Override
	public UserVO getSendUserInfo(String id) throws DataAccessException {		
		return sendDAO.readUserSend(id);
	}	
	
	//주문 내역 목록 조회
	@Override
	public OrderVO getSendOrderInfo(int ord) throws DataAccessException {		
		return sendDAO.readOrderSend(ord);
	}
	
	//결제 내역 목록 조회
	@Override
	public PaymentVO getSendPaymentInfo(int pay) throws DataAccessException {		
		return sendDAO.readPaymentSend(pay);
	}
	
}
