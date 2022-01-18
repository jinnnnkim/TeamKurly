<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원관리환경설정</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/UserSet/basicSetting.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/Admin/Js/UserSet/basicSetting.js" charset="UTF-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- 
		회원관리환경설정 페이지
		titleBox : 각 페이지로 이동할 수 있는 a 태그 박스 구현
		
		회원제설정, 회원가입항목설정, 회원등급설정, 비밀번호 변경 설정 총 4가지 테이블로 구성
		
	 -->
	<div class="wrap">
		<div class="titleBox">
			<a href="basicSetting.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			기본환경설정
			</a>
			
			<a href="useTerms.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			이용약관
			</a>
			
			<a href="infoPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			개인정보처리방침
			</a>
			
			<a href="infoCollect.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			개인정보수집 및 안내
			</a>
			
			<a href="teenPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			청소년보호정책
			</a>
			
			<a href="emailPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			이메일주소 무단수집 거부
			</a>
			
			<a href="nameConfirm.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			실명인증설정
			</a>
			
			<a href="mailformSet.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			메일폼설정
			</a>
		</div>
		
		<div class="cateTitle">
			회원제 설정
		</div>
		<div class="container-fluid">
			<!-- 도움말 버튼 클릭시 창 내려오는 부트스트랩 구현, ★버튼 위치 조정 필요 -->
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
				<!-- 물음표 아이콘 -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				도움말
			</button>
		</div>
		
		<!-- 도움말 클릭시 펼쳐지는 기능 -->
		<div class="collapse" id="collapseExample1">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				회원제를 사용할 경우 회원가입항목이 활성화 되며 각 모듈별로 회원등급제를 운영하실 수 있습니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				반대로 미사용시 모듈별 회원등급별 제안 항목들이 모두 적용되지 않습니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				가입자 유형에 따라 회원가입신청서의 입력 형태가 변경될 수 있습니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				가입자 연령제한 설정으로 사이트 운영 목적에 맞게 가입자의 연령을 제한 할 수 있습니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				기본인증, 실명인증, 아이핀(I-Pin)인증을 통해 회원관리의 효율성을 높일 수 있습니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				가입자 연령제한 설정에 따라 실명인증 모듈이 알맞게 반응(실명인증 또는 성인인증)합니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				해외외국인회원이 가입할 경우 가입인증 설정은 '기본인증' 모듈만 반응합니다.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				가입자 유형 설정시 '만14세미만회원' 에 체크하더라도 가입자 연령제한이 '만14세이상' 인 경우에는 무시됩니다.
			</div>
		</div>
		<table class="table1">
			<tr>
				<td class="grayBg">회원제 사용여부</td>
				<td class="whiteBg"><input type="radio">사용&nbsp;<input type="radio">미사용</td>
			</tr>
			<tr>
				<td class="grayBg">성인인증 사용여부</td>
				<td class="whiteBg"><input type="radio">사용함&nbsp;<input type="radio">사용안함</td>
			</tr>
			<tr>
				<td class="grayBg">가입자 유형 설정</td>
				<td class="whiteBg"><input type="checkbox" checked="checked">일반회원&nbsp;<input type="checkbox" checked="checked">국내외국인회원&nbsp;<input type="checkbox" checked="checked">해외외국인회원</td>
			</tr>
			<tr>
				<td class="grayBg">가입 인증 설정</td>
				<td class="whiteBg"><input type="checkbox" checked="checked">기본인증<div class="skyblueFont">(생일+성별)</div>&nbsp;<input type="checkbox">실명인증<div class="skyblueFont">(아이핀,안심체크)+사용하실 실명인증 모듈을 선택하십시오.</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			회원가입 항목 설정
		</div>
		
		
		<!-- 도움말 클릭시 펼쳐지는 기능 -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
			<!-- 물음표 아이콘 -->
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  			<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  			<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
			</svg>
				도움말
			</button>
		</div>
		
		<div class="collapse" id="collapseExample2">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				필수사항이 체크되어있는 항목은 가입시 필수 입력값으로 적용됩니다.
			</div>
		</div>
		
		<table class="table2">
			<tr class="grayBg">
				<td id="short_space">항목</td>
				<td id="short_space">사용</td>
				<td id="short_space">필수</td>
				<td id="short_space">항목</td>
				<td id="short_space">사용</td>
				<td id="short_space">필수</td>
			</tr>
			<tr>
				<td class="grayBg">닉네임</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">일반전화</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox"></td>
			</tr>
			<tr>
				<td class="grayBg">주소</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">가입인사</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox"></td>
			</tr>
			<tr>
				<td class="grayBg">휴대전화</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">휴대폰인증</td>
				<td class="whiteBg"><input type="checkbox"></td>
				<td class="whiteBg"><a href="../AdUser/sendnumList.jsp">[전송내역관리]</a></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			회원 등급 설정
		</div>
		
		<!-- 도움말 클릭시 펼쳐지는 기능 -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
			<!-- 물음표 아이콘 -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				도움말
			</button>
		</div>
		
		<div class="collapse" id="collapseExample3">
			<div class="helpBox">
			<!-- ★ 회원 등급 내용 마켓컬리랑 동일하게 적어서 이 부분 수정 필요 -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				일반 : 총 적립 금액 1만원 이하 (일반 등급 연간 유지 시) / 적립 0.5%<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				프렌즈 : 총 적립 금액 1 ~ 3만원 (프렌즈 등급 연간 유지 시) / 적립 1% / 최대 6천원 추가 혜택(깜짝 쿠폰, 적립 이벤트 등) <br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				일반 : 총 적립 금액 1만원 이하 (일반 등급 연간 유지 시) / 적립 3% / 최대 7천원 추가 혜택(깜짝 쿠폰, 적립 이벤트 등)<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				일반 : 총 적립 금액 1만원 이하 (일반 등급 연간 유지 시) / 적립 5% / 최대 1만원 추가 혜택(깜짝 쿠폰, 적립 이벤트 등)<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				일반 : 총 적립 금액 1만원 이하 (일반 등급 연간 유지 시) / 적립 7% / 더블 후기<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				회원 등급은 초기설정 이후 변경하지 않는 것을 권장합니다.
			</div>
		</div>
		
		<table class="table3">
			<tr>
				<td class="grayBg" width="20%">등급</td>
				<td class="grayBg" width="70%">등급명</td>
			</tr>
			<tr>
				<td class="grayBg">Lv.1</td>
				<td class="whiteBg"><input id="gradeText" type="text" value="일반(General)"><div class="skyblueFont">+초기회원가입시 자동으로 설정되는 등급입니다.</div></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.2</td>
				<td class="whiteBg" colspan="5"><input id="gradeText" type="text" value="프렌즈(Friends)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.3</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value="호스트(Host)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.4</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value=" 쿡(Cook)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.5</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value="셰프(Chef)"><div class="skyblueFont">+관리자페이지 로그인시와 동일한 모든권한 부여 +가장 높은 등급</div></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.8</td>
				<td class="whiteBg" colspan="5">비회원&nbsp;&nbsp;&nbsp;<div class="skyblueFont">+비회원 및 로그인을 하지 않은 상태이며 수정할 수 없습니다. +가장 낮은 등급</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			비밀번호 변경 설정
		</div>
		
		<!-- 도움말 클릭시 펼쳐지는 기능 -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
			<!-- 물음표 아이콘 -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				도움말
			</button>
		</div>
		
		<div class="collapse" id="collapseExample4">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				비밀번호를 변경한지 O개월 지난 경우 회원로그인시 비밀번호 변경안내 페이지를 띄웁니다.
			</div>
		</div>
		
		<table class="table4">
			<tr>
				<td class="grayBg">사용여부</td>
				<td class="whiteBg"><input type="radio">사용함&nbsp;<input type="radio">사용안함</td>
			</tr>
			<tr>
				<td class="grayBg">변경기간</td>
				<td class="whiteBg"><input type="text" value="2">개월</td>
			</tr>
		</table>
		
		<button class="saveBtn" onclick="saveMessage()">저장하기</button>
	</div>
</body>
</html>