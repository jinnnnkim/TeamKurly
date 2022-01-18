<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�������͹߼۰���-�߼۳�����ȸ</title>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/Sms/searchList.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../../../Resources/Admin/Js/Sms/searchList.js" charset="UTF-8"></script>
 	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
	
</head>
<body>
	<!-- �������͹߼۰��� : �߼۳�����ȸ
			��ܿ� �������͹߼�/�߼۳�����ȸ/�������������� �̵� ������ a�±� �ڽ� ���� �Ϸ�
		 -->
	<div class="wrap">
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
		
	<form action="#" method="post">
		<div class="list_head">
			<table align="center" id="tableGroup">
				<tr>
					<td>
							<input type="checkbox">
							<select>
								<option value="sendDate">�߼�����</option>
							</select>
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
							<select name="searchOption">
								<option value="userId">�̸�������</option>
								<option value="userName">�̸��ϳ���</option>
							</select>
							<input type="text" name="userSearch">
							<input class="search_btn" type="button" value="�˻�">
					</td>
				</tr>	
			</table>
		</div>
	</form>
	
	<div class="middle_titleBox">
			�� 21���� �߼۳����� �˻��Ǿ����ϴ�.		
	</div>
	
	<div class="send_list">
		<table align="center" id="tableGroup">
			<thead>
			<tr align="center" class="table_title">
			<!-- ���̺� ���� �ִ� üũ�ڽ� Ŭ���� ��ü���õǴ� js�����Ǿ����� -->
				<th width="6%"><input type="checkbox" id="checkAll" name="chk"></th>
				<th width="60%">�̸�������</th>
				<th width="8%">�߼۰Ǽ�</th>
				<th width="15%">�߼��Ͻ�</th>
				<th width="6%">����</th>
			</tr>
			</thead>
			
			<tbody class="table_content">
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<!-- ���� Ŭ���� emailPopup.jsp �˾�â ���� js �����Ǿ����� -->
				<td><a href="emailPopup.jsp" onclick="window.open(this.href,'�˾�â','width=800, height=800'); return false;">[2��] ���ͳݿ���� Ư������!!</a></td>
				<td>1��</td>
				<td>2021.02.04 10:40:44</td>
				<!-- ��ư Ŭ���� alertâ ���� js �����Ǿ����� -->
				<td><button onclick="deleteMessage()">����</button></td>
			</tr>
			
			<tr>
				<td><input type="checkbox"  name="chk"></td>
				<td><a href="emailPopup.jsp" onclick="window.open(this.href,'�˾�â','width=800, height=800'); return false;">[2��] �űԼ��� �ȳ��帳�ϴ�.</a></td>
				<td>1��</td>
				<td>2021.02.04 10:40:44</td>
				<td><button onclick="deleteMessage()">����</button></td>
			</tr>	
			
			<tr>
				<td><input type="checkbox"  name="chk"></td>
				<td><a href="emailPopup.jsp" onclick="window.open(this.href,'�˾�â','width=800, height=800'); return false;">[2��] �̺�Ʈ �ҽ��Դϴ�.</a></td>
				<td>1��</td>
				<td>2021.02.04 10:40:44</td>
				<td><button onclick="deleteMessage()">����</button></td>
			</tr>	
			
			<tr>
				<td><input type="checkbox"  name="chk"></td>
				<td><a href="">[1��] �űԼ��� �ȳ��帳�ϴ�.</a></td>
				<td>1��</td>
				<td>2021.01.04 10:40:44</td>
				<td><button onclick="deleteMessage()">����</button></td>
			</tr>	
			
			<tr>
				<td><input type="checkbox"  name="chk"></td>
				<td><a href="">[1��] ���ͳݿ���� Ư������!!</a></td>
				<td>1��</td>
				<td>2021.01.04 10:40:44</td>
				<td><button onclick="deleteMessage()">����</button></td>
			</tr>
			</tbody>
		</table>
	</div>
		
		<!-- ��ưŬ���� ��ü���õǴ� js�����Ǿ����� -->
		<input type="button" value="��ü����" id="check_all">
		<!-- ��ưŬ���� ��ü���� �����Ǵ� js�����Ǿ����� -->
		<input type="button" value="��ü����" id="uncheck_all"><br><br><br>
	
	<div class="page_wrap">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a>
				<a class="arrow prev" href="#"></a>
				<a class="selectPage" href="#">1</a>
				<a href="#">2</a>
				<a class="arrow next" href="#"></a>
				<a class="arrow nnext" href="#"></a>
			</div>
		</div>
		
	</div>

</body>
</html>