package kr.co.recipetoyou.admin.adgoods.stock;


public class AdGoodsStockVO {
	
	private int stock_code;
	private int stock_status;
	private int stock_quantity;
	private int prod_code;
	
	public AdGoodsStockVO() {
		// TODO Auto-generated constructor stub
	}
	

	public AdGoodsStockVO(int stock_code, int stock_status, int stock_quantity,int prod_code) {
		super();
		this.stock_code = stock_code;
		this.stock_status = stock_status;
		this.stock_quantity = stock_quantity;
		this.prod_code = prod_code;
	}



	public int getStock_code() {
		return stock_code;
	}

	public void setStock_code(int stock_code) {
		this.stock_code = stock_code;
	}

	public int getStock_status() {
		return stock_status;
	}

	public void setStock_status(int stock_status) {
		this.stock_status = stock_status;
	}

	public int getStock_quantity() {
		return stock_quantity;
	}

	public void setStock_quantity(int stock_quantity) {
		this.stock_quantity = stock_quantity;
	}

	public int getProd_code() {
		return prod_code;
	}

	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}
	
	

}
