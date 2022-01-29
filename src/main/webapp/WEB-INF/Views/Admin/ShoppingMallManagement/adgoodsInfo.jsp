<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }"/>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>상품 등록</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/ShoppingMallManagement/adgoodsInfo.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/ShoppingMallManagement/adgoodsInfo.js" charset="UTF-8"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품관리 -> 상품등록페이지 -->
	<div class="wrap">
	<div class="bar">상품등록</div>
	<div class="sub-menu">
		<ul>	<!-- css 수정 필요함. 왼쪽으로 이동해야 됨. -->
		<li><a href="${contextPath}/adgoods/moveRegister.do">상품등록</a></li>
		<li><a href="${contextPath}/adgoods/listProduct.do" class="selected">상품목록</a></li>
		</ul>
	</div>
	<table align="center">
	<tbody>
		<tr>
			<td align="left">
				
				<div class="main-content">
					<div class="sub-title">| 상품 기본정보</div>
					<%-- <form>태그에 action기능 넣어야 됨. --%>
					<form action="">
					<table class="table table1 line_top table_line">
						<colgroup>
							<col width="120px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>상품분류</th>
								<td>
									<label>1차 분류</label>
										<select class="category1">
											<option selected="selected" value="none"></option>
										</select>
								
									<label>2차 분류</label>
										<select class="category2">
											<option selected="selected" value="none" name="cateCode"></option>
										</select>
								
											
									<div class="helper blue mt5">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										카테고리 설정은	 <%-- <a>태그의 상품분류설정은 생략하기로 했음 --%>
										<a href="#" class="helper">[상품분류설정]</a>
										에서 설정가능합니다.
									</div>
								</td>
							</tr>
							<tr>
								<th>상품명</th>
								<td><input type="text" value="${prodVO.prod_name }"/></td>
							</tr>
							<tr>
								<th>간단설명</th>
								<td>
									<input type="text" value="${prodVO.prod_content }"/>
									<div class="helper blue mt5">
										<span class="red"><span id="ex_byte">0</span>/120Byte</span>
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										미입력시 노출되지 않습니다.
									</div>
								</td>
							</tr>
							<tr>
								<th>판매가격</th>
								<td>
									<input type="text" value="${prodVO.prod_price }"/>
								</td>
							</tr>
							<tr>
								<th>할인율</th>
								<td>
									<input type="text" value="${prodVO.prod_discount }">
									<div class="helper blue mt5">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										할인을 하지 않으실 경우 판매가격만 적어 주시면 됩니다.
									</div>
									
								</td>
							</tr>
							<tr>
								<th>상품이미지</th>
								<td>
									<div class="file_div">
										<label for="goodsImg">이미지</label>
										<div class="goodsImg">
											<img alt="" src="">
										</div>
										<button type="button" class="file_button btn">이미지 찾기</button>
										<input type="file" id="fileItem" name="prod_img" onchange="readURL(this,0)">
										<div class="preview"><img alt="" src=""></div>
										
									</div>
								</td>
							</tr>
							<tr>
								<th>알레르기정보</th>
								<td>
								<input type="text" value="${prodVO.prod_allergy}" name="prod_allergy">
								
								</td>
								
							</tr>
							<tr>
								<th>주의사항</th>
								<td>
								<input type="text" value="${prodVO.prod_caution}" name="prod_caution">
								
								</td>
								
							</tr>
							<tr>
								<th>배송구분</th>
								<td>
								<input type="text" value="${prodVO.prod_delivery_type}" name="prod_delivery_type">
								
								</td>
								
							</tr>
							<tr>
								<th>원산지</th>
								<td>
								<input type="text" value="${prodVO.prod_from}" name="prod_from">
								
								</td>
								
							</tr>
							<tr>
								<th>안내사항</th>
								<td>
								<input type="text" value="${prodVO.prod_info}" name="prod_info">
								
								</td>
								
							</tr>
							<tr>
								<th>포장타입</th>
								<td>
								<input type="text" value="${prodVO.prod_wrap_type}" name="prod_wrap_type">
								
								</td>
								
							</tr>
							<tr>
								<th>유통기한</th>
								<td>
								<input type="text" value="${prodVO.prod_vaild_date}" name="prod_vaild_date">
								
								</td>
								
							</tr>
							<tr>
								<th>판매단위</th>
								<td>
								<input type="text" value="${prodVO.prod_sell_unit}" name="prod_sell_unit">
								
								</td>
								
							</tr>
							<tr>
								<th>수량</th>
								<td>
								<input type="text" value="${prodVO.stock_quantity}" name="stock_quantity">
								
								</td>
								
							</tr>
							
							
							
						</tbody>
					</table>
					

					</form>
					
					<div class="btn-box" style="margin-top: 10px">
						<%-- 1)버튼 클릭시 저장하시겠습니까 alert창이 나타나는 기능 추가해야 됨(상품분류기능을 생략했기때문에 '1차분류입력하세요' alert창도 생략해도 될것 같음.)
						 	 2)저장버튼 클릭시 상품이 저장되는 기능 넣기  -> 상품목록 페이지로 이동 기능 넣기  --%>
						<button class="btn btn-lg btn-blue" onclick="">저장</button>
						
						<button class="btn btn-lg" 
						onclick="document.location.href='productList.jsp'">목록</button>
						<%-- 삭제버튼 클릭시 상품후기 목록에서 해당상품이 삭제되는 기능 넣기 -> 상품후기목록 페이지로 이동 기능 넣기 --%>
						<button id="GoodRegister_remove" class="btn btn-lg btn-red" onclick="">삭제</button>
					</div>
					
					<!-- 옵션정보 테이블의 옵션등록버튼 클릭시, 또는 추가옵션 테이블의 추가옵션등록버튼 클릭시 나타나는 팝업창 -->
					
				</div>
			</td>
		</tr>
	</tbody>
	</table>
	</div>


	<script type="text/javascript">
	/* 카테고리 */
	let cateList = JSON.parse('${cateList}');
			
	//let searchForm = $("#searchForm");

	let cate1Array = new Array();
	let cate1Obj = new Object();


	for(let i=0; i<cateList.length; i++){
		if(cateList[i].level == "1"){
			
		cate1Obj = new Object();
		cate1Obj.cateCode = cateList[i].cateCode;
		cate1Obj.cateName = cateList[i].cateName;
		cate1Array.push(cate1Obj);
	}
}
	let cateSelect1 = $("select.category1");
	
	for(let i=0; i<cate1Array.length; i++){
		cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
	}
	
	$(document).on("change", "select.category1", function(){
		let cate2Array = new Array();
		let cate2Obj = new Object();
		
		//2차 분류 셀렉트박스에 삽입할 데이터 준비
		for(let i=0; i<cateList.length; i++){
			
			if(cateList[i].level == "2"){
				
				cate2Obj = new Object();	//초기화
				cate2Obj.cateCode = cateList[i].cateCode;
				cate2Obj.cateName = cateList[i].cateName;
				cate2Obj.cateParent = cateList[i].cateParent;
				
				cate2Array.push(cate2Obj);
			}
		}
		
		let cateSelect2 = $("select.category2")
		
		for(let i=0; i<cate2Array.length; i++){
			cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>")
		}
	});
	
		
</script>
	

		<!-- <button value="팝업창호출" onclick="showPopup()">지도키관리</button>
		 <script
			language="javascript">
			 function showPopup() { window.open("MapKey.jsp", "a", "width=700, height=500, left=100, top=50"); }
		  -->
	
	
	
	
</body>
</html>