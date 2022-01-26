package kr.co.recipetoyou.util;

import java.util.Arrays;


import kr.co.recipetoyou.util.PageMaker;

public class PagingVO {
	//페이지 정보, 페이지 크기 정보를 저장하는 객체
		private int page;
		private int pageSize;
		private int rowStart;
		private int rowEnd;
		private int total;	//전체 상품 수
		private PageMaker pmake;	//현재 페이지, 페이지당 상품 표시 수 정보
		
		private String keyword;	//검색할 키워드
		//private String type;	//검색할 타입
		//private String[] typeArr;	//검색 타입 배열
		 
		public PagingVO() {
			this.page = 1;
			this.pageSize = 10;
		}
		
		public PagingVO(int page, int pageSize) {
			this.page = page;
			this.pageSize = pageSize;
		}

		public int getPage() {
			return page;
		}

		public void setPage(int page) {
			if(page <=0) {
				this.page = 1;
				return;
			}
			this.page = page;
		}

		public int getPageSize() {
			return pageSize;
		}

		public void setPageSize(int pageSize) {
			if(pageSize <=0 || pageSize > 100) {
				this.pageSize = 10;			
				return;
			}
			this.pageSize = pageSize;			
		}
		
		//페이징처리 시작하는 값생성
		//멤버변수가 아니지만 gettet와 setter를 생성하면 Mapper에서 접근가능하다.
		//Mapper에서 사용하는 법 #{pageStart}
		public int getPageStart() {
			return (this.page - 1)*this.pageSize;
		}
	
		
		public int getRowStart() {
			rowStart = ((page - 1) * pageSize) + 1;
			return rowStart;
		}
		 
		public int getRowEnd() {
			rowEnd = rowStart + pageSize - 1;
			return rowEnd;
		}
		
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		/*
		 * public String getType() { return type; } public void setType(String type) {
		 * this.type = type; } public String[] getTypeArr() { return typeArr; } public
		 * void setTypeArr(String[] typeArr) { this.typeArr = typeArr; }
		 */
		
		//toString()
		@Override
		public String toString() {
			System.out.println("page"+page);	
			System.out.println("pageSize"+pageSize);
		return "PagingVO [page=" + page + ", pageSize=" + pageSize + ",keyword=" + keyword + "]";
		}

}

