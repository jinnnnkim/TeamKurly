<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ������ȯ�漳��</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
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
		ȸ������ȯ�漳�� ������
		titleBox : �� �������� �̵��� �� �ִ� a �±� �ڽ� ����
		
		ȸ��������, ȸ�������׸���, ȸ����޼���, ��й�ȣ ���� ���� �� 4���� ���̺�� ����
		
	 -->
	<div class="wrap">
		<div class="titleBox">
			<a href="basicSetting.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�⺻ȯ�漳��
			</a>
			
			<a href="useTerms.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�̿���
			</a>
			
			<a href="infoPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			��������ó����ħ
			</a>
			
			<a href="infoCollect.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			������������ �� �ȳ�
			</a>
			
			<a href="teenPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			û�ҳ⺸ȣ��å
			</a>
			
			<a href="emailPolicy.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�̸����ּ� ���ܼ��� �ź�
			</a>
			
			<a href="nameConfirm.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			�Ǹ���������
			</a>
			
			<a href="mailformSet.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			����������
			</a>
		</div>
		
		<div class="cateTitle">
			ȸ���� ����
		</div>
		<div class="container-fluid">
			<!-- ���� ��ư Ŭ���� â �������� ��Ʈ��Ʈ�� ����, �ڹ�ư ��ġ ���� �ʿ� -->
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
				<!-- ����ǥ ������ -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				����
			</button>
		</div>
		
		<!-- ���� Ŭ���� �������� ��� -->
		<div class="collapse" id="collapseExample1">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				ȸ������ ����� ��� ȸ�������׸��� Ȱ��ȭ �Ǹ� �� ��⺰�� ȸ��������� ��Ͻ� �� �ֽ��ϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�ݴ�� �̻��� ��⺰ ȸ����޺� ���� �׸���� ��� ������� �ʽ��ϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				������ ������ ���� ȸ�����Խ�û���� �Է� ���°� ����� �� �ֽ��ϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				������ �������� �������� ����Ʈ � ������ �°� �������� ������ ���� �� �� �ֽ��ϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�⺻����, �Ǹ�����, ������(I-Pin)������ ���� ȸ�������� ȿ������ ���� �� �ֽ��ϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				������ �������� ������ ���� �Ǹ����� ����� �˸°� ����(�Ǹ����� �Ǵ� ��������)�մϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�ؿܱܿ���ȸ���� ������ ��� �������� ������ '�⺻����' ��⸸ �����մϴ�.<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				������ ���� ������ '��14���̸�ȸ��' �� üũ�ϴ��� ������ ���������� '��14���̻�' �� ��쿡�� ���õ˴ϴ�.
			</div>
		</div>
		<table class="table1">
			<tr>
				<td class="grayBg">ȸ���� ��뿩��</td>
				<td class="whiteBg"><input type="radio">���&nbsp;<input type="radio">�̻��</td>
			</tr>
			<tr>
				<td class="grayBg">�������� ��뿩��</td>
				<td class="whiteBg"><input type="radio">�����&nbsp;<input type="radio">������</td>
			</tr>
			<tr>
				<td class="grayBg">������ ���� ����</td>
				<td class="whiteBg"><input type="checkbox" checked="checked">�Ϲ�ȸ��&nbsp;<input type="checkbox" checked="checked">�����ܱ���ȸ��&nbsp;<input type="checkbox" checked="checked">�ؿܱܿ���ȸ��</td>
			</tr>
			<tr>
				<td class="grayBg">���� ���� ����</td>
				<td class="whiteBg"><input type="checkbox" checked="checked">�⺻����<div class="skyblueFont">(����+����)</div>&nbsp;<input type="checkbox">�Ǹ�����<div class="skyblueFont">(������,�Ƚ�üũ)+����Ͻ� �Ǹ����� ����� �����Ͻʽÿ�.</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			ȸ������ �׸� ����
		</div>
		
		
		<!-- ���� Ŭ���� �������� ��� -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
			<!-- ����ǥ ������ -->
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  			<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  			<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
			</svg>
				����
			</button>
		</div>
		
		<div class="collapse" id="collapseExample2">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�ʼ������� üũ�Ǿ��ִ� �׸��� ���Խ� �ʼ� �Է°����� ����˴ϴ�.
			</div>
		</div>
		
		<table class="table2">
			<tr class="grayBg">
				<td id="short_space">�׸�</td>
				<td id="short_space">���</td>
				<td id="short_space">�ʼ�</td>
				<td id="short_space">�׸�</td>
				<td id="short_space">���</td>
				<td id="short_space">�ʼ�</td>
			</tr>
			<tr>
				<td class="grayBg">�г���</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">�Ϲ���ȭ</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox"></td>
			</tr>
			<tr>
				<td class="grayBg">�ּ�</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">�����λ�</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox"></td>
			</tr>
			<tr>
				<td class="grayBg">�޴���ȭ</td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="whiteBg"><input type="checkbox" checked="checked"></td>
				<td class="grayBg">�޴�������</td>
				<td class="whiteBg"><input type="checkbox"></td>
				<td class="whiteBg"><a href="../AdUser/sendnumList.jsp">[���۳�������]</a></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			ȸ�� ��� ����
		</div>
		
		<!-- ���� Ŭ���� �������� ��� -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
			<!-- ����ǥ ������ -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				����
			</button>
		</div>
		
		<div class="collapse" id="collapseExample3">
			<div class="helpBox">
			<!-- �� ȸ�� ��� ���� �����ø��� �����ϰ� ��� �� �κ� ���� �ʿ� -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�Ϲ� : �� ���� �ݾ� 1���� ���� (�Ϲ� ��� ���� ���� ��) / ���� 0.5%<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				������ : �� ���� �ݾ� 1 ~ 3���� (������ ��� ���� ���� ��) / ���� 1% / �ִ� 6õ�� �߰� ����(��¦ ����, ���� �̺�Ʈ ��) <br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�Ϲ� : �� ���� �ݾ� 1���� ���� (�Ϲ� ��� ���� ���� ��) / ���� 3% / �ִ� 7õ�� �߰� ����(��¦ ����, ���� �̺�Ʈ ��)<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�Ϲ� : �� ���� �ݾ� 1���� ���� (�Ϲ� ��� ���� ���� ��) / ���� 5% / �ִ� 1���� �߰� ����(��¦ ����, ���� �̺�Ʈ ��)<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				�Ϲ� : �� ���� �ݾ� 1���� ���� (�Ϲ� ��� ���� ���� ��) / ���� 7% / ���� �ı�<br>
				
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				ȸ�� ����� �ʱ⼳�� ���� �������� �ʴ� ���� �����մϴ�.
			</div>
		</div>
		
		<table class="table3">
			<tr>
				<td class="grayBg" width="20%">���</td>
				<td class="grayBg" width="70%">��޸�</td>
			</tr>
			<tr>
				<td class="grayBg">Lv.1</td>
				<td class="whiteBg"><input id="gradeText" type="text" value="�Ϲ�(General)"><div class="skyblueFont">+�ʱ�ȸ�����Խ� �ڵ����� �����Ǵ� ����Դϴ�.</div></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.2</td>
				<td class="whiteBg" colspan="5"><input id="gradeText" type="text" value="������(Friends)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.3</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value="ȣ��Ʈ(Host)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.4</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value=" ��(Cook)"></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.5</td>
				<td class="whiteBg" colspan="5"><input  id="gradeText" type="text" value="����(Chef)"><div class="skyblueFont">+������������ �α��νÿ� ������ ������ �ο� +���� ���� ���</div></td>
			</tr>
			<tr>
				<td class="grayBg">Lv.8</td>
				<td class="whiteBg" colspan="5">��ȸ��&nbsp;&nbsp;&nbsp;<div class="skyblueFont">+��ȸ�� �� �α����� ���� ���� �����̸� ������ �� �����ϴ�. +���� ���� ���</div></td>
			</tr>
		</table>
		
		<div class="cateTitle">
			��й�ȣ ���� ����
		</div>
		
		<!-- ���� Ŭ���� �������� ��� -->
		<div class="container-fluid">
			<button class="helpBtn" data-toggle="collapse" href="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
			<!-- ����ǥ ������ -->
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
				</svg>
				����
			</button>
		</div>
		
		<div class="collapse" id="collapseExample4">
			<div class="helpBox">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  				<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
				</svg>
				��й�ȣ�� �������� O���� ���� ��� ȸ���α��ν� ��й�ȣ ����ȳ� �������� ���ϴ�.
			</div>
		</div>
		
		<table class="table4">
			<tr>
				<td class="grayBg">��뿩��</td>
				<td class="whiteBg"><input type="radio">�����&nbsp;<input type="radio">������</td>
			</tr>
			<tr>
				<td class="grayBg">����Ⱓ</td>
				<td class="whiteBg"><input type="text" value="2">����</td>
			</tr>
		</table>
		
		<button class="saveBtn" onclick="saveMessage()">�����ϱ�</button>
	</div>
</body>
</html>