<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet" href="/Resources/User/Css/Mypage/mypageInfo.css">
<link href="/Resources/User/Css/reset.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/Resources/User/Css/Mypage/review.css"
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
				<div class="review_main">
					<div class="head">
						<h2 class="title">상품후기</h2>
						<div class="subtitle">
							<p>
								<b>후기 작성 시 사진후기100원, 글후기 50원을 적립해드립니다.</b>
							</p>
							<p>-퍼플, 더퍼플은 2배 적립(사진200원, 글100원)</p>
							<p>-주간 베스트 후기로 선정 시 5,000원을 추가 적립</p>
							<p>*후기 작성은 배송 완료일로부터 30일 이내 가능합니다.</p>
						</div>
					</div>
					<!-- head -->
					<table class="review_menu">
						<tr>
							<td class="review_before"><a href="">작성가능 후기</a></td>
							<td class="review_after"><a href="">작성완료 후기</a></td>
						</tr>
						<tr>
							<td class="review_before_no">작성가능 후기 내역이 없습니다.</td>
							<td class="review_after_no">작성한 후기가 없습니다.</td>
						</tr>
					</table>
				</div>
				<!-- review_main -->
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