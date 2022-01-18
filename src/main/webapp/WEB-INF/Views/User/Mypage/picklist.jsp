<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한상품</title>
<link rel="stylesheet" href="/Resources/User/Css/Mypage/mypageInfo.css"
	type="text/css">
<link href=/Resources/User/Css/reset.css" rel="stylesheet"
	type="text/css">
<link href="/Resources/User/Css/Mypage/picklist.css" rel="stylesheet"
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
<link href="/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
</head>
<body>
	<%--wrap --%>
	<div class="wrap">
		<%--header --%>
		<jsp:include page="/View/User/inc/header.jsp" />
		<%--header end--%>
		<%--user info --%>
		<jsp:include page="/View/User/inc/mypageUserInfo.jsp" />
		<%--user info end--%>
		<%--main --%>
		<div class="main">
			<%--mypageSideMenu --%>
			<jsp:include page="/View/User/inc/mypageSideMenu.jsp" />
			<%--mypageSideMenu end--%>
			<div class="content">
				<div class="pick_main">
					<div class="head">
						<h2 class="title">
							찜한 상품() <span class="subtitle">찜한 상품은 최대 200개까지 저장됩니다.</span>
						</h2>
						<select class='data_year'>
							<option value='all_year' selected>전체기간</option>
							<option value='2022'>2022</option>
							<option value='2021'>2021</option>
							<option value='2020'>2020</option>
						</select>
					</div>
					<!-- head -->
					<div class="pick_list">
						<ul>
							<li><img src="/Resources/User/Img/Mypage/heart.png"/>
							찜한 상품이 없습니다.
							<button type="button" class="view_best"
								onclick="location.href=''">베스트상품 보기</button></li>
						</ul>
					</div>
					<!-- pick_list -->
				</div>
				<!-- pick_main -->
			</div>
			<%--content end --%>
		</div>
		<%--main end --%>
		<%--footer --%>
		<jsp:include page="/View/User/inc/footer.jsp" />
		<%--footer end--%>
	</div>
	<%--wrap end --%>
</body>
</html>
















