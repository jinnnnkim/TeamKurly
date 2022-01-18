<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ��SMS�߼�</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/Sms/senduserSms.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/Admin/Js/Sms/senduserSms.js" charset="UTF-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<body>
	<!--  
		ȸ��SMS�߼� ������
		list_head : �޷� �˻� ��ư �ִ� ���̺�
		leftContent : ���ڸ޽��� ȭ�� �׸�, ��ư
		rightContent : �ȳ��ڽ�, ���̺�
	-->
	<div class="wrap">
		<div class="titleBox">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  		<path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
		</svg>
			ȸ�� SMS �߼�
		</div>
	
		<form action="#" method="post">
			<div class="list_head">
			<table align="center" id="tableGroup">
				<tr>
					<td>
							<input type="checkbox">
							<!-- �޷� js �����Ǿ����� -->
							<input type="text" id="datepicker1"> ~
  							<input type="text" id="datepicker2">
							<input class="btn_option" type="button" value="���ó�¥">
							<input class="btn_option" type="button" value="�ֱ�1����">
							<input class="btn_option" type="button" value="�ֱ�15��">
							<input class="btn_option" type="button" value="�ֱ� 1����">
							<input class="btn_option" type="button" value="�ֱ�2����">
							<input class="btn_option" type="button" value="�ֱ�3����">
					</td>
				</tr>
				
				<tr>
					<td>
							<select name="userGrade">
								<option value="generalUser">ȸ�����</option>
								<option value="Operator">���</option>
								<option value="sub_Operator">�ο��</option>
								<option value="specialUser">Ư��ȸ��</option>
								<option value="superUser">���ȸ��</option>
								<option value="regularUser">��ȸ��</option>
								<option value="assoUser">��ȸ��</option>
							</select>
							<select name="searchOption">
								<option value="userId">���̵�</option>
								<option value="userName">�̸�</option>
								<option value="userEmail">�̸���</option>
							</select>
							<input type="text" name="userSearch">
							<input type="checkbox">���Űź�����
							<input class="search_btn" type="button" value="�˻�">
					</td>
				</tr>	
			</table>
			</div>
			
			<div class="middle_title">
				SMS�� ������ ȸ���� �� 2�� �˻��Ǿ����ϴ�.
			</div>
			
			<div class="wrap_content">
			
				<div class="leftContent">
				
					<div class="messageImg">
						<img alt="����" src="../../../Resources/Admin/Img/Sms/half_msg.png"><br>
						<input type="text" id="msgText">
					</div>
			
				<div class="bottomContent">
					�����»��<br>
					<input type="text" class="sendText"><br>
					<button class="sendBtn" onclick="sendMessage()">������</button><br>
					
					<!-- �˾�â �̺�Ʈ ���� -->
					<a href="smsPopup.jsp" onclick="window.open(this.href,'�˾�â','width=400, height=500'); return false;">
					<button class="viewBtn">�߼۵� �ڵ�����ȣ����</button><br>
					</a>
					
					<!-- �ڷ�ũ�������� ���� ���� ������ ����� ��� �־ ���� Ȯ�� �ʿ� -->
					<a href="msgPopup.jsp" onclick="window.open(this.href,'�˾�â','width=240, height=500'); return false;">
					<button class="indisendBtn">���� �޽��� �߼��ϱ�</button>
					</a>
				</div>
			</div>
			
			<div class="rightContent">
			
				<div class="infoBox">
					�ִ� ���ڼ��� 80Byte �Դϴ�. 80Byte�ʰ��� �޺κ��� �����Ǿ� �߼۵˴ϴ�.<br>
  					�Ʒ� ������ ����ϸ� �������۽� �ڵ����� �ݿ��Ǿ� ���۵˴ϴ�.
				</div>
			
				<table>

				<tr>
					<td class="grayBg">{������}</td>
					<td class="whiteBg">
					����Ʈ�� �����θ��� ��µ˴ϴ�.<br>
					��)rankup.co.kr
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">{��¥}</td>
					<td class="whiteBg">
					���� ��¥�� ��µ˴ϴ�.<br>
					��)12�� 25��
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">{���̵�}</td>
					<td class="whiteBg">
						ȸ�� ���̵� ��µ˴ϴ�.<br>
						��)rankup
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">{�̸�}</td>
					<td class="whiteBg">
					ȸ�� �̸��� ��µ˴ϴ�.<br>
					��)��ũ��
					</td>
				</tr>
				</table>
			
			</div>
		</div>
		
		</form>
	</div>
</body>
</html>