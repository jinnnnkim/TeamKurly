<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="/recipetoyou/resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/cart.css"
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
<link href="/recipetoyou/Resources/User/Img/Mypage2/KurlyIcon.png"
	rel="icon" type="image/x-icon" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
		<div class="body">
			<div class="title">
				<h2>장바구니</h2>
			</div>
			<!-- title -->
			<div class="content">
				<div class="cart_main">
					<div class="cart_select">
						<label> <input type="checkbox" checked> <span>전체선택(1/1)</span>
						</label> <a href="#" class="select_delete_btn"> <span
							class="btn_delete_all"> </span> 선택삭제
						</a>
					</div>
					<!-- cart_select -->

				
					<div class="cartlist">
						<label class="inn_check"> <input type="checkbox" checked>
						</label>

				<c:forEach var="cartkList" items="${cartkList}">
						<div class="item">
							<a href="#"> 
							<img alt="thumbnail"
								src="/recipetoyou/Resources/User/Img/Mypage2/thumbnail.jpg"
								class="thumbnail">
								${cartkList.prod_img}
							</a>

							<div class="subject">
								<a href="" class="subject_tit">${cartkList.prod_name}</a> 
								<span class="subject_in">${cartkList.prod_content}</span>
							</div>


							<div class="inner_option">
								<!-- inner_option -->
								<button type="button" class="btn down">
									<i class="fas fa-minus"></i>
								</button>
								<input type="number" readonly="readonly" class="inp" value="1">
								<button type="button" class="btn up">
									<i class="fas fa-plus"></i>
								</button>
							</div>
							<!-- inner_option  -,+ 구매수량 -->

							<div class="item_prices">
								<span class="price"><span id="itemPrice"class="num">${cartkList.prod_price}</span>원</span>
							</div>

							<div class="cancle">
								<i class="fas fa-window-close"></i>
							</div>

						</div>
						<!-- item -->		
					</c:forEach>
					</div>
					<!-- cartlist  -->
				</div>
				
				<div class="bills">
					<div class="billsInfo">
						<div class="deliverTitle">배송지</div>
						<div class="address">서울특별시 강남구 서초대로</div>
						<div class="deliveryType">샛별배송</div>
						<div class="changeBtn">
							<button class="changeAddress">배송지 변경</button>
						</div>
						<div class="TotalPriceWrap">
							<div class="TotalPrice">
								<div class="prodPrice">
									<span class="txt">상품금액</span>
									<span class="price"><span id="basicPrice" class="num">0</span>원</span>
								</div>
								<div class="prodDiscount">
									<span class="txt">상품할인금액</span>
									<span class="price"><span id="discountPrice" class="num">${cartkList.prod_discount}</span>원</span>
								</div>
								<div class="deliveryPrice">
									<span class="txt">배송비</span>
									<span class="price"><span id="deliveryPrice" class="num">0</span>원</span>
								</div>
								<hr/>
								<div class="prePayment">
									<span class="txt">결제예정금액</span>
									<span class="price"><span id="totalPrice" class="num">0</span>원</span>
								</div>
								<div class="reserve">구매 시 290원 적립</div>
							</div>
						</div>
					</div>
					
					<div class="orderBtn">
						<button class="btn" onclick="location.href=${contextPath}/">주문하기</button>
					</div>
					
				
						
					<div class="info">
						<span>쿠폰/적립금은 주문서에서 사용 가능합니다</span><br /> <span>‘입금확인’ 상태일
							때는 주문 내역 상세에서 직접 주문취소가 가능합니다.</span><br /> <span>‘입금확인’ 이후 상태에는
							고객센터로 문의해주세요.</span>
					</div>

				</div>
				<!-- cart_main -->
			</div>
		</div>
		<!-- body -->
	<script>
		$(document).ready(function() {
			var prodAmount = $(".inp").val();
			$('#basicPrice').text($("#itemPrice").text());
			$('#totalPrice').text($("#itemPrice").text());
			$(".down").click(function() {
				if (prodAmount > 1) {
					prodAmount = parseInt(prodAmount) - 1;
					$(".inp").val(prodAmount);
				} else {
					alert('구매수량은 1개 이상이여야 합니다.');
				}
				priceInfo(prodAmount);
			});

			$(".up").click(function() {
				prodAmount = parseInt(prodAmount) + 1;
				console.log(prodAmount);
				$(".inp").val(prodAmount);
				priceInfo(prodAmount);
				
			});
		
			

		});
		
	function removeStr(doc, str){
		doc = doc.replace(str,"");
		return doc;
	}
	function addStr(doc,str){
		doc = String(doc);
		var length = doc.length;
		if(length >= 8){
			doc = doc.slice(0,5)+str+doc.slice(2,length);
		}else if(length >= 7){
			doc = doc.slice(0,4)+str+doc.slice(2,length);
		}else if(length >= 6){
			doc = doc.slice(0,3)+str+doc.slice(3,length);
		}else if(length >= 5){
			doc = doc.slice(0,2)+str+doc.slice(2,length);
		}else if(length >= 4){
			doc = doc.slice(0,1)+str+doc.slice(1,length);
		}else{
			doc = doc;
		}
		console.log("add "+doc);
		return doc;
	}
	
	
	function priceInfo(prodAmount){
		var item_price = $("#itemPrice").text();
		item_price = removeStr(item_price,",");
		var basicPrice = $('#basicPrice').text();
		basicPrice = removeStr(basicPrice,",");
		var discountPrice = $('#discountPrice').text();
		if(discountPrice != 0){
			discountPrice = removeStr(discountPrice,",");
		}else{
			discountPrice = 0;
		}
		var deliveryPrice = $('#deliveryPrice').text();
		if(deliveryPrice != 0){
			deliveryPrice = removeStr(deliveryPrice,",");
		}else{
			deliveryPrice = 0;
		}
		var resultStr = (item_price * (prodAmount+1)- item_price + deliveryPrice);
		var result = addStr(resultStr,",");
		
		$('#totalPrice').text(result);
	}
		
	</script>
</body>
</html>




















