package kr.co.recipetoyou.main.inqreview;

import java.sql.Date;

public class InqAnswerVO {

	private int prod_inq_code;
	private int emp_no;
	private String ans_content;
	private Date ans_date;
	
	public InqAnswerVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getProd_inq_code() {
		return prod_inq_code;
	}
	public void setProd_inq_code(int prod_inq_code) {
		this.prod_inq_code = prod_inq_code;
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
