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
					주문내역상세
				</h2>
				<div class="order_num">
				주문번호
				</div>
				<div class="sub_link">
					배송 또는 상품에 문제가 있나요?
					<a class="qb_link" href="${contextPath}/notice/noticeOneToOneQuestionDetail.do">1:1 문의하기</a>
				</div>
			</div>
			<!-- head -->
			<div class="pickpick">
	
					<div class="pick_add_list">
						<div>
							<img id="thumbnail"
								src="/recipetoyou/Resources/User/Img/Mypage2/thumbnail.jpg">
						</div>
						<div class="subject">
							<a href="">상품 이름</a>
							
							<div class="goods_content">
								<span class="goods_sub">상품 내용</span>
							</div>
							
							<div class="goods_price">
								 <span class="goods_discountPrice">10,000원</span>
								 <span class="goods_costPrice">15,000원</span>
							</div> 
							
							<!-- price -->
						</div>
						<!-- subject -->
						
						<div class="button_two">	<!-- 쿼리스트링으로 넘어가는 값은 파라미터=값(파라미터 이름으로 적용) -->
							<a href="#">
								<button class="btn_review">후기완료</button>
							</a>
							<br/>
							<button class="btn_add">
								<i class="fas fa-shopping-cart"></i>담기
							</button>
						</div>
						<!-- button_two -->
					</div>
					<!-- pick_add_list -->
		
				</div>
				<!-- pickpick -->
				
				<div class="order_cancle">
					<div class="inner_cancle">
						<button type="button" class="all_cart">전체 상품 다시 담기</button>
						<button type="button" class="all_cart_cancle">전체 상품 주문 취소</button>
					</div>
					<p class="cancle_notice">주문취소는 ‘배송준비중’ 이전 상태일 경우에만 가능합니다.</p>
				</div>
				
				
				
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














