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
	<link rel="stylesheet" href="/Resources/Admin/Css/AdUser/aduserInfo.css">
	<link rel="stylesheet" href="/Resources/Admin/Css/HomePageHeaderSide/reset.css">
</head>
<body>

	<!-- aduserList.jsp 에서 이름 클릭시 나오는 회원정보창
		항목은 조금 수정했음.
	 -->
	<div class="wrap">
	
	<div class="mainTitle">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  		<path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
		</svg>
		회원 상세 정보
	</div>
	
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
		<table id="userTable">
			<tr>
				<td class="grayBg">이름(닉네임)</td>
				<td class="whiteBg">이재훈<div class="skyblueFont">(닉훈)</div></td>
				<td class="grayBg">추천인 아이디</td>
				<td class="whiteBg"></td>
			</tr>
			<tr>
				<td class="grayBg">아이디</td>
				<td class="whiteBg">kim1z63</td>
				<td class="grayBg">생일</td>
				<td class="whiteBg">1970년 1월 1일</td>
			</tr>
			<tr>
				<td class="grayBg">성별</td>
				<td class="whiteBg"><div class="skyblueFont">남성</div></td>
				<td class="grayBg">가입일시</td>
				<td class="whiteBg">2021-12-28</td>
			</tr>
			<tr>
				<td class="grayBg">회원등급</td>
				<td class="whiteBg"><b>일반 회원</b></td>
				<td class="grayBg">최종로그인</td>
				<!-- 클릭시 회원로그인기록 loginRecord.jsp 페이지로 이동 -->
				<td "whiteBg"><a href="loginRecord.jsp"><div class="skyblueFont">[LOG]</div></a></td>
			</tr>
			<tr>
				<td class="grayBg">휴대전화</td>
				<td class="whiteBg">000-0000-0000</td>
				<td class="grayBg">이메일</td>
				<td class="whiteBg">kim1z63@gmail.com</td>
			</tr>
			<tr>
				<td class="grayBg">주소</td>
				<td class="whiteBg" colspan="3">[245-713] 강원 삼척시 사직동 동양시멘트 788</td>
			</tr>
			<tr>
				<td class="grayBg">적립금</td>
				<td class="whiteBg">1000원</td>
				<td class="grayBg">쿠폰</td>
				<td class="whiteBg"></td>
			</tr>
			<tr>
				<td class="grayBg">뉴스레터 수신</td>
				<td class="whiteBg">수신동의</td>
				<td class="grayBg">문자메시지 수신</td>
				<td class="whiteBg">수신동의</td>
			</tr>

		</table>
		</div>
		
		<div class="title">
		관리자메모
		</div>
		
		<div class="adminMemo">
			<table>
				<tr>
					<td class="memograyBg">관리자메모</td>
					<td class="memowhiteBg"></td>
				</tr>
				<%-- </c:forEach> --%>
			</table>
		</div>
		<!-- ★버튼 2개 가운데 정렬 필요-->
		<!-- 버튼 클릭시 alert창 띄우기 js구현되어있음 -->
		<button type="button" class="modBtn" onclick="location.href='moduserInfo.jsp'">수정하기</button>
		<button type="button" class="backBtn" onclick="location.href='aduserList.jsp'">뒤로가기</button>
	</form>
	</div>
</body>
</html>