<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>멀티게시판관리 - 게시판 생성/관리</title>
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/MultiboardManagement/multiboard.css">
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
 	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
 	<script src="../../../../Resources/Admin/Js/MultiboardManagement/multiboard.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="subtitle">게시판 생성 및 관리</div>
	
		<table class="boardList">
			<tr>
				<th><div class="col1"><input type="checkbox"></div></th>
				<th><div class="col2">순서</div></th>
				<th><div class="col3">게시판명</div></th>
				<th><div class="col4">등록수</div></th>
				<th><div class="col5">분류</div></th>
				<th><div class="col6">권한</div></th>
				<th><div class="col7">미리보기</div></th>
				<th><div class="col8">사용</div></th>  
				<th><div class="col9">수정</div></th>
				<th><div class="col10">삭제</div></th>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td><a onclick="upbtn(this);"><img src="../../../../Resources/Admin/Img/MultiboardManagement/btn_order_up.gif"></a>
					<a onclick="dwbtn(this);"><img src="../../../../Resources/Admin/Img/MultiboardManagement/btn_order_down.gif"></a></td>
				<td><a>1</a></td>
				<td><a>1</a></td>
				<td onclick="devide()"><a>설정</a></td>
				<td><a>설정</a></td>
				<td><a href="#">미리보기</a></td>
				<td id="used1" onclick="used()">사용</td>
				<td><a>수정</a></td>
				<td onclick="remove()">삭제</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td><a onclick="upbtn(this);"><img src="../../../../Resources/Admin/Img/MultiboardManagement/btn_order_up.gif"></a>
					<a onclick="dwbtn(this);"><img src="../../../../Resources/Admin/Img/MultiboardManagement/btn_order_down.gif"></a></td>
				<td><a>2</a></td>
				<td><a>2</a></td>
				<td><a>설정</a></td>
				<td><a>설정</a></td>
				<td><a href="#">미리보기</a></td>
				<td onclick="used()">사용</td>
				<td><a>수정</a></td>
				<td  onclick="remove()">삭제</td>
			</tr>
		</table>
		<a href="" class="plusboard"><img src="../../../../Resources/Admin/Img/MultiboardManagement/btn_plusboard.gif"></a>
	
	</div>
</body>
</html>

