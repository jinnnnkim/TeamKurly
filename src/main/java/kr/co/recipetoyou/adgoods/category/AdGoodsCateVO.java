package kr.co.recipetoyou.adgoods.category;

/*
 *   prodCateCode      varchar2(10)	NOT NULL
    ,cateCode		  NUMBER     NOT NULL
    ,prod_code        number	NOT NULL
    ,cateName         varchar2(50)	NOT NULL
    ,cateParent		  varchar2(50)	
    ,cateGrade		  NUMBER     NOT NULL
 */
public class AdGoodsCateVO {
	
	private int prodCateCode;
	private String cateCode;
	private int prod_code;
	private String cateName;
	private String cateParent;
	private int cateGrade;
	
	
	//추가
	//private String option="";
	//private String keyword="";
	
	
	public AdGoodsCateVO() {
		// TODO Auto-generated constructor stub
	}


	public int getProdCateCode() {
		return prodCateCode;
	}


	public void setProdCateCode(int prodCateCode) {
		this.prodCateCode = prodCateCode;
	}


	public String getCateCode() {
		return cateCode;
	}


	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}


	public int getProd_code() {
		return prod_code;
	}


	public void setProd_code(int prod_code) {
		this.prod_code = prod_code;
	}


	public String getCateName() {
		return cateName;
	}


	public void setCateName(String cateName) {
		this.cateName = cateName;
	}


	public String getCateParent() {
		return cateParent;
	}


	public void setCateParent(String cateParent) {
		this.cateParent = cateParent;
	}


	public int getCateGrade() {
		return cateGrade;
	}


	public void setCateGrade(int cateGrade) {
		this.cateGrade = cateGrade;
	}
	
	
	//검색 타입 데이터 배열 변환
	/*
	 * public String[] getTypeArr() { return option == null? new String[] {} :
	 * option.split(""); }
	 * 
	 * public String getOption() { return option; }
	 * 
	 * public void setOption(String option) { this.option = option; }
	 * 
	 * public void setKeyword(String keyword) { this.keyword = keyword; }
	 */


	

	/*
	 * public String getKeyword() { return keyword; }
	 * 
	 * 
	 * @Override public String toString() { return super.toString() +
	 * "SearchOption [option=" + option + ", keword=" + keyword + "]"; }
	 */
	

}
