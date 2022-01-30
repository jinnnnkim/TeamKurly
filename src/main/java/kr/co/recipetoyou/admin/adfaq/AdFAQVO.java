package kr.co.recipetoyou.admin.adfaq;

import java.sql.Date;

import org.springframework.stereotype.Component;

//faq_code		NUMBER 			NOT NULL 
//,faq_info		varchar2(1500)	NOT NULL 
//,faq_confirm	NUMBER 			NOT NULL 
//,faq_reg_date	DATE	

@Component("adFAQVO")
public class AdFAQVO {

	public AdFAQVO() {
		System.out.println("AdFAQVO 호출");
	}
	
	private int faq_code;
	private String faq_info;
	private int faq_confirm;
	private Date faq_reg_date;
	
	public AdFAQVO(int faq_code, String faq_info, int faq_confirm, Date faq_reg_date) {
		super();
		this.faq_code = faq_code;
		this.faq_info = faq_info;
		this.faq_confirm = faq_confirm;
		this.faq_reg_date = faq_reg_date;
	}
	public int getFaq_code() {
		return faq_code;
	}
	public void setFaq_code(int faq_code) {
		this.faq_code = faq_code;
	}
	public String getFaq_info() {
		return faq_info;
	}
	public void setFaq_info(String faq_info) {
		this.faq_info = faq_info;
	}
	public int getFaq_confirm() {
		return faq_confirm;
	}
	public void setFaq_confirm(int faq_confirm) {
		this.faq_confirm = faq_confirm;
	}
	public Date getFaq_reg_date() {
		return faq_reg_date;
	}
	public void setFaq_reg_date(Date faq_reg_date) {
		this.faq_reg_date = faq_reg_date;
	}
	
	
}
