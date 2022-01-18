<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�������͹߼۰���-�������͹߼�</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/Sms/sendnewsSms.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	</head>
<body>
	<div class="wrap">
	
		<!-- �������͹߼۰��� : �������͹߼� ������
			��ܿ� �������͹߼�/�߼۳�����ȸ/�������������� �̵� ������ a�±� �ڽ� ���� �Ϸ�
		 -->
		
		<div class="pageTitle">
			<!-- �������͹߼� �������� �̵� -->
			<a href="sendnewSms.jsp">
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
			<a href="setmailForm.jsp.jsp">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
			</svg>
			����������
			</a>
		</div>
		
		
	<form action="#" method="post">
		<div class="list_head">
			<table align="center" id="tableGroup">
				<tr>
					<td>
							<input type="checkbox">
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
							<input type="checkbox" value="���Űź�����" checked="checked">���Űź�����
							<input type="checkbox" value="�̸����ߺ�üũ" checked="checked">�̸����ߺ�üũ
							<input type="text" name="userSearch">
							<input class="search_btn" type="button" value="�˻�">
					</td>
				</tr>	
			</table>
		</div>
		
		<div class="infoBox">
		�������͸� �߼��Ͻ÷��� ���� ��� <div class="underline">�˻������� �߼��� ����� �˻�</div>�� �ֽñ� �ٶ��ϴ�. <br>
		��� 2�� �޴��� <a href="setmailForm.jsp"><div class="boldFont">'����������'</div></a> ���������� ���������� �⺻�������� �����Ͻ� �� �ֽ��ϴ�.
		</div>
	</form>	
	</div>
</body>
</html>