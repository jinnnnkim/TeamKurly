<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet" href="/recipetoyou/Resources/User/Css/Mypage/mypageInfo.css">
<link href="/recipetoyou/Resources/User/Css/reset.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/Resources/User/Css/Mypage/q&a.css"
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
<body>
	<div class="main">
		<div class="content">
			<div class="review_main">
				<div class="head">
					<h2 class="title">상품문의</h2>
					<ul>
						<li>· 상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
							게시판으로 이동될 수 있습니다.</li>
						<li>· 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내<a href="">
								1:1문의</a>에 남겨주세요.
						</li>
					</ul>
				</div>
				<table class="QandA_main">
					<tr>
						<th class="empty"></th>
						<th class="title">제목</th>
						<th class="date">작성일</th>
						<th class="reply">답변상태</th>
					</tr>
				</table>
				<div class="QandA_content">
					<ul>
						<li>작성한 상품 문의가 없습니다.</li>
					</ul>
				</div>
				<div class="paging_navi">
					<button type="button" class="paging_prev">
						<i class="fas fa-chevron-left"></i>
					</button>
					<button type="button" class="paging_next">
						<i class="fas fa-chevron-right"></i>
					</button>
				</div>
			</div>
		</div>
		<%--content end --%>
	</div>
</body>
</html>












