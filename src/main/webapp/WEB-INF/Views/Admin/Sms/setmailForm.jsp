<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�������͹߼۰���-����������</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/Sms/setmailForm.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>	
	
	
</head>
<body>
	<div class="wrap">
		
		<!-- �������͹߼۰��� : ���������� ������
			��ܿ� �������͹߼�/�߼۳�����ȸ/�������������� �̵� ������ a�±� �ڽ� ���� �Ϸ�
		 -->
		<div class="pageTitle">
			<!-- �������͹߼� �������� �̵� -->
			<a href="sendnewsSms.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�������͹߼�
			</a>
			
			<!-- �߼۳�����ȸ �������� �̵� -->
			<a href="searchList.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�߼۳�����ȸ
			</a>
			
			<!-- ���������� �������� �̵� -->
			<a href="setmailForm.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			����������
			</a>
		</div>
		
		<div class="title">
			�������� ������ ����
		</div>
		
		<textarea id="mailContent" rows="10" cols="100" style="width: 100%"></textarea>
		<script id="smartEditor"  type="text/javascript">
			var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
				    oAppRef: oEditors,
				    elPlaceHolder: "mailContent",  
				    sSkinURI: "../../../Resources/SmartEditor/SmartEditor2Skin.html",  //smartEditor2Skin.html ��� �Է�
				    fCreator: "createSEditor2",
				    htParams : { 
				    	// ���� ��� ���� (true:���/ false:������� ����) 
				        bUseToolbar : true, 
						// �Է�â ũ�� ������ ��� ���� (true:���/ false:������� ����) 
						bUseVerticalResizer : true, 
						// ��� ��(Editor | HTML | TEXT) ��� ���� (true:���/ false:������� ����) 
						bUseModeChanger : true
				    }
				});

		</script>	
		
		<div class="saveBtn">
			<input type="button" value="�����ϱ�">
		</div>
	</div>
</body>
	
</html>



