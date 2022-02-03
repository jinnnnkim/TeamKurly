package kr.co.recipetoyou.admin.adpayment;

import org.springframework.stereotype.Component;

@Component("adPaymentCardRegVO")
public class AdPaymentCardRegVO {

	private String pay_card_idx;
	private String user_id;
	private String pay_pw;
	private int pay_code;
	
	public AdPaymentCardRegVO() {
		// TODO Auto-generated constructor stub
	}
	
	public AdPaymentCardRegVO(String pay_card_idx, String user_id, String pay_pw, int pay_code) {
		super();
		this.pay_card_idx = pay_card_idx;
		this.user_id = user_id;
		this.pay_pw = pay_pw;
		this.pay_code = pay_code;
	}

	public String getPay_card_idx() {
		return pay_card_idx;
	}

	public void setPay_card_idx(String pay_card_idx) {
		this.pay_card_idx = pay_card_idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPay_pw() {
		return pay_pw;
	}

	public void setPay_pw(String pay_pw) {
		this.pay_pw = pay_pw;
	}

	public int getPay_code() {
		return pay_code;
	}

	public void setPay_code(int pay_code) {
		this.pay_code = pay_code;
	};
	
	
}
