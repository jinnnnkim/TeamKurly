<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>상품 후기 목록</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/productReviewList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>	
	<!-- 쇼핑몰관리 -> 상품후기 -> 상품후기목록페이지 -->
	<div class="wrap">
		<div class="bar">상품후기목록</div>
		<table align="center">
			<tbody>
				<tr>
					<td align="left">
						<div class="main-content">
							<%-- <form>태그에 action기능 넣어야 됨. --%>
							<form action="">
								<table class="table table1 table_line" >
									<tr>
										<th>작성일자</th>
										<td style="text-align: left;"><input type="date" /> ~ <input type="date" /></td>
									</tr>
									<tr>
										<th>검색어</th>
										<td style="text-align: left;">
											<select name="sf">
												<option value="title">제목</option>
												<option value="content">내용</option>
												<option value="content_name">상품명</option>
												<option value="writer_name">문의자명</option>
												<option value="writer_id">문의자아이디</option>
											</select>
											<input type="text" name="sw" style="width: 500px"/>
										</td>
									</tr>
								</table>
								<div class="btn-box">	<%-- 인라인 속성이기 떄문에 버튼을 가운데로 보내기위해 <div>태그로 감쌌다. --%>
									<button type="submit" class="btn btn-sm btn-blue">검색</button>
									<button type="reset" class="btn btn-sm" 
									onclick="document.location.href='productReviewList.jsp'">처음으로</button>
								</div>
							</form>
							<div class="list-tools">
							<div class="list-action">
								<%-- 버튼클릭시 삭제되는 기능(onclick)추가하기 --%>
								<button id="selectRemove" class="btn btn-red" type="button" onclick="">선택삭제</button>
							</div>
							<div class="summary">
								검색된 후기 &nbsp;
								<span class="f-bold f-red f-num">281</span>
								개 &nbsp;
								<span class="split">|</span>
								총 후기 &nbsp;
								<span class="f-bold f-num">281</span>
								개
								</div>
							</div>
							
							<table id="goodsReviewList" class="table table1 list_top table_line table-center table_list">
								<colgroup>
									<col width="65px">
									<col width="60px">
									<col>
									<col width="100px">
									<col width="120px">
								</colgroup>
								
								<thead>
								<tr>
									<th>번호</th>
									<th><input id="checkboxAllChoice" type="checkbox" /></th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일시</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>281</td>
									<td><input class="chChoice" type="checkbox" /></td>
									<td style="text-align: left;">
										<div class="title_div_left">
											<%-- href : 상품등록 페이지로 이동 --%>
											<a href="productRegister.jsp" class="helper-col">체중계</a> 
										</div>
										<div class="title_div_left">
											<%-- href : 상품후기 페이지로 이동 --%>
											<a href="productReviewDetail.jsp">빠른배송 감사합니다.</a>
										</div>
									</td>
									<td>여인옥</td>
									<td>2017-01-17</td>
								</tr>
								<tr>
									<td>280</td>
									<td><input class="chChoice" type="checkbox" /></td>
									<td style="text-align: left;">
										<div class="title_div_left">
										<%-- href : 상품등록 페이지로 이동 --%>
										<a href="productRegister.jsp" class="helper-col">애착인형</a> 
										</div>
										<div class="title_div_left">
										<%-- href : 상품후기 페이지로 이동 --%>
										<a href="productReviewDetail.jsp">좋아요~</a>
										</div>
									</td>
									<td>랭크업</td>
									<td>2017-01-17</td>
								</tr>
								<tr>
									<td>281</td>
									<td><input class="chChoice" type="checkbox" /></td>
									<td style="text-align: left;">
										<div class="title_div_left">
										<%-- href : 상품등록 페이지로 이동 --%>
										<a href="productRegister.jsp" class="helper-col">자동차튜닝용품</a> 
										</div>
										<div class="title_div_left">
										<%-- href : 상품후기 페이지로 이동기능 넣어야 됨 --%>
										<a href="productReviewDetail.jsp">미리 구매해두었는데 재질, 디자인 모두 만족스럽네요. 좋아요^-^</a>
										</div>
									</td>
									<td>랭크업</td>
									<td>2017-01-17</td>
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
	</div>
	
	<script type="text/javascript">
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
			$('#selectRemove').click(function(){
				alert('삭제할 문의를 선택하세요.');
			});
		});
	
	</script>
	
</body>
</html>