<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage2/mypageInfo.css"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/addresslist.css" rel="stylesheet"
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
	<div class="content">
		<div class="address_main">
			<div class="head">
				<h2 class="title">
					배송지 관리 <span class="subtitle">배송지에 따라 상품정보 및 배송유형이 달라질 수있습니다.</span>
				</h2>
				<a href="" class="address_search" onclick="addAddr()">+ 새배송지 추가</a>
			</div>
			<!-- head -->
			<table class="head_cate">
				<tr>
					<th class="title_select">선택</th>
					<th class="title_address">주소</th>
					<th class="title_name">받으실 분</th>
					<th class="title_phone">연락처</th>
					<th class="title_delivery">배송유형</th>
					<th class="title_modify" onclick="popupOpen()">수정</th>
				</tr>
			
			</table>
		
		
		<c:forEach var="addressList" items="${addressList}">	
			<table class="address_content">
				<tr>
					<td class="select_btn">
						<input type="radio" name="select"></td>
					<td class="address">
						<p class="basic_address">기본 배송지</p>
						<p class="detail_address">${addressList.addr}</p>
					</td>
					<td class="name">${addressList.user_name}</td>
					<td class="phone">${addressList.user_phone}</td>
					<td class="delivery_type"><p>${addressList.delivery_type}</p></td>
					<td class="modify"><a href="addrModify.jsp" class="modify_pop"
						onclick="window.open(this.href, '_blank', 'width=600px, height=600px, toolbars=no, scrollbars=no'); return false;">
						<img src="/recipetoyou/Resources/User/Img/Mypage2/ico_modify_x2.png"></a> 
					</td>
				</tr>	
			</table>
		</c:forEach>
			
		</div>
		<%--address_main end --%>
	</div>
	<%--content end --%>
	
	
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>

		 function addAddr() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                
		                var addr = ''; 
		                var extraAddr = ''; 

		                if (data.userSelectedType === 'R') { 
		                    addr = data.roadAddress;
		                } 
		                else { 
		                    addr = data.jibunAddress;
		                }

		                if(data.userSelectedType === 'R'){
		                	
		                    document.getElementById("findAddr").value = extraAddr;

		                } else {
		                    document.getElementById("findAddr").value = '';
		                }

		                document.getElementById('zipcode').value = data.zonecode;
		                document.getElementById("jibunAddress").value = addr;
		                document.getElementById("roadAddress").value = addr;
		                document.getElementById("namugiAddress").focus();
		            }
		        }).open();
		    }
		
	</script>
</body>
</html>










