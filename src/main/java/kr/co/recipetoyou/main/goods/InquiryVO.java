package kr.co.recipetoyou.main.goods;

import java.sql.Date;

public class InquiryVO {
	
	private int prod_inq_code;
	private int prod_code;
	private String user_id;
	private String inq_title;
	private String inq_content;
	private Date inq_reg_date;
	
	private int emp_no;
	private String ans_content;
	private Date ans_date;
	
	public InquiryVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public InquiryVO(int prod_inq_code, int prod_code, String user_id, String inq_title, String inq_content,
			Date inq_reg_date, int emp_no, String ans_content, Date ans_date) {
		super();
		this.prod_inq_code = prod_inq_code;
		this.prod_code = prod_code;
		this.user_id = user_id;
		this.inq_title = inq_title;
		this.inq_content = inq_content;
		this.inq_reg_date = inq_reg_date;
		this.emp_no = emp_no;
		this.ans_content = ans_content;
		this.ans_date = ans_date;
	}



	public int getProd_inq_code() {
		return prod_inq_code;
	}
	public void setProd_inq_code(int prod_inq_code) {
		this.prod_inq_code = prod_inq_code;
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
	public String getInq_title() {
		return inq_title;
	}
	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}
	public String getInq_content() {
		return inq_content;
	}
	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}
	public Date getInq_reg_date() {
		return inq_reg_date;
	}
	public void setInq_reg_date(Date inq_reg_date) {
		this.inq_reg_date = inq_reg_date;
	}
	public int getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}
	public String getAns_content() {
		return ans_content;
	}
	public void setAns_content(String ans_content) {
		this.ans_content = ans_content;
	}
	public Date getAns_date() {
		return ans_date;
	}
	public void setAns_date(Date ans_date) {
		this.ans_date = ans_date;
	}
	
	


}
