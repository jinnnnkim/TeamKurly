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
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>전체회원관리</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
 	<link href="/recipetoyou/Resources/Admin/Css/AdUser/aduserList.css" rel="stylesheet">
	<link href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css" rel="stylesheet">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>	
	<script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/AdUser/adOrdList.js" charset="UTF-8"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<body>

	<div class="mainTitle">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  			<path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
			</svg>
			주문관리
		</div>
	<form action="#" method="post">
		<div class="list_head">
			<table align="center" id="tableGroup">
				<tr>
					<td>
						<input type="checkbox">
						<!-- 달력 js 구현되어있음 -->
						<input type="text" id="datepicker1"> ~
  						<input type="text" id="datepicker2">
						<input class="btn_option" type="button" value="오늘날짜">
						<input class="btn_option" type="button" value="최근1주일">
						<input class="btn_option" type="button" value="최근15일">
						<input class="btn_option" type="button" value="최근 1개월">
						<input class="btn_option" type="button" value="최근2개월">
						<input class="btn_option" type="button" value="최근3개월">
					</td>
				</tr>
				
				<tr>
					<td>
						<select name="userGrade">
							<option value="generalUser">회원등급</option>
							<option value="Operator">운영자</option>
							<option value="sub_Operator">일반(General)</option>
							<option value="specialUser">프렌즈(Friends)</option>
							<option value="superUser">호스트(Host)</option>
							<option value="regularUser">쿡(Cook)</option>
							<option value="assoUser">셰프(Chef)</option>
						</select>
						<select name="searchOption">
							<option value="userId">아이디</option>
							<option value="userName">이름</option>
							<option value="userEmail">이메일</option>
							<option value="phone">휴대전화</option>
							<option value="addr">주소</option>
						</select>
						<input type="text" name="userSearch">
						<input class="search_btn" type="button" value="검색">
					</td>
				</tr>	
			</table>
			</div>
		<div class="middle_titleBox">
			총 ${cnt }명의 회원이 검색되었습니다.		
		</div>
		
		<div class="userList_wrap">
		<table align="center" id="tableGroup">
			<thead>
				<tr align="center" class="table_title">
					<td width="6%">
					
					<!-- 테이블 제목에 있는 체크박스 클릭시 전체선택되는 js구현되어있음 -->
					<input type="checkbox" id="checkAll" name="chk">
					
					</td>
					<td id="payCol">결제코드</td>
					<td id="idCol">아이디</td>
					<td id="nameCol">이름</td>
					<td id="phoneCol">휴대전화</td>
					<td id="addrCol">주소</td>
					<td id="prodNameCol">상품명</td>
					<td id="paymentCol">총 결제금액</td>
					<td id="ordDateCol">결제일</td>
					<td id="delCol">결제취소</td>
				</tr>
			</thead>	
				
		<tbody class="table_content">
			<c:forEach var="pay" items="${payList }">
				<tr align="center">
					<td><input type="checkbox" name="chk"></td>
					<td>${pay.pay_code }</td>
					<td>${pay.user_id }</td>
					<td>${pay.user_name }</td>
					<td>${pay.user_phone}</td>
					<td>${pay.user_addr }</td>
					<td>${pay.prod_name }</td>
					<td>${pay.pay_price }</td>
					<td>${pay.pay_date }</td>
					<td><button onclick="deleteMessage()"><a href="${contextPath}/adpayment/removePay.do?id=${pay.pay_code}">주문취소</a></button></td>
				</tr>
			</c:forEach>
		</tbody>	
		</table>
		</div>
		
		<div class="btnGroup">
			<!-- 버튼클릭시 전체선택되는 js구현되어있음 -->
			<input type="button" value="전체선택" id="check_all">
			<!-- 버튼클릭시 전체선택 해제되는 js구현되어있음 -->
			<input type="button" value="전체해제" id="uncheck_all">
		</div>
		
		<div class="box-footer">
			<div class="text-center">
				<ul class="pagination">
				 			<!-- 이전prev -->
				 	<c:if test="${pm.prev }">
				 		<li><a href="listadPay.do?page=${pm.startPage-1}">&laquo;</a></li>
				 	</c:if>
				 			<!-- 페이지블럭 -->
					<c:forEach var="idx" begin="${pm.startPage}" end="${pm.endPage}">
								<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
						<li ${pm.vo.page == idx? 'class=active':''}>
						 	<a href="listadPay.do?page=${idx}">${idx}</a>
						</li>				
					</c:forEach>
				 			<!-- 다음next -->
				 	<c:if test="${pm.next && pm.endPage > 0}">
				 		<li><a href="listadPay.do?page=${pm.endPage+1}">&raquo;</a></li>
				 	</c:if>
				 </ul>
			</div>
		</div> 
	</form>
</body>
</html>