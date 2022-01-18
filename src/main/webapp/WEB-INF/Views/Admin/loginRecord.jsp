<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원로그인기록</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../resources/Admin/Css/loginRecord.css">
	<link rel="stylesheet" href="../../../resources/Admin/Css/reset.css">
</head>
<body>
	<div class="wrap">
	<div class="titleBox">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  			<path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
			</svg>
			회원로그인기록
		</div>
	<form action="#" method="post">
		<div class="list_head">
			<table align="center" id="tableGroup">
				<tr>
					<td>
						<input type="checkbox">
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
						<select name="searchOption">
							<option value="user_Id">회원아이디</option>
							<option value="Ip_addr">로그인IP주소</option>
						</select>
						<input type="text" name="userSearch">
						<input class="search_btn" type="button" value="검색">
					</td>
				</tr>	
			</table>
			</div>
		<div class="middle_titleBox">
			총 5건의 로그가 검색되었습니다.		
		</div>
		<div class="loginList_wrap">
		<table  align="center"  id="tableGroup">
				<tr align="center" bgcolor="#DCDCDC">
					<td width="6%">No</td>
					<td width="15%">아이디</td>
					<td width="15%">로그인IP</td>
					<td width="15%">로그인시각</td>
					<td width="6%">No</td>
					<td width="15%">아이디</td>
					<td width="15%">로그인IP</td>
					<td width="15%">로그인시각</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="AdUserInfo.jsp">kim1z63</a></td>
					<td>112.218.228.26</td>
					<td>2021-12-28 <br> 21:26:33</td>
					<td>2</td>
					<td>ezenac</td>
					<td>112.218.228.27</td>
					<td>2021-12-28 <br> 21:27:33</td>
				</tr>	
				
				<tr>
					<td>1</td>
					<td><a href="AdUserInfo.jsp">kim1z63</a></td>
					<td>112.218.228.26</td>
					<td>2021-12-28 <br> 21:26:33</td>
					<td>2</td>
					<td>ezenac</td>
					<td>112.218.228.27</td>
					<td>2021-12-28 <br> 21:27:33</td>
				</tr>	
				
				<tr>
					<td>1</td>
					<td><a href="AdUserInfo.jsp">kim1z63</a></td>
					<td>112.218.228.26</td>
					<td>2021-12-28 <br> 21:26:33</td>
					<td>2</td>
					<td>ezenac</td>
					<td>112.218.228.27</td>
					<td>2021-12-28 <br> 21:27:33</td>
				</tr>	
				
				<tr>
					<td>1</td>
					<td><a href="AdUserInfo.jsp">kim1z63</a></td>
					<td>112.218.228.26</td>
					<td>2021-12-28 <br> 21:26:33</td>
					<td>2</td>
					<td>ezenac</td>
					<td>112.218.228.27</td>
					<td>2021-12-28 <br> 21:27:33</td>
				</tr>	
				
				<tr>
					<td>1</td>
					<td><a href="AdUserInfo.jsp">kim1z63</a></td>
					<td>112.218.228.26</td>
					<td>2021-12-28 <br> 21:26:33</td>
					<td>2</td>
					<td>ezenac</td>
					<td>112.218.228.27</td>
					<td>2021-12-28 <br> 21:27:33</td>
				</tr>	
					
		</table>
		</div>
		<input type="button" value="3개월전 로그 삭제">
		<input type="button" value="로그 초기화"><br><br><br>
		
		<div class="page_wrap">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a>
				<a class="arrow prev" href="#"></a>
				<a class="selectPage" href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a class="arrow next" href="#"></a>
				<a class="arrow nnext" href="#"></a>
			</div>
		</div>
		</form>
		</div>
</body>
</html>
