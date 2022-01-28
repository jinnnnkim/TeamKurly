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
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/ShoppingMallManagement/goodsRegister.css">

 	<script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
 	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/ShoppingMallManagement/goodsRegister.js" charset="UTF-8"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품관리 -> 상품등록페이지 -->
	<div class="wrap">
	<div class="bar">상품등록</div>
	<div class="sub-menu">
		<ul>	<!-- css 수정 필요함. 왼쪽으로 이동해야 됨. -->
		<li><a href="${contextPath}/adgoods/moveRegister.do">상품등록</a></li>
		<li><a href="${contextPath}/adgoods/moveRegister.do" class="selected">상품목록</a></li>
		</ul>
	</div>

			
			<!-- ======================================================================================================= -->
			
				<div class="main-content">
					<div class="sub-title">| 상품 기본정보</div>											<!-- 파일 업로드 기능 -->
					<form action="${contextPath }/adgoods/register.do" method="post" id="registerForm" enctype="multipart/form-data">
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
											<option selected="selected" value="none">선택</option>
										</select>
										
									<label>2차 분류</label>
										<select class="category2" name="cateCode">
											<option selected="selected" value="none">선택</option>
										</select>
										
										<span class="ck_msg cateCode_msg">카테고리를 선택해주세요.</span>
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
								<td><input type="text" value="" id="prod_name" name="prod_name"/>
								<span class="ck_msg prod_name_msg">상품명을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>간단설명</th>
								<td>
									<input type="text" value="" id="prod_content" name="prod_content"/>
									<span class="ck_msg prod_content_msg">상품 설명을 입력해주세요.</span>
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
									<input type="text" id="prod_price" name="prod_price">
									<span class="ck_msg prod_price_msg">판매가격을 입력해주세요.</span>
									
								</td>
							</tr>
							<tr>
								<th>할인율</th>
								<td>
									<input type="text" id="prod_discount" name="prod_discount"/>
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
											<label for="prod_img" class="input-file-btn">이미지 찾기</label>
											<!-- <button type="button" class="file_button btn">이미지 찾기</button> -->
											<!-- <input type="file"  id="prod_img" name="file"> -->
											<input type="text" id="prod_img">
											<!-- <div class="preview"><img id="goodsImg" alt="" src="" width="300px" height="300px"></div>	 -->
									</div>	
											<!-- <script>
											document.getElementById("prod_img").onchange = function(){
												
												var reader = new FileReader();
												
												if(this.files && this.files[0]){
													
													reader.onload = function(data){
														document.getElementById("goodsImg").src = data.target.result;
												};
												reader.readAsDataURL(this.files[0]);
												
												};
												
											};
											
											
										$("input[type='file']").on("change", function(e){
												
												let formData = new FormData();
												let fileInput = $('input[name="prod_img"]');
												let fileList = fileInput[0].files;
												let fileObj = fileList[0];
												
												if(!fileCheck(fileObj.name, fileObj.size)){
													return false;
												}
												for(let i=0; i<fileList.length; i++){
													formData.append("prod_img", fileList[i]);
													
													$.ajax({
														
														url : '/adgoods/register.do',	//서버로 요청을 보낼 url
														processData : false,			//서버로 전송할 데이터를 queryString 형태로 변환할지 여부
														contentType : false,			//서버로 전송되는 데이터의 content-type
														data : formData,				//서버로 전송할 데이터
														type : 'POST',					//서버 요청 타입(GET, POST)
														dataType : 'json'				//서버로부터 반환받을 데이터 타입
													});
												}
												
											}); 
											</script> -->
									
								</td>
							</tr>
							<tr>
								<th>알레르기정보</th>
								<td>
								<input type="text" id="prod_allergy" name="prod_allergy">
								<span class="ck_msg prod_allergy_msg">알레르기 정보를 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>주의사항</th>
								<td>
								<input type="text" id="prod_caution" name="prod_caution">
								<span class="ck_msg prod_caution_msg">주의사항을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>배송구분</th>
								<td>
								<input type="text" id="prod_delivery_type" name="prod_delivery_type">
								<span class="ck_msg prod_delivery_type_msg">배송 유형을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>원산지</th>
								<td>
								<input type="text" id="prod_from" name="prod_from">
								<span class="ck_msg prod_from_msg">원산지 정보를 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>안내사항</th>
								<td>
								<input type="text" id="prod_info" name="prod_info">
								<span class="ck_msg prod_info_msg">안내사항을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>포장타입</th>
								<td>
								<input type="text" id="prod_wrap_type" name="prod_wrap_type">
								<span class="ck_msg prod_wrap_type_msg">포장타입을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>유통기한</th>
								<td>
								<input type="date" id="prod_vaild_date" name="prod_vaild_date">
								<span class="ck_msg prod_vaild_date_msg">유통기한을 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>판매단위</th>
								<td>
								<input type="text" id="prod_sell_unit" name="prod_sell_unit">
								<span class="ck_msg prod_sell_unit_msg">판매단위를 입력해주세요.</span>
								</td>
								
							</tr>
							<tr>
								<th>수량</th>
								<td>
								<input type="text" id="prod_quantity" name="prod_quantity">
								<span class="ck_msg prod_quantity_msg">수량을 입력해주세요.</span>
								</td>
								
							</tr>
														
							
						</tbody>
					</table>
					
						<div class="btn-box" style="margin-top: 10px">
						
						<button class="btn btn-lg btn-blue" type="submit" id="saveBtn">저장</button>
						
						<button class="btn btn-lg" onclick="document.location.href='productList.jsp'">목록</button>
						<%-- 삭제버튼 클릭시 상품후기 목록에서 해당상품이 삭제되는 기능 넣기 -> 상품후기목록 페이지로 이동 기능 넣기 --%>
						<button id="GoodRegister_remove" class="btn btn-lg btn-red" onclick="">삭제</button>
					</div>
					</form>
					
					</div>
	
	<script type="text/javascript">
	
	let registerForm = $("#registerForm");
	
	/* 카테고리 */
	let cateList = JSON.parse('${cateList}');
	
	

	let cate1Array = new Array();
	let cate1Obj = new Object();

	
	//1차 분류 셀렉트박스 삽입 데이터 준비
	for(let i=0; i<cateList.length; i++){
		if(cateList[i].level == "1"){
			
		cate1Obj = new Object();
		cate1Obj.cateCode = cateList[i].cateCode;
		cate1Obj.cateName = cateList[i].cateName;
		cate1Array.push(cate1Obj);
	}
}
	//1차 분류 셀렉트박스에 데이터 삽입
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
		
		let cateSelect2 = $("select.category2");
		
		
		//cate2Select 값을 제거함(초기화)
		cateSelect2.children().remove();
		
		$("option:selected", this).each(function(){
			
			let selectVal = $(this).val();	//현재 선택한 cateSelect1 값 저장
			cateSelect2.append("<option value='" + selectVal + "'>전체</option>");	//cateSelect2의 '전체'에 현재 선택한 cateSelect1과 같은 값 부여
			
			//cate2Array의 데이터를 cateSelect2에 추가
			for(let i=0; i<cate2Array.length; i++){
				
				if(selectVal == cate2Array[i].cateParent){
					cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>")
				}
			}
		});
	});
		

	</script> 
	
</body>
</html>