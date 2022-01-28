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
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/ShoppingMallManagement/listProduct.css">
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/ShoppingMallManagement/listProduct.js" charset="UTF-8"></script>
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
	</form>	
					
					<div class="list-tools">
						<div class="list-action">
							선택된 상품을
							<select id="batch_sale">
							<option value>::일괄처리::</option>
							<option value="sale_status_on">정상판매</option>
							<option value="sale_status_pause">판매중지</option>
							<option value="sale_status_soldout">품절</option>
							<option value="remove_all">상품삭제</option>
							</select>
												<!-- 처리 클릭시 나타나는 기능 -> onclick기능 넣기! -->
							<button id="goodsList_batch" type="button" class="btn btn-green" onclick="">처리</button>
							<span>|</span>		<!-- 순서변경 클릭시 나타나는 기능 -> onclick기능 넣기! -->
							<button id="goodsListPopup" type="button" class="btn btn-green" onclick="">순서변경</button>
						</div>
						<div class="summary">
							검색된 상품
							<span class="f-bold f-red f-num"></span>
							${cnt }개
							<span>|</span>
							총 등록상품
							<span class="f-bold f-num"></span>
							${cnt }개
						</div>
					</div>
					<table class="table table1 list_top table_line table-center">
						<colgroup>
							<col width="60px">
							<col>
							<col width="100px">
						</colgroup>
						<thead>
							<tr>
							<th>
							<!-- 체크박스 기능 넣기 -->
							<input id="checkboxAllChoice" type="checkbox"/>
							</th>
							<th>상품정보</th>
							<th>판매상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="prod" items="${prodList }">
							<tr>
							<td>
								<input class="chChoice" type="checkbox" value="294"/>
							</td>
							<td style="text-align: left; padding: 5px">
								<div style="float: left; width: 60px">
								<!-- 이미지 넣기 -->
								<img class="img_style" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png">
								</div>	
								<div style="margin-left: 110px">
								<div style="line-height: 28px">
									<a href="${contextPath}/adgoods/goodsInfo.do?code=${prod.prod_code}">
										<b>${prod.prod_name }</b>
									</a>
									<div style="float: right;">
										<a class="a_style">
										<!-- 새창보기아이콘 넣기 -->
										<i></i>
										<span class="f-small">새창보기</span>
										</a>
									</div>
									<div class="div_style1">
										<!-- onclick기능 넣기 (복사기능) -->
										<a class="a_style" onclick="">
										<!-- 복사 아이콘 넣기 -->
										<i></i>
										<span class="f-small">복사</span>
										</a>
									</div>
								</div>
								<div class="div_style2">
									<span class="red_b">분류 : 아동용품 > 아동용품</span>
								</div>
								<div class="div_style2">
									<span class="sky_b">${prod.prod_price }</span>
								</div>
								</div>
							</td>
							<td>
								<span class="lable label-xs lable-blue">판매중</span>
							</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<div class="box-footer">
			<div class="text-center">
				<ul class="pagination">
				 			<!-- 이전prev -->
				 	<c:if test="${pm.prev }">
				 		<li><a href="listProduct.do?page=${pm.startPage-1}">&laquo;</a></li>
				 	</c:if>
				 			<!-- 페이지블럭 -->
					<c:forEach var="idx" begin="${pm.startPage}" end="${pm.endPage}">
								<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
						<li ${pm.vo.page == idx? 'class=active':''}>
						 	<a href="listProduct.do?page=${idx}">${idx}</a>
						</li>				
					</c:forEach>
				 			<!-- 다음next -->
				 	<c:if test="${pm.next && pm.endPage > 0}">
				 		<li><a href="listProduct.do?page=${pm.endPage+1}">&raquo;</a></li>
				 	</c:if>
				 </ul>
			</div>
		</div> 
						
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
	</script>

</body>

</html>