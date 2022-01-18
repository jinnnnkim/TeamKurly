<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ������ ȯ�漳�� : ����������</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<script src="https://kit.fontawesome.com/7d11552255.js" crossorigin="anonymous"></script>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
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
	
		<!-- ȸ������ȯ�漳�� : ����������
		title : �� �������� �̵��� �� �ִ� a�±� �ڽ� ����
		
		�̸��� ����(ġȯ)����, �̸��� ���� �� 2���� ���̺�� ���������� ����
		
		�ڸ����� �ȿ� �̹��� ��� ���� ���� ���� �ʿ�
	 -->
	 
	<div class="wrap">
		<div class="title">
			
			<!-- ȸ������ ���� �̵� -->
			<a href="mailformSet.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			ȸ������
			</a>
			
			<!-- ���̵�ã�� �� �̵� -->
			<a href="idsearchMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			���̵�ã��
			</a>
			
			<!-- ��й�ȣã�� �� �̵� -->
			<a href="pwsearchMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			��й�ȣã��
			</a>
			
			<!-- �ֹ�Ȯ�θ��Ϸ� �̵� -->
			<a href="orderMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�ֹ�Ȯ�θ���
			</a>
			
			<!-- �Ա�Ȯ�θ��Ϸ� �̵� -->
			<a href="depositMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�Ա�Ȯ�θ���
			</a>
			
			<!-- ��ۿϷ���Ϸ� �̵� -->
			<a href="deliMail.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			��ۿϷ����
			</a>
		</div>
		
		<div class="cateTitle">
		�̸��� ����(ġȯ)����
		</div>
		
		<table  class="table1">
			<tr>
				<td class="grayBg">{�̸�}</td>
				<td class="whiteBg">ȸ���� �̸����� ġȯ�˴ϴ�. <div class="skybluefont">ex)ȫ�浿</div></td>
			</tr>
			<tr>
				<td class="grayBg">{���̵�}</td>
				<td class="whiteBg">ȸ���� ���̵�� ġȯ�˴ϴ�.<div class="skybluefont">ex)hong</div></td>
			</tr>
			<tr>
				<td class="grayBg">{��й�ȣ}</td>
				<td class="whiteBg">ȸ���� ��й�ȣ�� ġȯ�˴ϴ�. <div class="skybluefont">ex)hong****</div></td>
			</tr>
			<tr>
				<td class="grayBg">{�ֹ�����}</td>
				<td class="whiteBg">ȸ���� ��й�ȣ�� ġȯ�˴ϴ�. <div class="skybluefont">�ֹ�����,������� ���� ���Ϸ� �߼۵˴ϴ�.</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
		�̸��� ����
		</div>
		
		<table class="table2">
			<tr>
				<td class="grayBg">�̸��� ����</td>
				<td class="whiteBg"><input id="text" type="text" value="�ֹ��� �����Ǿ����ϴ�."></td>
			</tr>
			<tr>
				<td class="grayBg">�̸��� ��뿩��</td>
				<td class="whiteBg"><input type="radio" checked="checked">�����<input type="radio">������</td>
			</tr>
			<tr>
				<td class="grayBg">������ �����߼�</td>
				<td class="whiteBg">
					<input type="radio" checked="checked">�����<input type="radio">������
					<div class="skybluefont">ȸ���� �޴� �̸����� �����ڵ� �����ϰ� �޾ƺ� �� �ֽ��ϴ�.</div>
				</td>
			</tr>
			<tr>
				<td class="grayBg">�̸��� �߿䵵</td>
				<td class="whiteBg">
					<select>
						<option>�߰�</option>
						<option>����</option>
						<option>����</option>
					</select>
					<div class="skybluefont">�߿䵵 ������ ������ �̸����� �޴»���� �����Կ� �߿䵵�� ǥ�õ˴ϴ�.</div>
					
					<!-- �ڹ�ư ��ġ ���� �ʿ� -->
					<div class="container-fluid">
					<button class="helpBtn" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
						<!-- ����ǥ ������ -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  						<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  						<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
						</svg>
						����
					</button>
					</div>
					
					<div class="collapse" id="collapseExample">
						<div class="helpBox">
						�̸����� �߿䵵 ������ �����Ͽ� �޴»���� ��� Ȯ���ؾ� �ϴ� �޽�������, <br>
						�ƴϸ� ���߿� Ȯ���ص� �Ǵ� �޽��������� ������ �� �ֽ��ϴ�.<br>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  						<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
						</svg>
						�Ϲ����� �̸����� �߿䵵�� '�߰�'���� �����Ͻø� �˴ϴ�.
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
		
		<!-- �����ϱ� ��ư Ŭ���� alertâ �̺�Ʈ ���� -->
		<button class="saveBtn" onclick="saveMessage()">�����ϱ�</button>
		
	</div>	
</body>
</html>