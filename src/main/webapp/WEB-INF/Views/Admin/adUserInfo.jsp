<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원정보</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../resources/Admin/Css/aduserInfo.css">
</head>
<body>
	<div class="wrap">
	
	<div class="title">
	<c:out value="${param.user_id }"/> 님의 회원 정보입니다.
	</div>
	
	<form action="">
		<%-- <table>
		<c:forEach var="user" items="${userList }">
			<tr>
				<td>이름(닉네임)</td>
				<td>${user.user_name }</td>
				<td>추천인 아이디</td>
				<td>${user.suggest_id }</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${user_user_id }</td>
				<td>생일</td>
				<td>${user.user_birth }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${user.user_gender }</td>
				<td>가입일시</td>
				<td>${user.joinDate }</td>
			</tr>
			<tr>
				<td>회원등급</td>
				<td colspan="3">${user.user_grade_id }</td>
			</tr>
			<tr>
				<td>휴대전화</td>
				<td>${user.user_hp }</td>
				<td>이메일</td>
				<td>${user.email }</td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3">${user.user_addr }</td>
			</tr>
			<tr>
				<td>적립금</td>
				<td>${user.user_point }</td>
				<td>쿠폰</td>
				<td>${user.user_couponidx }</td>
			</tr>
			<tr>
				<td>뉴스레터 수신</td>
				<td>${user.user_emailOk }</td>
				<td>문자메시지 수신</td>
				<td>${user.user_smsOk }</td>
			</tr>

		</table> --%>
		<div class="adUserData">
		<table border="1">
			<tr>
				<td width="8%" bgcolor="#DCDCDC">이름(닉네임)</td>
				<td width="16%">이재훈(닉훈)</td>
				<td width="8%" bgcolor="#DCDCDC">추천인 아이디</td>
				<td width="16%"></td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">아이디</td>
				<td>kim1z63</td>
				<td bgcolor="#DCDCDC">생일</td>
				<td>1970년 1월 1일</td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">성별</td>
				<td>남성</td>
				<td bgcolor="#DCDCDC">가입일시</td>
				<td>2021-12-28</td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">회원등급</td>
				<td colspan="3">일반 회원 : 전월 실적 15만원 미만(결제 금액+적립금 사용액)</td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">휴대전화</td>
				<td>000-0000-0000</td>
				<td bgcolor="#DCDCDC">이메일</td>
				<td>kim1z63@gmail.com</td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">주소</td>
				<td colspan="3">[245-713] 강원 삼척시 사직동 동양시멘트 788</td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">적립금</td>
				<td>1000원</td>
				<td bgcolor="#DCDCDC">쿠폰</td>
				<td></td>
			</tr>
			<tr>
				<td bgcolor="#DCDCDC">뉴스레터 수신</td>
				<td>수신동의</td>
				<td bgcolor="#DCDCDC">문자메시지 수신</td>
				<td>수신동의</td>
			</tr>

		</table>
		</div>
		
		<div class="title">
		관리자메모
		</div>
		
		<div class="adminMemo">
			<table>
				<tr>
					<td width="8%" height="120px" bgcolor="#DCDCDC">관리자메모</td>
					<td width="40%" height="120px"><input type="text" name="memo"></td>
				</tr>
				<%-- </c:forEach> --%>
			</table>
		</div>
		<input type="button" value="수정하기">
		<input type="button" value="뒤로가기">
	</form>
	</div>
</body>
</html>
