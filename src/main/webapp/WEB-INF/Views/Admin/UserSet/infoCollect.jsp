<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원관리 환경설정 : 개인정보수집 및 안내</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/UserSet/infoCollect.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="title">
			개인정보수집 및 안내
		</div>
		
		<textarea id="mailContent" rows="10" cols="100" style="width: 100%">
			'OOOOO'은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. <br>
			회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,	<br>
			개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br>
			회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다. <br><br><br>

			ο 시행일자 : 2007년 10월 31일 <br>

			◆ 수집하는 개인정보의 항목 <br>
			회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다. <br>
			ο 수집항목 : 이름, 아이디, 비밀번호, 자택 전화번호, 휴대전화번호, 이메일, 서비스이용기록, 쿠키, 접속IP정보 <br>
			ο 개인정보 수집방법 : 홈페이지(회원가입, 고객게시판 등), 제휴사로부터의 제공 <br><br><br>
 

			◆ 개인정보의 수집 및 이용목적 <br>
			회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. <br>
			ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 <br>
   			콘텐츠 제공, 구매 및 요금 결제, 요금추심 <br>
			ο 회원 관리 <br>
   			회원제 서비스 이용에 따른 본인확인, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 불만처리 등 민원처리, 고지사항 전달<br>
			ο 마케팅 및 광고에 활용 <br>
   			신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달 <br><br><br>

			◆ 개인정보의 보유 및 이용기간 <br>
			회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다. <br>
			단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령이 정한 일정한 기간 동안 회원정보를 보관합니다.
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
		
		<div class="saveBtn">
			<input type="button" value="저장하기">
		</div>
		
	</div>
</body>
</html>