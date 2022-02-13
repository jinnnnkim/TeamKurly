package kr.co.recipetoyou.admin.adgoods.review;

import java.sql.Date;

public class AdgoodsReviewVO {
	
	private int prod_review_code;
	private int prod_code;
	private int review_idx;
	private String title;
	private Date reg_date;
	private String content;
	private String user_id;
	
	public AdgoodsReviewVO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public AdgoodsReviewVO(int prod_review_code, int prod_code, int review_idx, String title, Date reg_date,
			String content, String user_id) {
		super();
		this.prod_review_code = prod_review_code;
		this.prod_code = prod_code;
		this.review_idx = review_idx;
		this.title = title;
		this.reg_date = reg_date;
		this.content = content;
		this.user_id = user_id;
	}



	public int getProd_review_code() {
		return prod_review_code;
	}

	public void setProd_review_code(int prod_review_code) {
		this.prod_review_code = prod_review_code;
	}

	public int getProd_code() {
		return prod_code;
	}

	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	

}
