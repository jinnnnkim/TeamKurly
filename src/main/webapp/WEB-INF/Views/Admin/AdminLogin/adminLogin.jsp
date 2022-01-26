<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 로그인</title>
<link rel="stylesheet"
	href="/Resources/Admin/Css/AdminLogin/adminLogin.css">
<script type="text/javascript" src="adminLogin.js"></script>
<c:choose>
		<c:when test="${param.result == 'loginFailed' }">
			<script type="text/javascript">
				window.onload = function(){
					alert("아이디나 비밀번호가 틀립니다. 다시 로그인하세요!");
				}
			</script>
		</c:when>
	</c:choose>
</head>
<body class="homeBody">
	<div class="wrap">

		<div class="main-content">
			<form method="post" action="" name="userInfo"
				onsubmit="return checkValue()">
				<table class="admin_login" align="center">
					<caption>| 현재 아이디/패스워드</caption>
					<!-- 				로그인한 관리자 아이디와 비밀번호를 <td></td> 태그 안에 제이쿼리나 자바스크립트로 보여준다.
								우선 input 박스로 만들어 두었습니다. 이거 나중에 삭제하고 여기에 제이쿼리에서 아이디가 출력되도록 해야합니다.-->
					<tr>
						<th>아이디</th>
						<td><input id="adminName" name="title" size="10"
							maxlength="50"></td>
						<th>패스워드</th>
						<td><input id="adminPwd" name="title" size="10"
							maxlength="50"></td>
					</tr>
				</table>
				<!-- 관리자의 아이디 비밀번호를 변경하는 테이블이다.  -->

				<table class="admin_change" align="center">
					<caption>| 변경하실 아이디/ 패스워드</caption>
					<tr>
						<th>아이디</th>
						<td><input id="name" name="title" size="50" maxlength="100"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input id="pwd" name="title" size="50" maxlength="100"></td>
					</tr>
					<tr>
						<th>패스워드 확인</th>
						<td><input id="repwd" name="title" size="50" maxlength="100"></td>
					</tr>
				</table>
				<!-- 우선 필요한 부분의 자바스크립트를 붙여놨고.  -->
				<!-- <script type="text/javascript">
	    
						    function validate() {
						        //event.preventDefault();
						        var objID = document.getElementById("my_id");
						        var objPwd1 = document.getElementById("my_pwd");
						        var objPwd2 = document.getElementById("my_pwd2");
						        if ((objPwd2.value=="")){
						            alert("비밀번호를 입력해 주세요");
						            objPwd2.focus();
						            return false;
						        }
						 
						        //비밀번호 유효성 검사
						        //만약 내가 비밀번호에 정규화 방식을 하나라도 지키지 않으면 if문 안으로 들어가서 alert message를 띄움
						        if (!check(regul1,objPwd1,"비밀번호는 4~12자의 대소문자와 숫자로만 입력 가능합니다.")) {
						            return false;
						        }
						        
						        //비밀번호와 비밀번호 확인이 일치 하지 않을 경우
						        if ((objPwd1.value)!=(objPwd2.value)) {
						            alert("비밀번호가 일치 하지 않습니다.");
						            objPwd1.focus();
						            objPwd2.focus();
						            return false;
						        }
						        
						</script> -->



				<!-- 리셋버튼 /수정버튼 -->
				<!--수정버튼은 아직 자바스크립트나 제이쿼리를 적용 못했다. -->
				<table class="button" align="center">
					<tr>
						<td><input type="reset" value="리셋" />
						 <input type="submit"
							value="수정" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>