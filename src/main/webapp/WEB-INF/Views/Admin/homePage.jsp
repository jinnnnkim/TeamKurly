<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 모드</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link
	href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/homePage.css"
	rel="stylesheet">
<link
	href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css"
	rel="stylesheet">
<script type="text/javascript"
	src="/recipetoyou/Resources/Admin/Js/HomePageHeaderSide/homePage.js"></script>
<!-- 팝업 관련 자바스크립트 => 팝업창 띄울때 사용하면 됨 
		url, name, option은 각자 구현 기능에 맞게 설정하면 됨 
	<script>
        function popup(){
            var url = "design_entire_setting.jsp";
            var name = "popup test";
            var option = "width = 1080px, height = 100%, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
    </script> -->
</head>
<body class="homeBody">
	<div class="header">
		<h1>
			<a href="${contextPath }/main.do">관리자모드</a>
		</h1>
		<c:choose>
			<c:when test="${admin.adminName == null}">
				<a href="${contextPath}/admin/adloginForm.do">관리자 로그인</a>
			</c:when>
			<c:otherwise>
					${admin.adminName }님이 로그인중입니다.
					<a href="${contextPath}/admin/logout.do">관리자 로그아웃</a>
			</c:otherwise>
		</c:choose>

		<div class="topBar">
			<ul>
				<li><a class="topLogo" href="homePage.jsp"><i
						class="fas fa-home"></i></a></li>
				<li><a href="#">이용메뉴얼보기</a></li>
				<li><a href="#">관리자모드</a></li>
				<li><a href="#">홈페이지보기</a></li>
				<li><a href="#">모바일웹보기</a></li>
			</ul>
		</div>
		<div class="nav">
			<ul>
				<li><a href="shopMallMgm.jsp">쇼핑몰관리</a></li>
				<li><a href="orignSetting.jsp">기본환경설정</a></li>
				<li><a href="boardMgm.jsp">게시물관리</a></li>
				<li><a href="formMgm.jsp">폼관리</a></li>
				<li><a href="faq.jsp">FAQ관리</a></li>
				<li><a href="paymentMgm.jsp">결제관리</a></li>
				<li><a href="${contextPath}/user/listadUsers.do">회원관리</a></li>
				<li><a href="mobileWebSetting.jsp">모바일웹설정</a></li>
			</ul>
		</div>
	</div>

	<div class="sideBar" id="followMenuBtn">
		<button onclick="dropMenu_btn()" class="sideMenu">
			<i class="fas fa-bars"> Menu</i>
		</button>
		<div class="sideBtn" id="drop_content">
			<ul>
				<li><a href="shopMallMgm.jsp">쇼핑몰관리</a></li>
				<li><a href="orignSetting.jsp">기본환경설정</a></li>
				<li><a href="boardMgm.jsp">게시물관리</a></li>
				<li><a href="formMgm.jsp">폼관리</a></li>
				<li><a href="faq.jsp">FAQ관리</a></li>
				<li><a href="paymentMgm.jsp">결제관리</a></li>
				<li><a href="${contextPath}/user/listadUsers.do">회원관리</a></li>
				<li><a href="mobileWebSetting.jsp">모바일웹설정</a></li>
				<li><a href="${contextPath}/adsend/listadSend.do">발송관리</a></li>
				<li><a href="${contextPath}/ademail/sendnewsSms.do">메일관리</a></li>
				<li><a href="${contextPath}/adsms/senduserSms.do">SMS관리</a></li>
			</ul>
		</div>
	</div>

</body>
</html>

















