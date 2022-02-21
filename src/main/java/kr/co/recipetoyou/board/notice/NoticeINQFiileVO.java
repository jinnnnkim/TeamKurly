package kr.co.recipetoyou.board.notice;

import org.springframework.stereotype.Component;

@Component("noticeINQFileVO")
public class NoticeINQFiileVO {
	private int inq_file_idx;
	private int inq_notice_idx;
	private String inq_file_name;
	
	public NoticeINQFiileVO() {
		// TODO Auto-generated constructor stub
	}

	public NoticeINQFiileVO(int inq_file_idx, int inq_notice_idx, String inq_file_name) {
		super();
		this.inq_file_idx = inq_file_idx;
		this.inq_notice_idx = inq_notice_idx;
		this.inq_file_name = inq_file_name;
	}

	public int getInq_file_idx() {
		return inq_file_idx;
	}

	public void setInq_file_idx(int inq_file_idx) {
		this.inq_file_idx = inq_file_idx;
	}

	public int getInq_notice_idx() {
		return inq_notice_idx;
	}

	public void setInq_notice_idx(int inq_notice_idx) {
		this.inq_notice_idx = inq_notice_idx;
	}

	public String getInq_file_name() {
		return inq_file_name;
	}

	public void setInq_file_name(String inq_file_name) {
		this.inq_file_name = inq_file_name;
	}
	
	
	

}
