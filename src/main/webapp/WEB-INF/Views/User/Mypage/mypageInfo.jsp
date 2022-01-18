<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet" href="/Resources/User/Css/Mypage/mypageInfo.css"
	type="text/css">
<link href="/Resources/User/Css/reset.css" rel="stylesheet"
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
			<div class="content"></div>
			
		</div>
		<%--content end --%>

		<%--footer --%>
		<jsp:include page="../inc/footer.jsp" />
		<%--footer end--%>
	</div>
	<%--wrap end --%>
</body>
</html>












