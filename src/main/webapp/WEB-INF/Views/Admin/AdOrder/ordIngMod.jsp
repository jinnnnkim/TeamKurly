<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:if test="${admin.adminId == null }">
	<script>
		alert("관리자 로그인 후 이용이 가능합니다.");
		location.href="${contextPath}/adLogin.do";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>전체회원관리</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
 	<link href="/recipetoyou/Resources/Admin/Css/AdUser/aduserList.css" rel="stylesheet">
	<link href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css" rel="stylesheet">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>	
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/AdUser/aduserList.js" charset="UTF-8"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<body>

	<div class="mainTitle">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  			<path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
			</svg>
			주문정보 수정
		</div>
	<form action="${contextPath}/adorder/ordIngUpdate.do" method="post">
		<div class="userList_wrap">
			<table align="center" id="tableGroup">
				<tr align="center">
					<td class="table_title" id="idCol">상품코드</td>
					<td><input id="text" name="prod_code" value="${adOrderVO.prod_code}"></td>
					<td class="table_title" id="nameCol">주문코드</td>
					<td><input id="text" name="ord_code" value="${adOrdVO.ord_code}"></td>
				</tr>
				
				<tr align="center" >
					<td class="table_title" id="phoneCol">수량</td>
					<td><input id="text" name="quantity" value="${adOrdIngVO.quantity}"></td>
					<td class="table_title" id="addrCol">가격</td>
					<td><input id="text" name="price" value="${adOrderVO.price}"></td>
				</tr>
				
				<tr>
					<td class="table_title" id="prodNameCol">배송상태</td>
					<td><input id="text" name="status" value="${ord.status}"></td>
				</tr>
			</table>
				<button class="editBtn" >수정</button>
				<button type="button" class="backBtn" onclick="location.href='${contextPath}/adorder/listadOrd'">뒤로가기</button>
		</div>
	</form>
</body>
</html>