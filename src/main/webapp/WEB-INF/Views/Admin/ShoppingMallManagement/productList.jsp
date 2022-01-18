<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품목록</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/productList.css">
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품관리 -> 상품목록페이지 -->
	<div class="wrap">
	<div class="bar">상품목록</div>
	<div class="sub-menu">
		<ul>	<!-- css 수정 필요함. 왼쪽으로 이동해야 됨. -->
		<li><a href="productRegister.jsp">상품등록</a></li>
		<li><a href="productList.jsp" class="selected">상품목록</a></li>
		</ul>
	</div>
	<table align="center">
		<tbody>
			<tr>
				<td align="left">
				<div class="main-content">
					<form name="RADFrmGoodsSearch" action=""> <!-- action기능 넣어야 됨 (검색버튼 클릭시)-->	
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
							<td style="text-align: left;"><!-- onchange기능 넣어야 됨 - 상품분류 1차 2차 3차 기능-->
								<select name="category" id="shop1" onchange="">
								<option value>1차 분류</option>
								<!-- 적절한 value값 넣어야 됨 -임시로 넣었음.  -->
								<option value="1">패션의류</option>
								<option value="2">아동용품</option>
								<option value="3">식품</option>
								<option value="4">문구/오피스</option>
								<option value="5">잡화/뷰티</option>
								<option value="6">가구/홈/데코</option>
								<option value="7">가전/디지털</option>
								<option value="8">도서/취미</option>
								<option value="9">반려동물용품</option>
								<option value="10">여행/레저</option>
								<option value="11">온라인쿠폰/상품권</option>
								</select><!-- onchange기능 넣어야 됨 -->
								<select name="category2" id="shop2" onchange="">
								<option value>2차 분류</option>
								</select name="category3" id="shop3">
								<select>
								<option value>3차 분류</option>
								</select>
							</td>
							</tr>
							
							<tr>
								<th>상품명</th>
								<td style="text-align: left;">
									<input type="text" name="goods_name" style="width: 95%"/>
								</td>
							</tr>
						</tbody>
						</table>
						<div class="btn-box">	
							<button type="submit" class="btn btn-sm btn-blue">검색</button>
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
							<span class="f-bold f-red f-num">39</span>
							개
							<span>|</span>
							총 등록상품
							<span class="f-bold f-num">39</span>
							개
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
									<a href="productRegister.jsp">
										<b>아동 코스프레 복장</b>
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
									<span class="sky_b">가격 : 29,900원</span>
								</div>
								</div>
							</td>
							<td>
								<span class="lable label-xs lable-blue">판매중</span>
							</td>
							</tr>
							
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
									<a href="productRegister.jsp">
										<b>아동 코스프레 복장</b>
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
									<span class="sky_b">가격 : 29,900원</span>
								</div>
								</div>
							</td>
							<td>
								<span class="lable label-xs lable-blue">판매중</span>
							</td>
							</tr>
							
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
									
									<a href="productRegister.jsp">
										<b>아동 코스프레 복장</b>
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
									<span class="sky_b">가격 : 29,900원</span>
								</div>
								</div>
							</td>
							<td>
								<span class="lable label-xs lable-blue">판매중</span>
							</td>
							</tr>
							
						</tbody>
					</table>
					
						<div id="paging">
							<ul class="paging-number">
								<li> <%-- href: 처음페이지로 이동해야 됨 --%>
									<a href="#">	
										<img alt="처음" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_pprev.png" width="10" height="10">
									</a>
								</li>
								<li><%-- href: 이전페이지로 이동해야 됨 --%>
									<a href="">	
										<img alt="이전" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_prev.png" width="10" height="10">
									</a>
								</li>
								<li class="num">
									<a href="" class="on">1</a>
								</li>
								<li class="num">
									<a href="" >2</a>
								</li>
								<li class="num">
									<a href="" >3</a>
								</li>
								<li class="num">
									<a href="" >4</a>
								</li>
								<li class="num">
									<a href="" >5</a>
								</li>
								<li class="num">
									<a href="" >6</a>
								</li>
								<li class="num">
									<a href="" >7</a>
								</li>
								<li class="num">
									<a href="" >8</a>
								</li>
								<li class="num">
									<a href="" >9</a>
								</li>
								<li class="num">
									<a href="" >10</a>
								</li>
								
								<li><%-- href: 다음페이지로 이동해야 됨 --%>
									<a href="">
										<img alt="다음" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_next.png" width="10" height="10">
									</a>
								</li>
								<li><%-- href: 마지막페이지로 이동해야 됨 --%>
									<a href="">
										<img alt="마지막" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_nnext.png" width="10" height="10">
									</a>
								</li>
							</ul>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	
	<!-- 순서변경버튼 클릭시 나타나는 alert창 -> 완성하지 못했음. -->
	<div id="orderChange_frame" class="popUpDiv1" style="display: none">
	<div class="popUpDiv2">
		<span class="ui-dialog-title">상품순서변경</span>
		<button id="orderChange_frameClose" type="button" class="closeBtn" role="button" title="Close">
			X
		</button>
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
	
	<div class="goods_sortable_container" style="padding-top: 10px;">
		<ul id="goods_sortable" class="ui-sortable">
		<li class="sort-item ui-sortable-handle">
			<div style="float: left; width: 30px">
				<input type="checkbox" name="no[]" value="294" style="margin-top: 5px;"/>
			</div>
			<div style="float: left; width: 40px">
				<!-- 이미지 넣기 -->
				<img src="#" class="popup_image">
			</div>
			<div style="margin-left: 40px">
				<div style="line-height: 25px">
					오피스룩
					<span>|</span>
					19,900원
				</div>
			</div>
		</li>
		
		<li class="sort-item ui-sortable-handle">
			<div style="float: left; width: 30px">
				<input type="checkbox" name="no[]" value="294" style="margin-top: 5px;"/>
			</div>
			<div style="float: left; width: 40px">
				<!-- 이미지 넣기 -->
				<img src="#" class="popup_image">
			</div>
			<div style="margin-left: 40px">
				<div style="line-height: 25px">
					정장세트
					<span>|</span>
					199,900원
				</div>
			</div>
		</li>
		
		<li class="sort-item ui-sortable-handle">
			<div style="float: left; width: 30px">
				<input type="checkbox" name="no[]" value="294" style="margin-top: 5px;"/>
			</div>
			<div style="float: left; width: 40px">
				<!-- 이미지 넣기 -->
				<img src="#" class="popup_image">
			</div>
			<div style="margin-left: 40px">
				<div style="line-height: 25px">
					셔츠
					<span>|</span>
					29,900원
				</div>
			</div>
		</li>
		</ul>
	</div>
	
	<div class="list-action" style="margin-top: 10px">
		<!-- 위로, 아래로, 저장 -> 각각 onclick기능 버튼 기능 넣기 -->
		<button type="button" class="btn btn-green" onclick="">위로</button>
		<button  type="button" class="btn btn-green" onclick="">아래로</button>
		<div style="float: right;">
			<button type="button" class="btn btn-red" onclick="">저장</button>
		</div>
	</div>
	
	</div>
	
	</div>
	</div>
	
	<script type="text/javascript">
		//체크박스 전체선택 기능
		$(function () {
			$('#checkboxAllChoice').click(function () {
				var checked = $('#checkboxAllChoice').is(':checked');
				
				if(checked)
					$('input.chChoice:checkbox').prop('checked',true);
				else 
					$('input.chChoice:checkbox').prop('checked',false);
			});
		});
		
		$(document).ready(function() {
			//처리버튼 클릭시 나타나는 alert창
			$('#goodsList_batch').click(function(){
				alert('처리할 상품을 선택하세요.');
			});
			
			//옵션등록버튼을 클릭하면 보이는 alert창의 닫기버튼 누르면 alert창이 사라짐
			$('#orderChange_frameClose').click(function() {
				$('#orderChange_frame').hide();
			});  
		 	
		 	//순서변경 버튼을 클릭하면 alert창 나타남
			$('#goodsListPopup').click(function() {
				$('#orderChange_frame').show();
				//$("#is_required_frame").attr("style","display:table-row");
			}); 
		});
		
	</script>
	
</body>
</html>