<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원정보수정</title>
	<script src="https://kit.fontawesome.com/7d11552255.js" crossorigin="anonymous"></script>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/AdUser/moduserInfo.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<!-- 
		회원리스트 중 수정 버튼 클릭시 넘어오는 페이지
	 -->
	<div class="wrap">
		<div class="mainTitle">
			회원기본정보
		</div>
		
		<form action="#" method="post">
			<table border="1">
				<tr>
					<td class="grayBg">아이디</td>
					<td class="whiteBg">kim1z63</td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check" id="checkIcon"></i>
					이름
					</td>
					<td class="whiteBg"><input id="text" type="text" value="이재훈"> <div class="skyblueFont">+최대50자까지 입력 가능</div></td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					생년월일
					</td>
					<td class="whiteBg">
						<select>
							<option>년도</option>
							<option>월</option>
							<option>일</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					성별
					</td>
					<td class="whiteBg">
						<input type="radio">남<input type="radio">여
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">비밀번호</td>
					<td class="whiteBg">
					<input type="text" >
					<div class="skyblueFont">+4~15자의 영문자,숫자조합</div>
					<div class="redFont">(비밀번호 변경시에만 입력하십시오)</div>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>닉네임</td>
					<td class="whiteBg"><input id="text" type="text" value="닉훈"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>회원등급</td>
					<td class="whiteBg">
					<select>
						<option>일반</option>
						<option>프렌즈</option>
						<option>화이트</option>
						<option>라벤더</option>
						<option>퍼플</option>
						<option>더퍼플</option>
					</select>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">이메일주소</td>
					<td class="whiteBg"><input id="text" type="text" value="webmaster@00000.000"></td>
				</tr>
				
				<tr>
					<td class="grayBg">일반전화</td>
					<td class="whiteBg"><input id="text" type="text" value="000-0000-0000"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>휴대전화</td>
					<td class="whiteBg"><input id="text" type="text" value="000-0000-0000"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>주소</td>
					<td class="whiteBg">
					<input id="text" type="text" value="245-713"> <div class="skyblueFont">+ZIP CODE</div><br>
					<input id="text" type="text" value="강원 삼척시 사직동 동양시멘트"><br>
					<input id="text" type="text" value="788"><div class="skyblueFont">+나머지 주소</div>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">가입인사</td>
					<td class="whiteBg"><input id="joinText" type="text"></td>
				</tr>
			</table>
			
			<div class="title">
				정보수신설정
			</div>
			
			<table>
				<tr>
					<td class="grayBg">뉴스레터 수신</td>
					<td class="whiteBg">
					<input type="radio">수신동의
					<input type="radio">수신거부
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">문자메시지 수신</td>
					<td class="whiteBg">
					<input type="radio">수신동의
					<input type="radio">수신거부
					</td>
				</tr>
				
			</table>
			
			<div class="title">
				관리자메모
			</div>
			
		<textarea id="mailContent" rows="10" cols="100" style="width: 100%">
		</textarea>
		<script id="smartEditor"  type="text/javascript">
			var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
				    oAppRef: oEditors,
				    elPlaceHolder: "mailContent",  
				    sSkinURI: "../../../Resources/SmartEditor/SmartEditor2Skin.html",  //smartEditor2Skin.html 경로 입력
				    fCreator: "createSEditor2",
				    htParams : { 
				    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
				        bUseToolbar : true, 
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseVerticalResizer : true, 
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseModeChanger : true
				    }
				});

		</script>	
		
			<!-- ★입력 안하고 저장버튼 클릭시 경고창 띄우는 js 구현 필요 -->
			<button class="saveBtn">저장하기</button>
			<!-- 버튼 클릭시 뒤로가는 js구현되어있음.  -->
			<button type="button" class="backBtn" onclick="location.href='aduserList.jsp'">뒤로가기</button>
		</div>

	</div>
</body>
</html>