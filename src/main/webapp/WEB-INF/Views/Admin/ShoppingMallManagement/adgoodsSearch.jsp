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
	<title>상품목록</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/ShoppingMallManagement/adgoodsSearch.css">
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/ShoppingMallManagement/adgoodsSearch.js" charset="UTF-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<!--<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> -->
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품관리 -> 상품목록페이지 -->
	<div class="wrap">
	<div class="bar">상품목록</div>
	<div class="sub-menu">
		<ul>	<!-- css 수정 필요함. 왼쪽으로 이동해야 됨. -->
		<li><a href="${contextPath}/adgoods/moveRegister.do">상품등록</a></li>
		<li><a href="${contextPath}/adgoods/listProduct.do" class="selected">상품목록</a></li>
		</ul>
	</div>
	
	<%-- <form id="searchForm" action="${contextPath}/product/listCategory.do" method="post"> --%>
	<form id="searchForm" method="post">
	<input type="hidden" name="page" value="${pageMaker.vo.page}">
	<input type="hidden" name="pageSize" value="${pageMaker.vo.pageSize}">
	<input type="hidden" value="${pageMaker.vo.keyword }">
		<div class="main-content">
						<table class="table table1 table_line">
						<colgroup>
						<col width="120px">
						<col>
						</colgroup>
						<tbody>
							<tr>
							<th>판매상태</th>
							<td style="text-align: left;"><!-- radio기능 넣어야 됨 -->
								<label class="lbl">
								<input type="radio" name="sale_status" value="all" checked/>전체
								</label>
								<label class="lbl">
								<input type="radio" name="sale_status" value="on"/>정상판매
								</label>
								<label class="lbl">
								<input type="radio" name="sale_status" value="pause" />판매중지
								</label>
								<label class="lbl">
								<input type="radio" name="sale_status" value="soldout" />품절
								</label>
							</td>
							</tr>
							
							<tr>
							<th>상품분류</th>
							<td style="text-align: left;">
								
								<label>1차 분류</label>
								<select class="category1">
									<option selected="selected" value="none">선택</option>
								</select>
								
								<label>2차 분류</label>
								<select class="category2">
									<option selected="selected" value="none">선택</option>
								</select>
								
								<label>3차 분류</label>
								<select class="category3" name="cateCode">
									<option selected="selected" value="none">선택</option>
								</select>

							</td>
							</tr>
							
							<tr>
								<th>상품명</th>
								<td style="text-align: left;">
									<input type="text" id="keywordInput" name="keyword" style="width: 95%" value="${pageMaker.vo.keyword}"/>
								</td>
							</tr>
						</tbody>
						</table>
					
						<div class="btn-box">	
							<button type="submit" id="searchBtn" class="btn btn-sm btn-blue">검색</button>
							<button type="button" class="btn btn-sm" onclick="document.location.href='productList.jsp'">처음으로</button>
	
						</div>
	</div>
	</form>	
	</div>				
					
						
	
	<!-- 순서변경버튼 클릭시 나타나는 alert창 -> 완성하지 못했음. -->
	<div id="orderChange_frame" class="popUpDiv1" style="display: none">
	<div class="popUpDiv2">
		<span class="ui-dialog-title">상품순서변경</span>
		<button id="orderChange_frameClose" type="button" class="closeBtn" role="button" title="Close">
			X
		</button>
	</div>
	</div>
	
	<div class="popUpheight">
	<div class="list-action">
		<!-- 위로, 아래로, 저장 -> 각각 onclick기능 버튼 기능 넣기 -->
		<button type="button" class="btn btn-green" onclick="">위로</button>
		<button  type="button" class="btn btn-green" onclick="">아래로</button>
		<div style="float: right;">
			<button type="button" class="btn btn-red" onclick="">저장</button>
		</div>
	</div>
	</div>
	
	<!-- <div class="list-action" style="margin-top: 10px">
		위로, 아래로, 저장 -> 각각 onclick기능 버튼 기능 넣기
		<button type="button" class="btn btn-green" onclick="">위로</button>
		<button  type="button" class="btn btn-green" onclick="">아래로</button>
		<div style="float: right;">
			<button type="button" class="btn btn-red" onclick="">저장</button>
		</div>
	</div> -->
	
	</div>
	
	
	<script type="text/javascript">
	/* 카테고리 */
	let cateList = JSON.parse('${cateList}');
			
	let searchForm = $("#searchForm");

			let cate1Array = new Array();
			let cate2Array = new Array();
			let cate3Array = new Array();

			let cate1Obj = new Object();
			let cate2Obj = new Object();
			let cate3Obj = new Object();	

			let cateSelect1 = $(".category1");
			let cateSelect2 = $(".category2");
			let cateSelect3 = $(".category3");

			//카테고리 배열 초기화 메서드
			function makeCateArray(obj, array, cateList, cateGrade){
				for(let i = 0; i<cateList.length; i++){
					if(cateList[i].cateGrade == cateGrade){
						obj = new Object();
						
						obj.cateName = cateList[i].cateName;
						obj.cateCode = cateList[i].cateCode;
						obj.cateParent = cateList[i].cateParent;
							
						array.push(obj);
					}
				}
			};		

			/*배열 초기화*/
			makeCateArray(cate1Obj, cate1Array, cateList, 1);
			makeCateArray(cate2Obj, cate2Array, cateList, 2);
			makeCateArray(cate3Obj, cate3Array, cateList, 3);


			/* 1차 분류 */
			for(let i = 0; i < cate1Array.length; i++){
				
				cateSelect1.append("<option value='"+cate1Array[i].cateName+"'>"+cate1Array[i].cateName+"</option>");
				
			}

			/* 2차 분류 */	

			$(cateSelect1).on("change",function(){
					
				let select1 = $(this).find("option:selected").val();	
					
				cateSelect2.children().remove();
					
				cateSelect2.append("<option value='none'>선택</option>");
					
				for(let i = 0; i < cate2Array.length; i++){
					if(select1 == cate2Array[i].cateParent){
						cateSelect2.append("<option value='"+cate2Array[i].cateName+"'>" + cate2Array[i].cateName + "</option>");	
					}
				}// for
					
			});

			/* 3차 분류 */
			$(cateSelect2).on("change",function(){
					
				let select2 = $(this).find("option:selected").val();
					
				cateSelect3.children().remove();
					
				cateSelect3.append("<option value='none'>선택</option>");		
					
				for(let i = 0; i < cate3Array.length; i++){
					if(select2 == cate3Array[i].cateParent){
						cateSelect3.append("<option value='"+cate3Array[i].cateName+"'>" + cate3Array[i].cateName + "</option>");	
					}
				}
			});
			
			//상품 등록 성공 이벤트
			 $(document).ready(function(){
			 	
			 	
			 	let goodsResult = '<c:out value="${goodsResult}"/>';
			 	checkResult(goodsResult);
			 	function checkResult(result){
			 		
			 		if(result == ''){
			 		
			 		return;
			 	}
			 	
			 	alert("상품'"+goodsResult+"'을 등록하였습니다.");
			 	}
			 	
			 	//검색 옵션
			 	const selectOption = '<c:out value="${pageMaker.vo.type}"/>';
			 	if(selectOption != ""){
			 		$("select[name='type']").val(selectOption).attr("selected", "selected");
			 	}
			 	
			 			
			});
			
			//이미지 삽입
				 $(".image_wrap").each(function(i, obj){
					
					const bobj = $(obj);
					if(bobj.data("prod_code")){
						
						const uploadPath = bobj.data("path");
						const uuid = bobj.data("uuid");
						const fileName = bobj.data("filename");
						
						const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
						
						$(this).find("img").attr('src', '${contextPath}/adgoods/getImageInfo.do?fileName=' + fileCallPath);
						
						}else {
							$(this).find("img").attr('src', '/recipetoyou/Resources/Admin/Img/SubgoodsImg/ready.jpg');
						}
				});	 
	</script>

</body>

</html>