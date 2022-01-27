package kr.co.recipetoyou.main.cartPick.vo;

import org.springframework.stereotype.Component;

//찜하기 테이블 TB_FAV 조회
@Component("pickVO")
public class PickVO {

	private int fav_flag_code;
	private int prod_code;
	private String user_id;
	private int fav_flag;
	
	
	//prodVO 테이블이랑 조인해서 조회
	private ProdVO prodVO;
	
	private String prod_name;
	private String prod_img;
	private int prod_price;
	private int prod_discount;
	
	
	public int getFav_flag_code() {
		return fav_flag_code;
	}
	public void setFav_flag_code(int fav_flag_code) {
		this.fav_flag_code = fav_flag_code;
	}
	public int getProd_code() {
		return prod_code;
	}
	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getFav_flag() {
		return fav_flag;
	}
	public void setFav_flag(int fav_flag) {
		this.fav_flag = fav_flag;
	}

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
