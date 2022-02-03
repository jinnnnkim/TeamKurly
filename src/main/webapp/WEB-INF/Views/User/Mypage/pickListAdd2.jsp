<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 목록</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/picklist_add.css"
	rel="stylesheet" type="text/css">
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
		<div class="pickadd_main">
			<div class="head">
				<h2 class="title">
					찜한 상품() <span class="subtitle">찜한 상품은 최대 200개까지 저장됩니다.</span>
				</h2>
			</div>
			<!-- head -->
			<div class="pickpick">
		<c:forEach var="pickList" items="${pickList}">
					<div class="pick_add_list">
						<div>
							<img id="thumbnail"
								src="/recipetoyou/Resources/User/Img/Mypage2/thumbnail.jpg">
						</div>
						<div class="subject">
							<a href="">${pickList.prod_name}</a>
							<div class="price">
								<span class="discountRate">${pickList.prod_discount}%</span> <span class="discountPrice">3,627원</span>
								<span class="costPrice">${pickList.prod_price}원</span>
							</div>
							<!-- price -->
						</div>
						<!-- subject -->
						<div class="button_two">	<!-- 쿼리스트링으로 넘어가는 값은 파라미터=값(파라미터 이름으로 적용) -->
							<a href="${contextPath}/removePick.do?prod_name=${pickList.prod_name}">
								<button class="btn_delete">삭제</button>
							</a>
							<br/>
							<button class="btn_add">
								<i class="fas fa-shopping-cart"></i>담기
							</button>
						</div>
						<!-- button_two -->
					</div>
					<!-- pick_add_list -->
			</c:forEach>
				</div>
				<!-- pickpick -->
			</div>
			<!-- pickadd_main -->
		</div>
		<!-- content -->
	
		
<script type="text/javascript">
	$(".btn_add").click(function () {
		
		var check = confirm("상품이 장바구니에 담겼습니다. 확인하시겠습니까?");
		
		if(check) {
			location.assign("cart.do");
		}
		
	})
	
	
</script>
	
</body>
</html>














