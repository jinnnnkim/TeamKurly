<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe to You :: 내일의 장보기, 레시피투유</title>
<link href="/recipetoyou/Resources/User/Css/login.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div class="main">
		<div class="login">
			<h3>로그인</h3>
			<div class="info">
				<input type="text" placeholder="아이디를 입력해주세요" />
			</div>
			<div class="info">
				<input type="text" placeholder="비밀번호를 입력해주세요" />
			</div>
			<div class="text">
				<span class="security"><label><input type="checkbox" />보안접속</label></span>
				<span class="findUser"><a href="#none">아이디찾기</a> | <a
					href="#none">비밀번호 찾기</a></span>
			</div>
			<div class="btn">
				<a class="login" href="#none">로그인</a><br />
				<br /> <a class="join" href="join.jsp">회원가입</a>
			</div>
		</div>
	</div>
</body>
</html>