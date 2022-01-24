<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적립금</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage/point.css"
	rel="stylesheet" type="text/css">
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
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
</head>
<body>
	<%--mypageSideMenu end--%>
	<div class="content">
		<div class="head">
			<h2 class="title">
				적립금 <span class="subtitle">보유하고 계신 적립금의 내역을 한 눈에 확인 하실수 있습니다.</span>
			</h2>
		</div>
		<!-- head -->
		<div class="point_main">
			<div class="point_box">
				<div class="point_view">
					<div class="title_now">현재 적립금</div>
					<div class="point_now">0원</div>
				</div>
				<div class="point_disappear">
					<div class="title_disappear">소멸예정 적립금</div>
					<div class="won">0 원</div>
				</div>
			</div>
			<table class="point_cate">
				<tr>
					<th class="cate_date">날짜</th>
					<th class="cate_content">내용</th>
					<th class="cate_valid">유효기간</th>
					<th class="cate_price">금액</th>
				</tr>
			</table>
			<table class="cate_main">
				<tr>
					<td class="main_date">21.10.21</td>
					<td class="main_content">[적립금소멸]적립금 유효기간 만료</td>
					<td class="main_vaild">00.00.00</td>
					<td class="main_price">-6,000원</td>
				</tr>
			</table>

		</div>
		<!-- order_main -->
	</div>
	<%--content end --%>
</body>
</html>


















