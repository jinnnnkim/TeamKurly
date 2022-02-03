package kr.co.recipetoyou.main.cartPick;

import org.springframework.stereotype.Component;

/*
 create table tb_cart(
    cart_code           varchar2(10)	NOT NULL 
    ,prod_code          varchar2(10)	NOT NULL 
    ,prod_quantity      varchar2(20)	NOT NULL 
    ,user_id            varchar2(30)	NOT NULL 
    ,primary key (cart_code)
);

 */

@Component("cartPickVO")
public class CartPickVO__ {
	
	private String cart_code;
	private String prod_code;
	private String prod_quantity;
	private String user_id;
	
	public CartPickVO__() {
		// TODO Auto-generated constructor stub
	}

	public CartPickVO__(String cart_code, String prod_code, String prod_quantity, String user_id) {
		super();
		this.cart_code = cart_code;
		this.prod_code = prod_code;
		this.prod_quantity = prod_quantity;
		this.user_id = user_id;
	}

	public String getCart_code() {
		return cart_code;
	}

	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}

	public String getProd_code() {
		return prod_code;
	}

	public void setProd_code(String prod_code) {
		this.prod_code = prod_code;
	}

	public String getProd_quantity() {
		return prod_quantity;
	}

	public void setProd_quantity(String prod_quantity) {
		this.prod_quantity = prod_quantity;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
