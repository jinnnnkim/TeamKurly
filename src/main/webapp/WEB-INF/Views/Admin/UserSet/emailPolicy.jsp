<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ������ ȯ�漳�� : �̸����ּ� ���ܼ��� �ź�</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/UserSet/useTerm.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>	
</head>
<body>
	<div class="wrap">
		<div class="title">
			�̸����ּ� ���ܼ��� �ź�
		</div>
		
		<textarea id="mailContent" rows="10" cols="100" style="width: 100%">
		�츮 �����ø� ȸ������ ������������ �������� Ÿ���� ������ �����ϱ� ����, <br>

		�� ������Ʈ�� �Խõ� �̸��� �ּҰ� ���ڿ��� ���� ���α׷��̳� <br>

		�� ���� ����� ��ġ�� �̿��Ͽ� �������� �����Ǵ� ���� �ź��ϸ�, <br>

	�̸� ���ݽ� ������Ÿ����� ���� ����ó������ �����Ͻñ� �ٶ��ϴ�.

 

-[�Խ��� 2007�� 10�� 31��]-
		</textarea>
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