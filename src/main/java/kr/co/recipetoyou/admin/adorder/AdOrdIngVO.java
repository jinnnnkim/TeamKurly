package kr.co.recipetoyou.admin.adorder;

import org.springframework.stereotype.Component;

@Component("adOrdIngVO")
public class AdOrdIngVO {

	private int ord_ing_code;
	private int prod_code;
	private int ord_code;
	private String user_id;
	private int quantity;
	private int price;
	private String status;
	
	public AdOrdIngVO() {
		// TODO Auto-generated constructor stub
	}
	
	public AdOrdIngVO(int ord_ing_code, int prod_code, int ord_code, String user_id, int quantity, int price,
			String status) {
		super();
		this.ord_ing_code = ord_ing_code;
		this.prod_code = prod_code;
		this.ord_code = ord_code;
		this.user_id = user_id;
		this.quantity = quantity;
		this.price = price;
		this.status = status;
	}

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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	
	
}
