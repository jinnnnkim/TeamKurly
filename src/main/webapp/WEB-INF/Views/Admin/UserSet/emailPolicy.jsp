<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>회원관리 환경설정 : 이메일주소 무단수집 거부</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/UserSet/useTerm.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>	
</head>
<body>
	<div class="wrap">
		<div class="title">
			이메일주소 무단수집 거부
		</div>
		
		<textarea id="mailContent" rows="10" cols="100" style="width: 100%">
		우리 마켓컬리 회원에게 무차별적으로 보내지는 타사의 메일을 차단하기 위해, <br>

		본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 <br>

		그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, <br>

	이를 위반시 정보통신망법에 의해 형사처벌됨을 유념하시기 바랍니다.

 

-[게시일 2007년 10월 31일]-
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