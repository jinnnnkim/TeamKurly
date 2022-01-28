<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/reviewWrite.css">
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
		<div class="content">
			<div class="review_main">
					<h2 class="title">후기작성</h2>
					<div class="reviewContent">
						<div class="prod">
							<div class="img">  
								<img src="/recipetoyou/Resources/User/Img/goods6.jpg"/>
							</div>
							<div class="prodInfo">
								<span class="prodTitle">소고기 200g</span><br/>
								<span class="prodSub">맛있는 소고기 200g</span>
							</div>
						</div>
						<div class="reviewWriteWrap">
							<form>
								<table class="reviewWrite">
									<tr class="reviewWriteTitle">
										<th>
											제목
										</th>
										<td>
											<input type="text" placeholder="제목을 입력해주세요."/>
										</td>
									</tr>
									<tr class="content">
										<th>
											후기작성
										</th>
										<td>
											<textarea placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,&#13;&#10;일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다.&#13;&#10;반품/환불 문의는 1:1문의로 가능합니다."></textarea>
										</td>
									</tr>
								</table>
								<div class="writeBtn">
									<a href="#none">글쓰기</a>
								</div>
							</form>
						</div>
					</div>
					<!-- subtitle -->
				
				
			</div>
			<!-- review_main -->
		</div>
		<!-- content -->

</body>
</html>






















