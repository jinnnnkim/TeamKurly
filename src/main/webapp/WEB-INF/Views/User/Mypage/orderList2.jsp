<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/orderlist.css" rel="stylesheet"
	type="text/css">
<!-- fontawesome 링크 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- font 링크 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
<!-- 파비콘 링크 -->
<link href="/recipetoyou/Resources/User/Image/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
</head>
<body>
	<div class="content">
		<div class="order_main">
			<div class="head">
				<h2 class="title">
					주문 내역 <span class="subtitle">지난 3년간의 주문 내역 조회가 가능합니다</span>
				</h2>
				<select class='data_year'>
					<option value='all_year' selected>전체기간</option>
					<option value='2022'>2022</option>
					<option value='2021'>2021</option>
					<option value='2020'>2020</option>
				</select>
			</div>
			<!-- head -->
			<div class="order_list">
				<ul>
					<li>주문내역이 없습니다.</li>
				</ul>
			</div>
			<!-- order_list -->
		</div>
		<!-- order_main -->
	</div>
	<%--content end --%>
</body>
</html>


















