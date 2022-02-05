<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    
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
						<label> <input type="checkbox" name="checkItem" value="selectall" onclick="selectAll(this)"> 
							<span>전체선택(1/1)</span>
						</label>
					</div>
					<!-- cart_select -->

				
		<c:forEach var="cartList" items="${cartList}">	
					<div class="cartlist">
						
						<label class="inn_check"> <input type="checkbox" name="checkItem" >
					</label>
	
						<div class="item">
												<!-- 이미지 정보가 담기도록 함. -->
						<div class="image_wrap" data-prod_code="${cartList.imageList[0].prod_code}" data-path="${cartList.imageList[0].uploadPath}"
												data-uuid="${cartList.imageList[0].uuid}" data-filename="${cartList.imageList[0].fileName}">
							<a href="#"> 
							<img alt="thumbnail"
								src="/recipetoyou/Resources/User/Img/Mypage2/thumbnail.jpg" class="thumbnail">
							</a>
						</div>
							<div class="subject">
								<a href="#" class="subject_tit">${cartList.prod_name}</a> 
								<span class="subject_in">${cartList.prod_content}</span>
							</div>


							<div class="inner_option">
								<!-- inner_option -->
								<button type="button" class="btn down${cartList.prod_code }">
									<i class="fas fa-minus"></i>
								</button>
								<input type="number" readonly="readonly" class="inp" value="1">
								<button type="button" class="btn up${cartList.prod_code }">
									<i class="fas fa-plus"></i>
								</button>
							</div>
							<!-- inner_option  -,+ 구매수량 -->
								
						

							<div class="cancle">
								<a href="${contextPath}/removeCart.do?prod_name=${cartList.prod_name}">
									<i class="fas fa-window-close"></i>
								</a>
							</div>
						
						
							<div class="totalItem_prices">
								 <span class="item_prices"><span id="itemPrice" class="num">${cartList.prod_price}</span>원</span> 
							</div>
							<!-- totalItem_prices -->

						</div>
						<!-- item -->	
					
					</div>
					<!-- cartlist -->
					</c:forEach>		
				</div>
				
			
		<c:forEach var="cartList" items="${cartList}">	
				<div class="bills">
					<div class="billsInfo">
						<div class="deliverTitle">배송지</div>
						<div class="address">${cartList.addr }</div>
						<div class="deliveryType">${cartList.delivery_type }</div>
						<div class="changeBtn">
							<button class="changeAddress" onclick="daumPostcode()">배송지 변경</button>
						</div>
						<div class="TotalPriceWrap">
							<div class="TotalPrice">
								<div class="prodPrice">
									<span class="txt">상품금액</span>
									<span class="price"><span id="basicPrice" class="num">0</span>원</span>
								</div>
								<div class="prodDiscount">
									<span class="txt">상품할인금액</span>
									<span class="price"><span id="discountPrice" class="num">${cartList.prod_discount }</span>원</span>
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
								<div class="reserve">구매 시${cartList.prod_point }원 적립</div>
							</div>
						</div>
					</div>
				
					<div class="orderBtn">
						<button class="btn" action=${contextPath}/user/order.do">주문하기</button>
					</div>
					
			</c:forEach>
						
					<div class="info">
						<span>쿠폰/적립금은 주문서에서 사용 가능합니다</span><br /> <span>‘입금확인’ 상태일
							때는 주문 내역 상세에서 직접 주문취소가 가능합니다.</span><br /> <span>‘입금확인’ 이후 상태에는
							고객센터로 문의해주세요.</span>
					</div>

				</div>
				<!-- content -->
			</div>
			<!-- cart_main -->
		</div>
		<!-- body -->
		
		
	<script>
		$(document).ready(function() {
			var prodAmount = $(".inp").val();
			$('#basicPrice').text($("#itemPrice").text());
			$('.totalPrice').text($("#itemPrice").text());
			$(".down").click(function() {
				console.log("down");
				let aa1 = $(this).parent("div").find(".inp");
				let aa = $(this).parent("div").find(".inp").val();
				if (aa > 1) {
					aa = parseInt(aa) - 1;
					aa1.val(aa);
				} else {
					alert('구매수량은 1개 이상이여야 합니다.');
				}
				
			});

			$(".up").click(function() {
				console.log("up");
				let aa1 = $(this).parent("div").find(".inp");
				let aa = $(this).parent("div").find(".inp").val();
				aa = parseInt(aa) + 1;
				aa1.val(aa);
				
			});
			
			//이미지 삽입
			$(".image_wrap").each(function(i, obj){
				
				const bobj = $(obj);
				if(bobj.data("prod_code")){
					
					const uploadPath = bobj.data("path");
					const uuid = bobj.data("uuid");
					const fileName = bobj.data("filename");
					
					const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
					
					$(this).find("img").attr('src', '${contextPath}/adgoods/getImageInfo.do?fileName=' + fileCallPath);
					
					}else {
						$(this).find("img").attr('src', '/recipetoyou/Resources/Admin/Img/SubgoodsImg/ready.jpg');
					}
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
		
	
	//전체 체크
	function selectAll(selectAll) {
			
		const checkboxes = document.getElementsByName('checkItem');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
	}
	
	
	
	//배송지 변경_미완
	 function daumPostcode() {
               new daum.Postcode({
                   oncomplete: function(data) {
                      
                       var roadAddr = data.roadAddress; // 도로명 주소 변수
                       var extraRoadAddr = ''; 
                      
                       if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                           extraRoadAddr += data.bname;
                       }
                       // 건물명이 있고, 공동주택일 경우 추가한다.
                       if(data.buildingName !== '' && data.apartment === 'Y'){
                           extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                       }
                      
                       // 우편번호와 주소 정보를 해당 필드에 넣는다.
                       document.getElementById('postcode').value = data.zonecode;
                       document.getElementById("roadAddress").value = roadAddr;
                   }
               }).open();
           }
	
	
	
	</script>
</body>
</html>




















