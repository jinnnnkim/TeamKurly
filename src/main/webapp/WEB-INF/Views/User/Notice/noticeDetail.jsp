<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<link href="/recipetoyou/Resources/User/Css/Notice2/noticeDetail.css"
	rel="stylesheet" type="text/css">
<link href="/recipetoyou/Resources/User/Css/reset.css" rel="stylesheet"
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
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<body>
	<div class="noticeTitle">
		<h2>공지사항</h2>
		<span>컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
	</div>
	<div class="detailTable">
		<table>
			<tr>
				<th class="td1">제목</th>
				<td class="td2"><span>[마켓컬리] CJ대한통운 택배 파업으로 인한 주문불가지역 안내</span></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td class="td3"><span>MarketKurly</span></td>
			</tr>

			<tr>
				<td colspan="2">
					<ul>
						<li class="dateTitle">작성일</li>
						<li class="writeDate"><span>2022-01-04</span></li>
						<li class="hitTitle">조회수</li>
						<li class="hit"><span>1072</span></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="contentRow" colspan="3">
					<div class="content">
						<br /> 안녕하세요. 마켓컬리입니다.<br />
						<br /> CJ대한통운 택배 노조 파업 영향으로 일부 지역의 택배배송이 원활하지 않습니다.<br /> 이로 인해
						배송현황이 원할하지 않은 일부 지역은 일시적으로 주문이 불가한 점 안내 드립니다.<br />
						<br /> ■ 주문불가지역 (1월 3일 22시 이후부터)<br /> &nbsp;- 경기: 광주시, 군포시, 김포시,
						성남시, 이천시, 포천시, 여주시, 안성시<br /> &nbsp;- 세종: 연동면<br /> &nbsp;- 충남:
						홍성군<br /> &nbsp;- 충북: 단양군<br /> &nbsp;- 강원: 동해시, 삼척시, 양구군, 인제군,
						춘천시, 화천군<br /> &nbsp;- 울산: 남구<br /> &nbsp;- 경남: 의령군<br /> &nbsp;-
						경북: 경주시<br />
						<br />
						<br /> 이용에 불편을 드려 죄송합니다.<br /> 택배 파업이 해결되는 즉시 주문 재개할 수 있도록 하겠습니다.<br />
						<br /> 마켓컬리 드림.<br />
						<br />
						<br />
					</div>
				</td>
			</tr>
			<tr>
				<td class="btn" colspan="3"><a class="noticeList"
					href="${contextPath}/notice/notice.do">목록</a></td>
			</tr>
		</table>
	</div>
	<div class="prevNextBox">
		<ul>
			<li><strong><i class="fas fa-angle-up"></i>&nbsp;이전글</strong><a
				href="${contextPath}//notice/noticeDetail.do">[가격인상공지][피코크]순희네 빈대떡 (2022. 1. 3~)</a></li>
			<li><strong><i class="fas fa-angle-down"></i>&nbsp;다음글</strong><a
				href="${contextPath}//notice/noticeDetail.do">[마켓컬리]근무자 코로나19 확진 관련 안내</a></li>
		</ul>
	</div>
</body>
</html>