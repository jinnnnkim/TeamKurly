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
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/ShoppingMallManagement/goodsRegister.js" charset="UTF-8"></script>
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
		<li><a href="${contextPath}/adgoods/moveRegister.do" class="selected">상품목록</a></li>
		</ul>
	</div>
	<table align="center">
	<tbody>
		<tr>
			<td align="left">
				<!-- 관련상품테이블에서 상품추가버튼 클릭시 나타나는 팝업창(등록폼)  -->
				<div id="goodsAdd_frame" style="display: none;">
					<div class="titlebar">
					<p id="sub-title">
						| 상품선택
						<span id="tip">+원하시는 상품을 선택하세요.</span>
					</p>
					<p style="position: absolute; top: 0; right: 0">
						<!-- onclick시 창 닫기 기능 넣기  -->
						<div class="goods_close" style="float: right;"><b>X</b></div>
					</p>
					</div>
					<!-- action기능 넣기 /  onsubmit="return false" 기능 필요없으면 삭제하기-->
					<form id="goodsSearchFrm" action="" onsubmit="return false">
						<!-- hidden 기능 필요없으면 삭제하기 -->
						<input type="hidden" name="mode" value="goods_list"/>
						<input type="hidden" name="page" value=""/>
						<!-- width=100% cellpadding="5" cellspacing="0" border="1"  bordercolor="#dedede" style="table-layout:fixed -->
						<table class="table1 addTable table_line">
							<colgroup>
							<col width="100">
							<col>
							</colgroup>
							<tbody>
								<tr>
								<td class="gray_bg">상품분류</td>
								<td>
									<label>1차 분류</label>
								<select class="category1">
									<option>선택</option>
								</select>
								
								<label>2차 분류</label>
								<select class="category2">
									<option>선택</option>
								</select>
								
								<label>3차 분류</label>
								<select class="category3" name="cateCode">
									<option>선택</option>
								</select>
								</td>
								</tr>
								<tr>
								<td class="gray_bg">판매상태</td>
								<td>
									<label class="lbl">
										<input type="radio" name="sale_status" value checked/>전체
									</label>
									<label class="lbl">
										<input type="radio" name="sale_status" value="on" />정상판매
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
								<td class="gray_bg">정렬</td>
								<td>
									<label class="lbl">
										<input type="radio" name="sort" value="wdesc" checked/>상품등록일 최근 순
									</label>
									<label class="lbl">
										<input type="radio" name="sort" value="wasc" />상품등록일 오래된 순
									</label>
									<label class="lbl">
										<input type="radio" name="sort" value="pdesc" />판매가격 높은 순
									</label>
									<label class="lbl">
										<input type="radio" name="sort" value="pasc" />판매가격 낮은 순
									</label>
								</td>
								</tr>
								<tr>
								<td class="gray_bg">상품명</td>
								<td>
									<input type="text" name="subject" id="subject" class="simpleform"/>
									<!-- onclick 기능 넣기 -->
									<button type="button" class="btn btn-sm btn-blue" onclick="">검색</button>
								</td>
								</tr>
							</tbody>
						</table>
						<br/>
						
						<table id="popupGoodsTable" class="table1 addTable table_line ">
							<thead>
								<colgroup>
								<col width="120px">
								<col width="180px">
								<col width="*">
								<col width="80px">
							</colgroup>
							<tr>
								<th>상품이미지</th>
								<th>상품명</th>
								<th>분류</th>	<!-- checkbox기능 넣기 -->
								<th>선택<input type="checkbox" id="popupCheckboxAllChoice"/></th>
							</tr>
							</thead>
							<tbody>
							
							<tr>
								<td align="center" class="shop_img"> 
									<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/b_Tea.png" width="100" height="80">
								</td>
								<td align="center" class="title">
									보이차 외 15종 tea
									<div class="f-red">6,000원</div>
								</td>
								<td align="center" class="cate">식품 > 통조림 > 통조림/가공식품</td>
								<td align="center" class="select">
									<input class="popChChoice" type="checkbox"/>
								</td>
							</tr>
							<tr>
								<td align="center" class="shop_img"> 
									<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/b_Tea.png" width="100" height="80">
								</td>
								<td align="center" class="title">
									보이차 외 15종 tea
									<div class="f-red">6,000원</div>
								</td>
								<td align="center" class="cate">식품 > 통조림 > 통조림/가공식품</td>
								<td align="center" class="select">
									<input class="popChChoice" type="checkbox"/>
								</td>
							</tr>
							<tr>
								<td align="center" class="shop_img"> 
									<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/b_Tea.png" width="100" height="80" >
								</td>
								<td align="center" class="title">
									보이차 외 15종 tea
									<div class="f-red">6,000원</div>
								</td>
								<td align="center" class="cate">식품 > 통조림 > 통조림/가공식품</td>
								<td align="center" class="select">
									<input class="popChChoice" type="checkbox"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" height="36"  align="center">
								<!-- onclick 기능 넣기 -->
								<button type="button" class="btn btn-lg" onclick="">상품 더 보기</button>
								</td>
							</tr>
							</tbody>
							</table >
					</form>
					
					<div style="margin: 10px 0; text-align: center;">
						<button type="button" class="btn btn-grey" 
						onclick="document.location.href='productRegister.jsp'">적용</button>
						<button type="button" class="btn btn-grey goods_close" >닫기</button>
					</div>
				</div>
			
			<!-- ======================================================================================================= -->
			
				<div class="main-content">
					<div class="sub-title">| 상품 기본정보</div>
					<%-- <form>태그에 action기능 넣어야 됨. --%>
					<form action="/adgoods/register" method="post" id="registerForm">
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
											<option>선택</option>
										</select>
										
									<label>2차 분류</label>
										<select class="category2">
											<option>선택</option>
										</select>
										
									<label>3차 분류</label>
										<select class="category3" name="cateCode">
											<option>선택</option>
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
								<td><input type="text" value=""/></td>
							</tr>
							<tr>
								<th>간단설명</th>
								<td>
									<input type="text" value=""/>
									<div class="helper blue mt5">
										<span class="red"><span id="ex_byte">0</span>/120Byte</span>
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										미입력시 노출되지 않습니다.
									</div>
								</td>
							</tr>
							<tr>
								<th>정상가격</th>
								<td>
									<input type="text" value="">
									<div class="helper blue mt5">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										할인을 하지 않으실 경우 판매가격만 적어 주시면 됩니다.
									</div>
									
								</td>
							</tr>
							<tr>
								<th>판매가격</th>
								<td>
									<input type="text" value=""/>
								</td>
							</tr>
							<tr>
								<th>상품이미지</th>
								<td>
									<div class="file_div">
										<!-- 버튼 클릭시 파일선택 창 열림 기능 넣기 -->
										<button type="button" class="file_button btn">이미지 찾기</button>
										<input type="file" name="file"/>
									</div>
									<div style="clear: both;"></div>
									<ul id="file_list" class="ui-sortable">
										<li class="ui-sortable-handle">
											<div class="img-body">
												<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100px" height="80px">
												<%-- 버튼클릭시 위의 이미지를 삭제하는 onclick 기능 추가해야됨 --%>
												<button type="button" class="btn btn-red img-btn" onclick="">X</button>
											</div>
										</li>
										<li class="ui-sortable-handle">
											<div class="img-body">
												<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100px" height="80px">
												<%-- 버튼클릭시 위의 이미지를 삭제하는 onclick 기능 추가해야됨 --%>
												<button type="button" class="btn btn-red img-btn" onclick="">X</button>
											</div>
										</li>
										<li class="ui-sortable-handle">
											<div class="img-body">
												<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100px" height="80px">
												<%-- 버튼클릭시 위의 이미지를 삭제하는 onclick 기능 추가해야됨 --%>
												<button type="button" class="btn btn-red img-btn" onclick="">X</button>
											</div>
										</li>
									</ul>
									<div style="clear: both;"></div>
									<div class="helper blue mt5">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										권장 이미지 사이즈(가로: 350px, 세로: 350px)
									</div>
									<div class="helper blue mt5">
										<img src="/recipetoyou/Resources/Admin/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										파일등록시 상품내용 저장후 적용됩니다.
									</div>
									<div class="helper red mt5">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-red2.png" width="15px" height="15px">
										파일삭제시 바로 적용됩니다.
									</div>
								</td>
							</tr>
							<%-- <tr>
								<th>아이콘 설정</th>
								<td>
									<div><label> : 브라우저에 의해 일반적인 텍스트로 랜더링되지만, 사용자가 마우스로 해당 텍스트를 클릭할 경우 <label> 요소와 연결된 요소를 곧바로 선택할 수 있어 사용자의 편의성을 높일 수 있음.
										<input type="radio" name="icon_use_date" id="use_date_n" value="n" checked/>
										<label for="use_date_n">무기한</label>
										<input type="radio" name="icon_use_date" id="use_date_y" value="y"/>
										<label for="use_date_y">일정기간 출력</label>
										<input type="date" name="icon_sdate"/> ~ <input type="date" name="icon_edate"/>
									</div>
									<ul>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="주문폭주"/>주문폭주
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="베스트"/>베스트
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="신상품"/>신상품
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="HOT"/>HOT
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="인기"/>인기
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="품절"/>품절
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="무료배송"/>무료배송
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="NEW"/>NEW
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="BEST"/>BEST
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="추천상품"/>추천상품
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="10%OFF"/>10%OFF
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="주문폭주"/>주문폭주
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="신상할인"/>신상할인
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="Sold Out"/>Sold Out
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="머스트해브"/>머스트해브
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="초특가"/>초특가
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="추천상품"/>추천상품
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="MUSTHAVE"/>MUSTHAVE
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="주문폭주"/>주문폭주
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="굿초이스"/>굿초이스
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
											
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="고객만족"/>고객만족
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="신상할인"/>신상할인
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="베스트"/>베스트
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="인기상품"/>인기상품
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="품절"/>품절
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="무료배송"/>무료배송
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="추천상품"/>추천상품
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="쥔장추천"/>쥔장추천
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="굿초이스"/>굿초이스
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="주문폭주"/>주문폭주
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="깜짝세일"/>깜짝세일
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="신상할인"/>신상할인
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="고객만족"/>고객만족
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="베스트"/>베스트
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="HOT"/>HOT
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="품절"/>품절
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="배송지연"/>배송지연
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="new"/>new
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="%SALE"/>%SALE
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="BEST"/>BEST
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="HIT"/>HIT
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="EVENT"/>EVENT
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="BEST"/>BEST
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
										<li style="float: left;">
											<nobr>	<nobr> : 자동줄바꿈 방지
												<label>
												<input type="checkbox" name="icon[]" value="NEW"/>NEW
												<img>태그로 이미지 넣어야 됨(이미지대신 <input>태그옆에 글자로 나타냄)
												</label>
											</nobr>
										</li>
									</ul>
									<div class="helper blue mt5" style="clear: both;">
									<img src="../../../Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
									아이콘 설정은	<a>태그의 아이콘 설정은 생략하기로 했음
									<a href="#" class="helper">[아이콘설정]</a>
									에서 설정가능합니다.
									</div>
								</td>
							</tr> --%>
							<!-- <tr>
								<th>배송비설정</th>
								<td>
									<div>
										<input type="checkbox" name="group_dlv" value="묶음배송 가능 상품"  checked/>묶음배송 가능 상품
										<span class="helper blue mt5">
											<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
											체크시 묶음배송 설정이 되어 배송비가 가중되지 않습니다.
										</span>
									</div>
									<select name="delevery_type">
										<option value="default">기본설정</option>
										<option value="free">무료배송</option>
										<option value="deferred">착불배송</option>
										<option value="tixed">고정배송</option>
										<option value="condition">조건부 무료배송</option>
									</select>
									<div class="helper mt5 blue">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										기본 배송비용 설정은 
										<a href="basicSetting.jsp" class="helper">[운영설정]</a>
										에서 설정하능합니다.
									</div>
									<div class="helper mt5 blue">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-blue.png" width="12px" height="12px">
										상품별 배송비 설정이 가능합니다.
									</div>
									<div class="helper mt5 red">
										<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-red2.png" width="15px" height="15px">
										묶음배송 상품은 배송비 설정을 동일하게 사용하세요.
									</div>
								</td>
							</tr>
							
							<tr>
								<th>판매상태</th>
								<td>
									<input type="radio" name="sale_status" value="on" checked/>정상판매
									<input type="radio" name="sale_status" value="pause"/>판매중지
									<input type="radio" name="sale_status" value="soldout"/>품절
								</td>
							</tr> -->
						</tbody>
					</table>
					
					<div class="sub-title" style="margin-top: 20px">
						| 재고정보
					</div>
					<table class="table table1 line_top table_line stkstk">
						<colgroup>
							<col width="120px">
							<col>
						</colgroup>
						<tbody>
						<tr>
							<th>재고관리</th>
							<td>
								<label>
									<input type="radio" id="stk1" name="stock_use" value="Y" checked/>재고를 관리합니다.
								</label>
								<label>
									<input type="radio" id="stk2" name="stock_use" value="N"/>재고를 관리하지 않습니다.
								</label>
								
							</td>
						</tr>
						<tr class='stock_option'>
							<th>재고옵션</th>
							<td>
								<label>
									<input type="radio" id="stock_option_use" name="stock_option" value="Y" checked/>옵션있음
								</label>
								<label>
									<input type="radio" id="stock_option_useNo" name="stock_option" value="N"/>옵션없음
								</label>
							</td>
						</tr>
						<tr class="stock_count">
							<th>재고수량</th>
							<td>
								<input type="text" name="stock_use" style="width: 60px"/> 개
							</td>
						</tr>
						</tbody>
					</table>
					<div class="option_fram">
						<div class="sub-title" style="margin-top: 20px">
							| 옵션정보	<%--버튼클릭시 알림창 열리는 기능 추가해야 됨 --%>
							<button type="button" class="btn btn-blue" id="goodsRegister_option">옵션등록</button>
							<span class="helper red mt5">
								<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-red1.png" width="15px" height="15px">
								옵션정보 추가시 기존 등록된 옵션정보(재고수량, 추가금액, 추가적립금)가 초기화 됩니다. 
							</span>
						</div>
						<table class="table table1 line_top table_line">
							<colgroup>
								<col width="120px">
								<col>
							</colgroup>
							<tbody>
							<tr>
							<th>옵션</th>
							<td id="stock_option_disply">
								<table class="table table1 table_line">
								<colgroup>
									<col width="90">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th style="line-height: 10px">
										<%-- <a>태그 클릭시 나타나는 기능 넣어야 됨 --%>
										<a class="option-item" onclick="">사이즈</a>
										<a class="option-item" onclick="">X</a>
										</th>
										<td>
										<%-- <a>태그 클릭시 나타나는 기능 넣어야 됨 --%>
										<a class="option-item" onclick="">대</a>
										<a class="option-item" onclick="">X</a>
									
										<%-- <a>태그 클릭시 나타나는 기능 넣어야 됨 --%>
										<a class="option-item" onclick="">중</a>
										<a class="option-item" onclick="">X</a>
										
										<%-- <a>태그 클릭시 나타나는 기능 넣어야 됨 --%>
										<a class="option-item" onclick="">소</a>
										<a class="option-item" onclick="">X</a>
										</td>
									</tr>
								</tbody>
								</table>
							</td>
							</tr>
							</tbody>
						</table>
						
						<div id="stock_table" style="margin-top: 5px">
							<table class="table table1 table_line" id="table_stock">
							<thead class="al_middle">
								<tr>
									<th width="30" class="center">
									<%-- 체크박스 기능 넣어야 됨 --%>
									<input id="optionCheckboxAllChoice" type="checkbox" />
									</th>
									<th>
									<span>사이즈</span>
									</th>
									<th  width="10%">재고수량</th>
									<th  width="10%">추가금액</th>
									<th  width="10%">추가적립금</th>
									<th  width="10%">품절설정</th>
								</tr>
								<tr>
									<td align="center" colspan="2">
									<%-- 버튼클릭 기능 넣어야 됨 --%>
									<button type="button" class="btn btn-sm" onclick="">옵션 일괄적용</button>
									</td>
									
									<td >
									<input type="text" class="wid-cen" id="_opt_all_stock"  placeholder="재고수량"/>
									</td>
									
									<td >
									<input type="text" class="wid-cen" id="_opt_all_price"  placeholder="추가금액"/>
									</td>
									
									<td >
									<input type="text" class="wid-cen" id="_opt_all_mi"  placeholder="추가적립금"/>
									</td>
									<td>
										<select style="width: 100%" id="_opt_all_sold">
										<option value="N" selected>판매</option>
										<option value="Y" >품절</option>
										</select>
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
								<td align="center">
									<input class="optionChChoice" type="checkbox" name="_optno[]" />
								</td>
								<%-- onclick기능 넣기 --%>
								<td align="center" onclick="">대</td>
								<td>
									<input type="text" class="wid-cen" value="5000" placeholder="재고수량"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="2000" placeholder="추가금액"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="0" placeholder="추가적립금"/>
								</td>
								<td>
									<select style="width: 100%">
										<option value="N" selected>판매</option>
										<option value="Y" >품절</option>
									</select>
								</td>
								</tr>
								
								<tr>
								<td align="center">
									<input class="optionChChoice" type="checkbox" name="_optno[]" />
								</td>
								<%-- onclick기능 넣기 --%>
								<td align="center" onclick="">중</td>
								<td>
									<input type="text" class="wid-cen" value="5000" placeholder="재고수량"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="1000" placeholder="추가금액"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="0" placeholder="추가적립금"/>
								</td>
								<td>
									<select style="width: 100%">
										<option value="N" selected>판매</option>
										<option value="Y">품절</option>
									</select>
								</td>
								</tr>
								
								<tr>
								<td align="center">
									<input class="optionChChoice" type="checkbox" name="_optno[]" />
								</td>
								<%-- onclick기능 넣기 --%>
								<td align="center" onclick="">소</td>
								<td>
									<input type="text" class="wid-cen" value="5000" placeholder="재고수량"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="2000" placeholder="추가금액"/>
								</td>
								<td>
									<input type="text" class="wid-cen" value="0" placeholder="추가적립금"/>
								</td>
								<td>
									<select style="width: 100%">
										<option value="N" selected>판매</option>
										<option value="Y">품절</option>
									</select>
								</td>
								</tr>
							</tbody>
							</table>
						</div>
					</div>
					
					<div class="sub-title" style="margin-top: 20px">
						| 추가옵션	<%--버튼클릭시 알림창 열리는 기능 추가해야 됨 --%>
						<button id="goodsRegister_addOption" type="button" class="btn btn-blue">추가옵션등록</button>
						<span class="helper red mt5">
							<img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/Question-red2.png" width="15px" height="15px">
							옵션명 클릭시 수정/삭제 가능합니다.
							</span>
					</div>
					<div style="margin-top: 5px">
						<table class="table table1 table_line">
							<colgroup>
								<col width="120px">
								<col>
								<col width="130px">
								<col width="130px">
								<col width="120px">
								<col width="90px">
							</colgroup>
							<thead class="al_middle">
								<tr>
									<th>옵션명</th>
									<th>
										<input type="checkbox" id="checkboxAllChoice"/> 입력설정
									</th>
									<th>추가구매금액</th>
									<th>추가적립금액</th>
									<th>필수여부</th>
									<th>삭제</th>
								</tr>		
								<tr>
									<td colspan="2" >	<%--버튼클릭시 alert창 열리는 기능 추가해야 됨 --%>
										<button class="btn btn-sm" onclick="">추가옵션 일괄적용</button>
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td>
									
										<select style="width: 90px">
											<option value="Y">필수</option>
											<option value="N">미필수</option>
										</select>						
									</td>
									<td></td>
								</tr>			
							</thead>
							<tbody class="al_middle">
								<tr>
									<td rowspan="3">
										<!-- href기능 넣기 -->
										<a href="#" onclick>색상</a>
									</td>
									<td>
										<input type="checkbox" class="chChoice"/>레드
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td rowspan="3">
										<select style="width: 90px">
											<option value="Y">필수</option>
											<option value="N">미필수</option>
										</select>
									</td>
									<td rowspan="3">
										<!-- href기능 넣기 -->
										<a href="#"><img src="/recipetoyou/Resources/Admin/Img/ShoppingMallManagement/trash-can.png" width="20px" height="20px"></a>
									</td>
								</tr>
								<tr>
									<td>
										<input type="checkbox" class="chChoice"/>블루							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
								</tr>
								<tr>
									<td>
										<input type="checkbox" class="chChoice"/>그린							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
									<td>
										<input type="text" class="wid-cen" value="0"/>							
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 상의후 삭제여부 결정하기 -->
					<div class="sub-title" style="margin-top: 20px">
						| 상품상세정보 - 웹(Web) 
					</div>
					<div class="box-line line_top">
						<%-- 라이브러리 받아와서 추가해야 됨 -> 추가했는데 안됨 다시 수정 필요!! --%>
						<div class="preparedPage">
							<p>준비중 페이지</p>
							<textarea name="content2" id="prepared" rows="10" cols="100" ></textarea>
							<script>
						        ClassicEditor
						            .create( document.querySelector('#prepared'))
						            .then(edit => {
						            	console.log(prepared);
						            })
						            .catch(error => {
						                console.error(error);
						            });
						    </script>
						</div>
						
					</div>
					
					<!-- 상의후 삭제여부 결정하기 -->
					<div class="sub-title" style="margin-top: 20px">
						| 상품상세정보 - 모바일(Mobile)	<%-- 라이브러리 받아와서 추가해야 됨 --%>
					</div>
					<div class="box-line line_top">
						<%-- 라이브러리 받아와서 추가해야 됨 -> 추가했는데 안됨 다시 수정 필요!! --%>
						<div class="preparedPage">
							<p>준비중 페이지</p>
							<textarea name="content3" id="prepared" rows="10" cols="100" ></textarea>
							<script>
						        ClassicEditor
						            .create( document.querySelector('#prepared'))
						            .then(edit => {
						            	console.log(prepared);
						            })
						            .catch(error => {
						                console.error(error);
						            });
						    </script>
						</div>
						
					</div>
					
					
					<div class="sub-title" style="margin-top: 20px">
						| 관련상품
					</div>
					<div class="box-line">
						<div class="">
							<table class="table">
								<colgroup>
									<col width="120">						
									<col width="300">						
									<col width="120">		
									<col>				
								</colgroup>
								<tbody>
									<tr>
										<td class="gray_bg">노출형태</td>
										<td colspan="3" class="sel-style">
											<!-- onchange 기능 넣기 -->
											<select name="relation[skin-type]" onchange="">
													<option value="type2" selected>슬라이드</option>
													<option value="manual">사용자정의</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="gray_bg" colspan="4">
											상품목록 <%-- 버튼 클릭시 상품추가 창이 나타나는 기능 추가해야 됨 --%>
											<button id="goodsAdd_open" type="button" class="btn btn-blue">상품추가</button>
										</td>
									</tr>
									<tr>
									<td align="center" colspan="4">
										<ul class="sortable">
											<li><!-- name value값 임시로 넣어둠 -->
												<div class="del" onclick="jQuery(this).parent().remove();">X</div>
												<input type="hidden" class="goods-no" name="relation[goods][]" value="197">
												<img alt="체중계" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100" height="80">
												<div>체중계</div>
												<div class="f-red">17,300원</div>
											</li>
											<li><!-- name value값 임시로 넣어둠 -->
												<div class="del" onclick="jQuery(this).parent().remove();">X</div>
												<input type="hidden" class="goods-no" name="relation[goods][]" value="197">
												<img alt="체중계" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100" height="80">
												<div>체중계</div>
												<div class="f-red">17,300원</div>
											</li>
											<li><!-- name value값 임시로 넣어둠 -->
												<div class="del" onclick="jQuery(this).parent().remove();">X</div>
												<input type="hidden" class="goods-no" name="relation[goods][]" value="197">
												<img alt="체중계" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100" height="80">
												<div>체중계</div>
												<div class="f-red">17,300원</div>
											</li>
											<li><!-- name value값 임시로 넣어둠 -->
												<div class="del" onclick="jQuery(this).parent().remove();">X</div>
												<input type="hidden" class="goods-no" name="relation[goods][]" value="197">
												<img alt="체중계" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100" height="80">
												<div>체중계</div>
												<div class="f-red">17,300원</div>
											</li>
											<li><!-- name value값 임시로 넣어둠 -->
												<div class="del" onclick="jQuery(this).parent().remove();">X</div>
												<input type="hidden" class="goods-no" name="relation[goods][]" value="197">
												<img alt="체중계" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png" width="100" height="80">
												<div>체중계</div>
												<div class="f-red">17,300원</div>
											</li>
											
										</ul>
									</td>
								</tr>	
								</tbody>
							</table>
						</div>
					</div>
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
					<div id="option_regist_frame" class="option_regist" style="display: none;">
						<form action="" id="optFrm">
						<input type="hidden" name="goods_no" value="197"/>
						<input type="hidden" name="option_no" value/>
						<input type="hidden" name="is_stock" value="Y"/>
						<input type="hidden" name="tmp_no" value/>
						<table class="table table1 table_line">
						<colgroup>
							<col width="120">
							<col>
						</colgroup>
						<tbody>
							<tr>
							<th>옵션명</th>
							<td>
								<input type="text" name="opt_name" id="opt_name" class="input-mini" style="width: 98%"/>
							</td>
							</tr>
							
							<tr>
							<th rowspan="2">항목추가</th>
							<td>
								<input type="text" id="opt_item" class="input-mini" style="width: 83%"/>
								<!-- onclick 기능 넣기 -->
								<button type="button" class="btn btn-blue" style="vertical-align: 2px; height: 22px"
										onclick="">추가</button>
							</td>
							</tr>
							<tr>
							<td style="height: 50px">
								<ul id="opt_items"></ul>
							</td>
							</tr>
							<tr id="is_required_frame">
							<th>필수</th>
							<td align="left">
								<label>
								<input type="checkbox" name="is_required" value="Y" />
								필수옵션
								</label>
							</td>
							</tr>
						</tbody>
						</table>
						<div class="mt5">
						<!-- onclick 기능 넣기 -->
							<button type="button" class="btn btn-blue" style="vertical-align: 2px; height: 22px"
									onclick="" id="goodsRegister_optionSave">저장
							</button>
							<!-- onclick 기능 넣기 -->
							<button type="button" class="btn" style="vertical-align: 2px; height: 22px"
									onclick="" id="goodsRegister_optionClose">닫기</button>
						</div>
						</form>
					
					</div>
				</div>
			</td>
		</tr>
	</tbody>
	</table>
	</div>

	<script type="text/javascript">
		
		//컨트롤러에서 데이터 받기
		let cateList = JSON.parse('${cateList}');  
		let cate1Array = new Array();
		let cate2Array = new Array();
		let cate3Array = new Array();

		let cate1Obj = new Object();
		let cate2Obj = new Object();
		let cate3Obj = new Object();	


		//1차분류 셀렉트 박스에 삽입할 데이터 준비
		for(let i = 0; i < cateList.length; i++){
			if(cateList[i].cateGrade == 1){
				cate1Obj = new Object();
				
				cate1Obj.cateName = cateList[i].cateName;
				cate1Obj.cateCode = cateList[i].cateCode;
				cate1Obj.cateParent = cateList[i].cateParent;
				
				cate1Array.push(cate1Obj);
			};
		};		

		//1차 분류 셀렉브 박스에 데이터 삽입
		for(let i = 0; i < cate1Array.length; i++){
				cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>"+cate1Array[i].cateName+"</option>");
		}

		//1차분류 선택 후 2차분류 셀렉트박스 나타나는 onchange 이벤트 적용
		/* 2차 분류 */	

			$(cateSelect1).on("change",function(){
					
				let select1 = $(this).find("option:selected").val();	
					
				cateSelect2.children().remove();
					
				cateSelect2.append("<option value='none'>선택</option>");
					
				for(let i = 0; i < cate2Array.length; i++){
					if(select1 === cate2Array[i].cateParent){
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
					if(select2 === cate3Array[i].cateParent){
						cateSelect3.append("<option value='"+cate3Array[i].cateName+"'>" + cate3Array[i].cateName + "</option>");	
					}
				}
			});	;	
		
	</script> 
	

		<!-- <button value="팝업창호출" onclick="showPopup()">지도키관리</button>
		 <script
			language="javascript">
			 function showPopup() { window.open("MapKey.jsp", "a", "width=700, height=500, left=100, top=50"); }
		  -->
	
	
	
	
</body>
</html>