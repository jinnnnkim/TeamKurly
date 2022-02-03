<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/orderlist.css" rel="stylesheet"
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
	<div class="content">
		<div class="order_main">
			<div class="head">
				<h2 class="title">
					주문 내역 <span class="subtitle">지난 3년간의 주문 내역 조회가 가능합니다</span>
				</h2>
				<select class='data_year'>
					<option value='all_year' selected>전체기간</option>
					<option value='2022'>2022</option>
					<option value='2021'>2021</option>
					<option value='2020'>2020</option>
				</select>
			</div>
			
		<!-- head -->
		<c:forEach var="orderList" items="${orderList }">
			<div class="order_list">
				<div class="order_date_wrap">
					<span class="order_date">${orderList.ord_date}</span>
				</div>
				<div class="orderlist_wrap">
					<div class="order_tit">
						<a>${orderList.prod_name}</a>
						<i class="fas fa-chevron-right"></i>
					</div>
					
					<div class="order_info">
						<div class="order_info_img">
							<a><img alt="" src="/recipetoyou/Resources/User/Img/goods1.jpg"></a>
						</div>
						<!-- order_info_img -->
						<div class="desc">
							<dl>
								<dt>주문번호</dt>
								<dd>${orderList.ord_code}</dd>
							</dl>
							<dl>
								<dt>결제금액</dt>
								<dd>${orderList.price}원</dd>
							</dl>
							<dl>
								<dt>주문상태</dt>
								<dd>${orderList.status}</dd>
							</dl>
						</div>
						<!-- desc -->	
					
					</div>
					<!-- order_info -->
					<div class="order_status">
						<span class="inner_status">
						1:1 문의
						</span>
					</div>
					<!-- order_status -->
					
					
				</div>
				<!-- orderlist_wrap -->
			</div>
			<!-- order_list -->
			
		</c:forEach>		
			
		</div>
		<!-- order_main -->
	</div>
	<%--content end --%>
</body>
</html>


















