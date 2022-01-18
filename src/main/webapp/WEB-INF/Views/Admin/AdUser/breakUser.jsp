<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>탈퇴신청회원관리</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
    <link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="/Resources/Admin/Css/AdUser/breakUser.css">
	<link rel="stylesheet" href="./Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="/Resources/Admin/Js/AdUser/breakUser.js" charset="UTF-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
	
</head>
<body>
	
	<!-- 
		랭크업 메뉴 중 탈퇴신청회원관리 탭에 해당
		.list_head : 최상담 날짜 검색 테이블
		.breakList_wrap : 탈퇴 회원 목록 테이블
	 -->
	<div class="wrap">
		<div class="mainTitle">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
 			 <path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
			</svg>
			탈퇴회원관리
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
								<option value="sub_Operator">부운영자</option>
								<option value="specialUser">특별회원</option>
								<option value="superUser">우수회원</option>
								<option value="regularUser">정회원</option>
								<option value="assoUser">준회원</option>
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
		</form>	
			
		<div class="middle_titleBox">
			총 5명의 회원이 검색되었습니다.		
		</div>
		<div class="breakList_wrap">
		<table  align="center" id="tableGroup">
			<thead>
				<tr align="center" class="table_title">
					<!-- 테이블 제목에 있는 체크박스 클릭시 전체선택되는 js구현되어있음 -->
					<td id="checkCol"><input type="checkbox" id="checkAll" name="chk"></td>
					<td id="infoCol">기본정보</td>
					<td id="levelCol">등급</td>
					<td id="joinCol">가입일</td>
					<td id="brkCol">탈퇴신청일</td>
					<td id="resCol">탈퇴이유</td>
					<td id="visitCol">방문</td>
					<td id="memoCol">메모</td>
					<td id="modCol">수정</td>
					<td id="delCol">삭제</td>
				</tr>
			</thead>
			
			<tbody class="table_content">
				<tr>
					<td><input type="checkbox" name="chk"></td>
					<td><a href="aduserInfo.jsp">강수종(lssds123)</a></td>
					<td>일반회원</td>
					<td>2016-07-27</td>
					<td>2021-12-28</td>
					<!-- 버튼 클릭시 탈퇴이유 열 나타나는 js 구현되어있음. -->
					<td><button onclick="showRow()">탈퇴이유</button></td>
					<td>1</td>
					<td>메모</td>
					<!-- 수정버튼 클릭시 moduserInfo.jsp로 넘어감 -->
					<td><a href="moduserInfo.jsp"><input type="button" value="수정"></a></td>
					<!-- 버튼클릭시 alert창 띄우는 js구현되어있음 -->
					<td><button onclick="deleteMessage()">삭제</button></td>
				</tr>	
				
				<!-- 탈퇴이유 버튼 클릭시 나오는 열, 그전에는 숨겨놓음 -->
				<tr id="delReason">
				<td colspan="5">
				lssds123님의 <div class="breakReason">탈퇴이유입니다. : 관리자삭제처리
				</div>
				</td>
				<td colspan="5"><button onclick="hideRow()">접기</button></td>
				</tr>
	
				
				<tr>	
					<td><input type="checkbox" name="chk"></td>
					<td><a href="AdUserInfo.jsp">이경인(come0208)</a></td>
					<td>일반회원</td>
					<td>2012-04-13</td>
					<td>2019-12-28</td>
					<td><button onclick="showRow()">탈퇴이유</button></td>
					<td>1</td>
					<td>메모</td>
					<td><a href="moduserInfo.jsp"><input type="button" value="수정"></a></td>
					<td><button onclick="deleteMessage()">삭제</button></td>
				</tr>
				
				<tr>	
					<td><input type="checkbox" name="chk"></td>
					<td><a href="AdUserInfo.jsp">이재훈(kim1z63)</a></td>
					<td>프렌즈</td>
					<td>2011-10-27</td>
					<td>2018-02-19</td>
					<td><button onclick="showRow()">탈퇴이유</button></td>
					<td>1</td>
					<td>메모</td>
					<td><a href="moduserInfo.jsp"><input type="button" value="수정"></a></td>
					<td><button onclick="deleteMessage()">삭제</button></td>
				</tr>
				
				
				<tr>	
					<td><input type="checkbox" name="chk"></td>
					<td><a href="AdUserInfo.jsp">홍길동(hong)</a></td>
					<td>일반회원</td>
					<td>2009-11-13</td>
					<td>2017-12-28</td>
					<td><button onclick="showRow()">탈퇴이유</button></td>
					<td>1</td>
					<td>메모</td>
					<td><a href="moduserInfo.jsp"><input type="button" value="수정"></a></td>
					<td><button onclick="deleteMessage()">삭제</button></td>
				</tr>
				
				
				<tr>	
					<td><input type="checkbox" name="chk"></td>
					<td><a href="AdUserInfo.jsp">김훈석(envy79)</a></td>
					<td>퍼플</td>
					<td>2009-02-12</td>
					<td>2014-12-28</td>
					<td><button onclick="showRow()">탈퇴이유</button></td>
					<td>1</td>
					<td>메모</td>
					<td><a href="moduserInfo.jsp"><input type="button" value="수정"></a></td>
					<td><button onclick="deleteMessage()">삭제</button></td>
				</tr>
										
				</tbody>
		</table>
		</div>
		
		<!-- 버튼클릭시 전체선택되는 js구현되어있음 -->
		<input type="button" value="전체선택" id="check_all">
		<!-- 버튼클릭시 전체선택 해제되는 js구현되어있음 -->
		<input type="button" value="전체해제" id="uncheck_all"><br><br><br>
		
		<div class="page_wrap">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a>
				<a class="arrow prev" href="#"></a>
				<a class="selectPage" href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a class="arrow next" href="#"></a>
				<a class="arrow nnext" href="#"></a>
			</div>
		</div>
	</div>
</body>
</html>