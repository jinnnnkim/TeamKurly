<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원관리 환경설정 : 메일폼설정</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<script src="https://kit.fontawesome.com/7d11552255.js" crossorigin="anonymous"></script>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/UserSet/orderMail.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../../../Resources/Admin/Js/UserSet/orderMail.js" charset="UTF-8"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	
		<!-- 회원관리환경설정 : 메일폼설정
		title : 각 페이지로 이동할 수 있는 a태그 박스 구현
		
		이메일 머지(치환)문자, 이메일 설정 총 2개의 테이블과 메일폼으로 구성
		
		★메일폼 안에 이미지 어떻게 할지 추후 논의 필요
	 -->
	 
	<div class="wrap">
		<div class="title">
			
			<!-- 회원가입 으로 이동 -->
			<a href="mailformSet.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			회원가입
			</a>
			
			<!-- 아이디찾기 로 이동 -->
			<a href="idsearchMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			아이디찾기
			</a>
			
			<!-- 비밀번호찾기 로 이동 -->
			<a href="pwsearchMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			비밀번호찾기
			</a>
			
			<!-- 주문확인메일로 이동 -->
			<a href="orderMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			주문확인메일
			</a>
			
			<!-- 입금확인메일로 이동 -->
			<a href="depositMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			입금확인메일
			</a>
			
			<!-- 배송완료메일로 이동 -->
			<a href="deliMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			배송완료메일
			</a>
		</div>
		
		<div class="cateTitle">
		이메일 머지(치환)문자
		</div>
		
		<table  class="table1">
			<tr>
				<td class="grayBg">{이름}</td>
				<td class="whiteBg">회원의 이름으로 치환됩니다. <div class="skybluefont">ex)홍길동</div></td>
			</tr>
			<tr>
				<td class="grayBg">{아이디}</td>
				<td class="whiteBg">회원의 아이디로 치환됩니다.<div class="skybluefont">ex)hong</div></td>
			</tr>
			<tr>
				<td class="grayBg">{비밀번호}</td>
				<td class="whiteBg">회원의 비밀번호로 치환됩니다. <div class="skybluefont">ex)hong****</div></td>
			</tr>
			<tr>
				<td class="grayBg">{주문정보}</td>
				<td class="whiteBg">회원의 비밀번호로 치환됩니다. <div class="skybluefont">주문내역,배송정보 등이 메일로 발송됩니다.</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
		이메일 설정
		</div>
		
		<table class="table2">
			<tr>
				<td class="grayBg">이메일 제목</td>
				<td class="whiteBg"><input id="text" type="text" value="주문이 접수되었습니다."></td>
			</tr>
			<tr>
				<td class="grayBg">이메일 사용여부</td>
				<td class="whiteBg"><input type="radio" checked="checked">사용함<input type="radio">사용안함</td>
			</tr>
			<tr>
				<td class="grayBg">관리자 동보발송</td>
				<td class="whiteBg">
					<input type="radio" checked="checked">사용함<input type="radio">사용안함
					<div class="skybluefont">회원이 받는 이메일을 관리자도 동일하게 받아볼 수 있습니다.</div>
				</td>
			</tr>
			<tr>
				<td class="grayBg">이메일 중요도</td>
				<td class="whiteBg">
					<select>
						<option>중간</option>
						<option>낮음</option>
						<option>높음</option>
					</select>
					<div class="skybluefont">중요도 수준이 설정된 이메일은 받는사람의 편지함에 중요도가 표시됩니다.</div>
					
					<!-- ★버튼 위치 조정 필요 -->
					<div class="container-fluid">
					<button class="helpBtn" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
						<!-- 물음표 아이콘 -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  						<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  						<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
						</svg>
						도움말
					</button>
					</div>
					
					<div class="collapse" id="collapseExample">
						<div class="helpBox">
						이메일의 중요도 수준을 설정하여 받는사람이 즉시 확인해야 하는 메시지인지, <br>
						아니면 나중에 확인해도 되는 메시지인지를 지정할 수 있습니다.<br>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  						<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
						</svg>
						일반적인 이메일은 중요도를 '중간'으로 설정하시면 됩니다.
						</div>
					</div>
				</td>
			</tr>
		</table>
		
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
		
		<!-- 저장하기 버튼 클릭시 alert창 이벤트 구현 -->
		<button class="saveBtn" onclick="saveMessage()">저장하기</button>
		
	</div>	
</body>
</html>