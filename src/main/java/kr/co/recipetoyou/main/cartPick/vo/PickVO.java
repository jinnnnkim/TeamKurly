package kr.co.recipetoyou.main.cartPick.vo;

import org.springframework.stereotype.Component;

@Component("pickVO")
public class PickVO {

	private String prod_name;
	private String prod_img;
	private int prod_price;
	private int prod_discount;
	
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public String getProd_img() {
		return prod_img;
	}
	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public int getProd_discount() {
		return prod_discount;
	}
	public void setProd_discount(int prod_discount) {
		this.prod_discount = prod_discount;
	}
	
	
	
	
}
