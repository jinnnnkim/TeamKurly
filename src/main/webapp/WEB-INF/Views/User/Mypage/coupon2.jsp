<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css" type="text/css">
<link href="/recipetoyou/Resources/User/Css/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/coupon.css" rel="stylesheet"
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
</head>
<body>
	<div class="main">
		<div class="content">
			<div class="head">
				<h2 class="title">쿠폰</h2>
			</div>
			<!-- head -->
			<div class="couponInfo">
				<input type="text" class="couponNum" placeholder="쿠폰을 입력해주세요">
				<button type="submit" class="addCoupon" onclick="location.href=''">쿠폰 등록</button>
				<p class="noticeInfo">쿠폰에 하이픈("-")이 포함되어 있을 경우 하이픈("-")을 반드시 입력해주세요.</p>
			</div>
			<!-- coupon_info -->
			<div class="notice">
				<div class="noticeMain">· 쿠폰은 적용 가능한 상품이 따로 적용되어 있는 경우 해당 상품 구매 시에만 사용이 가능합니다.</div>
				<div class="couponAmount">사용가능쿠폰: 0장</div>
			</div>
			<!-- notice -->
			<table class="couponCate">
				<tr>
					<th class="cateName">쿠폰명</th>
					<th class="cateFunction">기능</th>
					<th class="cateBenefit">할인/적립</th>
					<th class="cateVaild">사용가능기간</th>
					<th class="cateCheck">사용여부</th>
				</tr>
			</table>
			<!-- couponCate -->
			<table class="couponList">
				<tr>
					<th class="couponName">
						<div class="coupon">설 10만원쿠폰(1백만원주문시,~1/31오후11시)</div>
						<p>1,000,000원 이상 주문 시</p>
						<p>특정상품 한정</p>
						<div class="terms">
							<a href="" onclick="window.open('');">사용조건 보기</a>
						</div>
					</th>
					<th class="couponFunction">할인</th>
					<th class="couponBenefit">100,000원</th>
					<th class="couponVaild">22.01.31 23시까지</th>
					<th class="couponCheck">미사용</th>
				</tr>
			</table>
			<!-- couponList -->
			
			<table>
				<c:forEach var="couponList" items="${couponList}">
					<tr>
						<td>${couponList.cp_use_cods }</td>
						<td>${couponList.cp_code }</td>
						<td>${couponList.cp_payment_details }</td>
						
					</tr>
				
				
				</c:forEach>
			
			</table>
			
			
			
			
		</div>
		<!-- content -->
	</div>
	<!-- main -->
</body>
</html>


















