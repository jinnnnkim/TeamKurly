package kr.co.recipetoyou.user.mypage.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import kr.co.recipetoyou.main.cartPick.vo.ProdVO;
import kr.co.recipetoyou.main.order.OrderVO;

@Component("ordingVO")
public class OrdIngVO {
	
	private int ord_ing_code;
	private int prod_code;
	private int ord_code;
	private int quantity;
	private int price;
	private String status;
	private String user_id;
	
	//상품 테이블
	private ProdVO prodVO;
	private String prod_name;
	
	//주문 테이블
	private OrderVO orderVO;
	private Date ord_date;
	
	
	public int getOrd_ing_code() {
		return ord_ing_code;
	}
	public void setOrd_ing_code(int ord_ing_code) {
		this.ord_ing_code = ord_ing_code;
	}
	public int getProd_code() {
		return prod_code;
	}
	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}
	public int getOrd_code() {
		return ord_code;
	}
	public void setOrd_code(int ord_code) {
		this.ord_code = ord_code;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
	
	

	

}