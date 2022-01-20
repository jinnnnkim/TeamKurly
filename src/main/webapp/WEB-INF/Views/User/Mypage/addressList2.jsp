<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/addresslist.css" rel="stylesheet"
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
<link href="/recipetoyou/Resources/User/Img/Mypage/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
</head>
<body>
	<div class="content">
		<div class="address_main">
			<div class="head">
				<h2 class="title">
					배송지 관리 <span class="subtitle">배송지에 따라 상품정보 및 배송유형이 달라질 수
						있습니다.</span>
				</h2>
				<a href="" class="address_search" onclick="window.open('');">+ 새
					배송지 추가</a>
			</div>
			<!-- head -->
			<table class="head_cate">
				<tr>
					<th class="title_select">선택</th>
					<th class="title_address">주소</th>
					<th class="title_name">받으실 분</th>
					<th class="title_phone">연락처</th>
					<th class="title_delivery">배송유형</th>
					<th class="title_modify">수정</th>
				</tr>
			</table>
			<table class="address_content">
				<tr>
					<td class="select_icon"><input type="radio" name="select"
						checked> <img
						src="/recipetoyou/Resources/User/Img/Mypage/ico_checkbox_checked.png"></td>
					<td class="address">
						<p class="basic_address">기본 배송지</p>
						<p class="detail_address">서울 서초구 서초대로77길 55 (에이프로 스퀘어) 3층</p>
					</td>
					<td class="name">홍길동</td>
					<td class="phone">010-1234-5678</td>
					<td class="delivery_type"><p>샛별배송</p></td>
					<td class="modify"><a href="" class="modify_pop"
						onclick="window.open('');"> <img
							src="/recipetoyou/Resources/User/Img/Mypage/ico_modify_x2.png"></a></td>
				</tr>
			</table>
		</div>
		<%--address_main end --%>
	</div>
	<%--content end --%>
</body>
</html>










