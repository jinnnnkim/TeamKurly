<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
	<link href="/recipetoyou/Resources/User/Css/Notice2/notice.css" rel="stylesheet" type="text/css">
<!-- fontawesome 링크 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- font 링크 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">

<body>
	<div class="content">
		<div class="title">
			<h2>
				공지사항 <span>레시피 to you의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
			</h2>
		</div>
		<div class="Contsearch">
			<span>검색어</span> <input type="checkbox" />이름 <input type="checkbox" />제목
			<input type="checkbox" />내용 <input class="searchInput" type="text" /><a
				href="#"><i class="fas fa-search"></i></a>
		</div>
		<div class="noticeTable">
			<table>
				<tr class="th">
					<th class="num">번호</th>
					<th class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="writeDate">작성일</th>
					<th class="hit">조회</th>
				</tr>

				<tr>
					<td>공지</td>
					<td class="titleCont"><a href="${contextPath}/notice/noticeDetail.do">[레시피투유]CJ대한통운
							택배파업으로 인한 주문 불가지역 안내</a></td>
					<td>Recipe</td>
					<td>2022-01-04</td>
					<td>15</td>
				</tr>

				<tr>
					<td>공지</td>
					<td class="titleCont"><a href="${contextPath}/notice/noticeDetail.do">[레시피투유]CJ대한통운
							택배파업으로 인한 주문 불가지역 안내</a></td>
					<td>Recipe</td>
					<td>2022-01-04</td>
					<td>15</td>
				</tr>

				<tr>
					<td>공지</td>
					<td class="titleCont"><a href="${contextPath}/notice/noticeDetail.do">[레시피투유]CJ대한통운
							택배파업으로 인한 주문 불가지역 안내</a></td>
					<td>Recipe</td>
					<td>2022-01-04</td>
					<td>15</td>
				</tr>
			</table>
		</div>
		<div class="page">
			<ul>
				<li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
				<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
				<li><a href="#"><i class="fas fa-angle-right"></i></a></li>
			</ul>
		</div>
	</div>


</body>
</html>