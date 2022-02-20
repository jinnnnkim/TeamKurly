package kr.co.recipetoyou.main.goods;

public class CommentVO {
	
	private int comment_code;
	private int prod_code;
	private int subcomm_code;
	private String title;
	private int comment_idx;
	private int comm_category;
	private String user_id;
	private String content;
	//private int bbsID;
	private String result;


	public CommentVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getComment_code() {
		return comment_code;
	}
	public void setComment_code(int comment_code) {
		this.comment_code = comment_code;
	}
	public int getProd_code() {
		return prod_code;
	}
	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}
	public int getSubcomm_code() {
		return subcomm_code;
	}
	public void setSubcomm_code(int subcomm_code) {
		this.subcomm_code = subcomm_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getComment_idx() {
		return comment_idx;
	}
	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}
	public int getComm_category() {
		return comm_category;
	}
	public void setComm_category(int comm_category) {
		this.comm_category = comm_category;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
