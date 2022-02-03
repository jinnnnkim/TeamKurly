<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%request.setCharacterEncoding("UTF-8");%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/DesignSetting/logoRegistration.css">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="logoRegistration">
		<div class="logoSetting">
			<div class="logoMenu">
				<a href="#" class="logoStyle">상단로고</a>
				<a href="#" class="logoStyle">하단로고</a>
			</div>
			
			<div class="logoRegi">
				<p class="title">로고관리</p>
				<button>로고등록</button>
				<p class="lgText">+ 리스트에 보이는 로고의 스타일과 실제 사이트에 출력되는 로고의 스타일이 다를 수도 있습니다.</p>
			</div>
			
			<div class="logoTable">
				<table>
					<tr>
						<td class="gray lgText1"><input type="checkbox" value="선택">선택</td>
						<td class="gray"><p>로고정보</p></td>
					</tr>
					<tr >
						<td class="lgText1"><input type="checkbox" value="로고정보">로고정보</td>
						<td><input type="image"></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit">사용하기</button>
							<button type="submit">사용하지않기</button>
							<button type="submit">삭제하기</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>