<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.servletContext.contextPath}"/>
<%request.setCharacterEncoding("UTF-8");%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>관리자 모드</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
	<link rel="stylesheet" href="/Resources/Admin/Css/HomePageHeaderSide/homePage.css">
	<link rel="stylesheet" href="/Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script src="/Resources/Admin/Js/HomePageHeaderSide/homePage.js"></script>
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
	<div class="wrap">
		<%--header --%>
		<jsp:include page="/View/Admin/Inc/header.jsp"/>
		<%--header end --%>
	
		<%--sidebar --%>
		<jsp:include page="/View/Admin/Inc/sidebar.jsp"/>
		<%--sidebar end --%>
		
		<div class="homePageMain">
			<!-- 팝업창 띄울 때 사용하면 됨. 구글링해서 타겟을 변경하면 다양한 기능 구현이 가능함 <a href="javascript:popup()" target="_self">팝업</a> -->
			<!-- 동적 jsp:include를 사용해서 부모 jsp 파일에 자식 jsp를 불러왔음
				 혹은 팝업창 띄우는 걸로 대체하든지 해야 함
				 일단 다들 구현이 되는지 확인만 하면 됨	
			 -->
			<jsp:include page="adminLogin.jsp" flush="true"/>
		</div>
	</div>
</body>
</html>

















