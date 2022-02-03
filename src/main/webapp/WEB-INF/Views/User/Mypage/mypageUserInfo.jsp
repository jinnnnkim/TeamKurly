<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 정보 수정</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/mypageUserInfo.css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
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
				<h2 class="title">개인 정보 수정</h2>
			</div>
			<!-- head -->
			<table class="myInfoMain">
				<tr>
					<th>아이디</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>현재 비밀번호</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>새 비밀번호</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>새 비밀번호 확인</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text"></td>
				</tr>
				<tr class="email">
					<th>이메일</th>
					<td><input type="text"> <a href="" onclick="">중복확인</a>
					</td>
				</tr>
				<tr class="phone">
					<th>휴대폰</th>
					<td><input type="text"> <a href="" onclick="">다른번호 인증</a></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<label><input type="radio" name="gender">남자	</label>
						<label><input type="radio" name="gender">여자</label>
						<label><input type="radio" name="gender">선택안함</label>
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<div class="birth">
							<input type="text" placeholder="YYYY">/ 
							<input type="text" placeholder="MM">/ 
							<input type="text" placeholder="DD">
						</div>
					</td>
				</tr>
				<tr class="privacyContract">
					<th>선택약관 동의</th>
						<td><input type="checkbox" name="privacy" checked> <span>개인정보 수집·이용 동의</span> 
							<span class="select">(선택)</span> 
							<a href="" class="view_contract">약관보기<i class="fas fa-chevron-right"></i></a>
						</td>
				</tr>
				<tr class="userContract">
					<th>이용약관동의</th>
						<td><input type="checkbox" name="user"> <span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의</span>
							<span class="select">(선택)</span>
						</td>
				</tr>
				<tr class="smsEmail">
					<th></th>
						<td><input type="checkbox" name="sms"> <span>SMS</span>
							<input type="checkbox" name="email"> <span>이메일</span>
						</td>
				</tr>
			</table>
			<div class="form_footer">
				<a href="">탈퇴하기</a>
				<button type="submit">회원정보수정</button>
			</div>
			<!-- form_footer -->
		</div>
		<!-- content -->
	</div>
	<!-- main -->
</body>
</html>













