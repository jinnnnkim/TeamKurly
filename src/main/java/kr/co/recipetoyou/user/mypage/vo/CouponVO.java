package kr.co.recipetoyou.user.mypage.vo;

import org.springframework.stereotype.Component;

@Component("couponVO")
public class CouponVO {
	
	private int cp_use_cods;
	private int cp_code;
	private String cp_payment_details;
	

	public int getCp_use_cods() {
		return cp_use_cods;
	}

	public void setCp_use_cods(int cp_use_cods) {
		this.cp_use_cods = cp_use_cods;
	}

	public int getCp_code() {
		return cp_code;
	}

	public void setCp_code(int cp_code) {
		this.cp_code = cp_code;
	}

	public String getCp_payment_details() {
		return cp_payment_details;
	}

	public void setCp_payment_details(String cp_payment_details) {
		this.cp_payment_details = cp_payment_details;
	}
	
	

}
