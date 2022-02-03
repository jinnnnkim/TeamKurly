<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css">
<link href="/recipetoyou/resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage2/QandA.css"
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
<link href="/recipetoyou/Resources/User/Img/Mypage2/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<body>
		<div class="content">
			<div class="review_main">
				<div class="head">
					<h2 class="title">상품문의</h2>
					<ul>
						<li>· 상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
							게시판으로 이동될 수 있습니다.</li>
						<li>· 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내<a href="">
								1:1문의</a>에 남겨주세요.
						</li>
					</ul>
				</div>
				<!-- head -->
				<table class="QandA_main">
					<tr>
						<th class="empty"></th>
						<th class="title">제목</th>
						<th class="date">작성일</th>
						<th class="reply">답변상태</th>
					</tr>
				</table>
				<!-- QandA_main -->
				<div class="QandA_content">
					<ul>
						<li>작성한 상품 문의가 없습니다.</li>
					</ul>
				</div>
				<!-- QandA_content -->
				<div class="paging_navi">
					<button type="button" class="paging_prev">
						<i class="fas fa-chevron-left"></i>
					</button>
					<button type="button" class="paging_next">
						<i class="fas fa-chevron-right"></i>
					</button>
				</div>
				<!-- paging_navi -->
			</div>
			<!-- review_main -->
		</div>
		<!-- content -->
</body>
</html>












