<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<link
	href="/recipetoyou/Resources/User/Css/Notice2/noticeOneToOneQuestion.css"
	rel="stylesheet" type="text/css">
<link href="/recipetoyou/Resources/User/Css/reset.css" rel="stylesheet"
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
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<body>

	<div class="content">
		<div class="title">
			<h2>1:1문의</h2>
		</div>

		<div class="oneToOneQATable">
			<table>
				<tr class="th">
					<th class="num">번호</th>
					<th class="cate">카테고리</th>
					<th class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="writeDate">작성일</th>
				</tr>

				<tr class="QAList1">
					<td>1</td>
					<td>[문의선택]</td>
					<td>배송받은 상품이 마음에 들지 않습니다.</td>
					<td>market</td>
					<td>2022-01-05</td>
				</tr>
				<tr class="QADetail1">
					<td colspan="5">
						<div>
							<span> 배송을 받았는데 받은 상품이 마음에 들지 않습니다. 환불 절차를 좀 알려주세요. </span>
							<div class="QABtn">
								<button class="editBtn" type="button">수정</button>
								<button class="deleteBtn" type="button" onclick="QAdelte()">삭제</button>
							</div>
						</div>
					</td>
				</tr>

				<tr class="QAList">
					<td>1</td>
					<td>[문의선택]</td>
					<td>배송받은 상품이 마음에 들지 않습니다.</td>
					<td>market</td>
					<td>2022-01-05</td>
				</tr>


			</table>
		</div>
		<div class="page">
			<ul>
				<li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
				<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#"><i class="fas fa-angle-right"></i></a></li>
				<li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
			</ul>
		</div>

		<div class="writeBtn">
			<a href="${contextPath}/notice/noticeOneToOneQuestionDetail.do">글쓰기</a>
		</div>
	</div>


	<script>
			$(document).ready(function() {
				$('.QAList1').click(function() {
					$('.QADetail1').fadeToggle();
				});
			});
			
			function QAdelte(){
				alert('삭제되었습니다.');
			}
	</script>
</body>
</html>