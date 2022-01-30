<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:if test="${admin.adminId == null }">
	<script>
		alert("관리자 로그인 후 이용이 가능합니다.");
		location.href="${contextPath}/adLogin.do";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/FAQRegistration/faqRegistration.css">
	<meta charset="UTF-8">
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<title>FAQ 정보 등록</title>
</head>
<body>
	<div class="wrap">
		<div class="main-content">
			<form action="" method="POST" name="userComment" autocomplete="off" name="basic_form">
				<table class="subtitle" align="center">
					<caption>| FAQ기본정보</caption>
					<tr>
						<th>FAQ분류</th>
						<td>
							<select name="selectChar">
								<option value="1">-분류선택-</option>
								<option value="2">서비스관련</option>
								<option value="3">예약관련</option>
								<option value="4">적립금/결제관련</option>
							</select> 
							<span> 
								"+분류설정은"<a href="#">[FAQ관리 환경설정> 카테고리설정]</a>"에서 가능합니다."
							</span>
						</td>
					</tr>
					<tr>
						<th>질문</th>
						<td><input type="text"  /></td>
					</tr>
					
						<!-- ck editor 적용한 부분입니다. -->
						
					<tr>
						<th>답변</th>
						<td colspan="2">
							<!-- 표시할 textarea로 영역-->
							<textarea name="content" id="editor" rows="500" cols="1000">
								
							
							</textarea>
							<!-- ckeditor 생성을 위한 JS -->
							<script>
							       ClassicEditor
							           .create( document.querySelector('#editor'))
							           .then(edit => {
							           	console.log(editor);
							           })
							           .catch(error => {
							               console.error(error);
							           });
							 </script>
						</td>
					</tr>
					
					<tr>
						<th>출력여부</th>
						<td>
							<input type="radio" id="Stream" name="introType"value="출력함">출력함 
							<input type="radio" id="Don'tStream" name="introType" value="출력안함">출력안함 
							<span>"+FAQ출력상태를 설정합니다."</span></td>
					</tr>
				</table>
				<input type="submit" class="saveBtn" value="등록">
				<button type="button" class="backBtn" onclick="location.href='${contextPath}/adfaq/faqAdManagement.do'">뒤로가기</button>
			</form>
		</div>	
	</div>
</body>
</html>