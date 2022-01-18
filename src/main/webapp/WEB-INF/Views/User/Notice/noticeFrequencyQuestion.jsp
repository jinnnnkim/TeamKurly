<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<link href="/recipetoyou/Resources/User/Css/Notice2/noticeFrequencyQuestion.css"
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
			<h2>
				자주하는 질문 <span>고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</span>
			</h2>
			<div class="optional">
				<a href="#none" class="listOff">선택<i class="fas fa-caret-down"></i></a>
				<ul class="choiceLayer">
					<li><a href="#">배송/포장/상품</a></li>
					<li><a href="#">선물하기</a></li>
					<li><a href="#">주문/결제/대량주문</a></li>
					<li><a href="#">취소/교환/환불</a></li>
					<li><a href="#">이벤트/쿠폰/적립금</a></li>
					<li><a href="#">회원</a></li>
					<li><a href="#">서비스이용</a></li>
				</ul>
			</div>
		</div>

		<div class="noticeTable">
			<table>
				<tr class="th">
					<th class="num">번호</th>
					<th class="cate">카테고리</th>
					<th class="title">제목</th>
				</tr>

				<tr>
					<td>88</td>
					<td>회원</td>
					<td class="cont detail88"><a href="#none">아이디 패스워드를
							잊어버렸습니다.</a></td>
				</tr>

				<tr class="faq88">
					<td><img src="/recipetoyou/Resources/User/Img/Notice/market1.gif"></td>
					<td class="cont" colspan='2'>■ 아이디, 비밀번호 찾기 안내<br> <br>
						<br> - 하기 경로를 통해 아이디 및 비밀번호 찾기가 가능하며, 임시 비밀번호의 경우 회원가입 시 등록한
						이메일 주소로 발송 됩니다.<br> <br> <br> (PC) 컬리홈 상단 [로그인]
						&gt; 화면 아래 [아이디 찾기] [비밀번호 찾기]<br> <br> (모바일) 아래 탭에서
						[마이컬리] &gt; 로그인 화면 아래 [아이디 찾기] [비밀번호 찾기]<br> <br> <br>
						[참고]<br> <br> ▣ 가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우
						고객센터로 문의 바랍니다.<br> <br> ▣ 상담시에는 고객님의 개인정보보호를 위해 기존에
						사용하시던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.
					</td>
				</tr>

				<tr>
					<td>87</td>
					<td>관리자</td>
					<td class="detail"><a href="#">여기에는 어떤 내용이 들어가야 하나요.</a></td>
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
	</div>


	<script>
		$(document).ready(function() {
			$('.listOff').click(function() {
				$('.choiceLayer').fadeToggle();
			});
		});

		$(document).ready(function() {
			$('.detail88 a').click(function() {
				$('.faq88').fadeToggle();
			});
		});
	</script>
</body>
</html>