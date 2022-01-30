package kr.co.recipetoyou.main.cartPick.vo;

import org.springframework.stereotype.Component;

//사용자 주소 태이블
@Component("useraddrVO")
public class UserAddrVO {
	
	private String addr_code;
	private String addr;
	private String user_id;
	private String delivery_type;
	
	public String getAddr_code() {
		return addr_code;
	}
	public void setAddr_code(String addr_code) {
		this.addr_code = addr_code;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDelivery_type() {
		return delivery_type;
	}
	public void setDelivery_type(String delivery_type) {
		this.delivery_type = delivery_type;
	}
	
	

}
