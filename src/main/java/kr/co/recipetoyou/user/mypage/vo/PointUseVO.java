package kr.co.recipetoyou.user.mypage.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("pointuseVO")
public class PointUseVO {
	
	private int point_details_code;
	private Date accum_date;
	private Date use_date;
	private int use_flag;
	private String point_content;
	private PointVO pointVO;
	private int point;
	
	public int getPoint_details_code() {
		return point_details_code;
	}
	public void setPoint_details_code(int point_details_code) {
		this.point_details_code = point_details_code;
	}
	public Date getAccum_date() {
		return accum_date;
	}
	public void setAccum_date(Date accum_date) {
		this.accum_date = accum_date;
	}
	public Date getUse_date() {
		return use_date;
	}
	public void setUse_date(Date use_date) {
		this.use_date = use_date;
	}
	public int getUse_flag() {
		return use_flag;
	}
	public void setUse_flag(int use_flag) {
		this.use_flag = use_flag;
	}
	public String getPoint_content() {
		return point_content;
	}
	public void setPoint_content(String point_content) {
		this.point_content = point_content;
	}
	public PointVO getPointVO() {
		return pointVO;
	}
	public void setPointVO(PointVO pointVO) {
		this.pointVO = pointVO;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	



}
