<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ����������</title>
	<script src="https://kit.fontawesome.com/7d11552255.js" crossorigin="anonymous"></script>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/AdUser/moduserInfo.css">
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<!-- 
		ȸ������Ʈ �� ���� ��ư Ŭ���� �Ѿ���� ������
	 -->
	<div class="wrap">
		<div class="mainTitle">
			ȸ���⺻����
		</div>
		
		<form action="#" method="post">
			<table border="1">
				<tr>
					<td class="grayBg">���̵�</td>
					<td class="whiteBg">kim1z63</td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check" id="checkIcon"></i>
					�̸�
					</td>
					<td class="whiteBg"><input id="text" type="text" value="������"> <div class="skyblueFont">+�ִ�50�ڱ��� �Է� ����</div></td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					�������
					</td>
					<td class="whiteBg">
						<select>
							<option>�⵵</option>
							<option>��</option>
							<option>��</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					����
					</td>
					<td class="whiteBg">
						<input type="radio">��<input type="radio">��
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">��й�ȣ</td>
					<td class="whiteBg">
					<input type="text" >
					<div class="skyblueFont">+4~15���� ������,��������</div>
					<div class="redFont">(��й�ȣ ����ÿ��� �Է��Ͻʽÿ�)</div>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>�г���</td>
					<td class="whiteBg"><input id="text" type="text" value="����"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>ȸ�����</td>
					<td class="whiteBg">
					<select>
						<option>�Ϲ�</option>
						<option>������</option>
						<option>ȭ��Ʈ</option>
						<option>�󺥴�</option>
						<option>����</option>
						<option>������</option>
					</select>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">�̸����ּ�</td>
					<td class="whiteBg"><input id="text" type="text" value="webmaster@00000.000"></td>
				</tr>
				
				<tr>
					<td class="grayBg">�Ϲ���ȭ</td>
					<td class="whiteBg"><input id="text" type="text" value="000-0000-0000"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>�޴���ȭ</td>
					<td class="whiteBg"><input id="text" type="text" value="000-0000-0000"></td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>�ּ�</td>
					<td class="whiteBg">
					<input id="text" type="text" value="245-713"> <div class="skyblueFont">+ZIP CODE</div><br>
					<input id="text" type="text" value="���� ��ô�� ������ ����ø�Ʈ"><br>
					<input id="text" type="text" value="788"><div class="skyblueFont">+������ �ּ�</div>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">�����λ�</td>
					<td class="whiteBg"><input id="joinText" type="text"></td>
				</tr>
			</table>
			
			<div class="title">
				�������ż���
			</div>
			
			<table>
				<tr>
					<td class="grayBg">�������� ����</td>
					<td class="whiteBg">
					<input type="radio">���ŵ���
					<input type="radio">���Űź�
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">���ڸ޽��� ����</td>
					<td class="whiteBg">
					<input type="radio">���ŵ���
					<input type="radio">���Űź�
					</td>
				</tr>
				
			</table>
			
			<div class="title">
				�����ڸ޸�
			</div>
			
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
		
			<!-- ���Է� ���ϰ� �����ư Ŭ���� ���â ���� js ���� �ʿ� -->
			<button class="saveBtn">�����ϱ�</button>
			<!-- ��ư Ŭ���� �ڷΰ��� js�����Ǿ�����.  -->
			<button type="button" class="backBtn" onclick="location.href='aduserList.jsp'">�ڷΰ���</button>
		</div>

	</div>
</body>
</html>