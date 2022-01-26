package kr.co.recipetoyou.adsend;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("orderVO")
public class OrderVO {

	private int ord_code;
	private String user_id;
	private Date ord_date;
	
	public OrderVO() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderVO(int ord_code, String user_id) {
		super();
		this.ord_code = ord_code;
		this.user_id = user_id;
	}
	public int getOrd_code() {
		return ord_code;
	}
	public void setOrd_code(int ord_code) {
		this.ord_code = ord_code;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
}
