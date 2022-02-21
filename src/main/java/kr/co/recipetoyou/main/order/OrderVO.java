package kr.co.recipetoyou.main.order;

//<td>${ord.user_id }</td>
//<td>${ord.user_name }</td>
//<td>${ord.user_phone}</td>
//<td>${ord.user_addr }</td>
//<td>${ord.prod_name }</td>
//<td>${ord.prod_content }</td>
//<td>${ord.quantity }</td>
//<td>${ord.price }</td>
//<td>${ord.pay_card_idx }</td>
//<td>${ord.ord_date }</td>
import java.sql.Date;

import org.springframework.stereotype.Component;

import kr.co.recipetoyou.admin.adgoods.AdGoodsVO;
import kr.co.recipetoyou.user.UserVO;

@Component("orderVO")
public class OrderVO {

	private int ord_code;
	private String user_id;
	private Date ord_date;	
	private int prod_code;
	private int quantity;
	private int price;
	private int status;
	
	public OrderVO() {
		
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

	public int getProd_code() {
		return prod_code;
	}

	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
