package kr.co.recipetoyou.main.cartPick;

import org.springframework.stereotype.Component;

@Component("cartPickVO")
public class CartPickVO {

	private String PROD_NAME;
	private String PROD_IMG;
	private int PROD_PRICE;
	private int PROD_DISCOUNT;
	
	public String getPROD_NAME() {
		return PROD_NAME;
	}
	public void setPROD_NAME(String pROD_NAME) {
		PROD_NAME = pROD_NAME;
	}
	public String getPROD_IMG() {
		return PROD_IMG;
	}
	public void setPROD_IMG(String pROD_IMG) {
		PROD_IMG = pROD_IMG;
	}
	public int getPROD_PRICE() {
		return PROD_PRICE;
	}
	public void setPROD_PRICE(int pROD_PRICE) {
		PROD_PRICE = pROD_PRICE;
	}
	public int getPROD_DISCOUNT() {
		return PROD_DISCOUNT;
	}
	public void setPROD_DISCOUNT(int pROD_DISCOUNT) {
		PROD_DISCOUNT = pROD_DISCOUNT;
	}
	
	
	
	
}
