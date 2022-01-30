<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }"/>
<%
	request.setCharacterEncoding("utf-8");
%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ����������</title>
	<script src="https://kit.fontawesome.com/7d11552255.js" crossorigin="anonymous"></script>
	<link rel=��stylesheet�� href=��https://use.fontawesome.com/releases/v5.14.0/css/all.css��
     integrity=��sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc�� crossorigin=��anonymous��>
 	<link href=��https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap�� rel=��stylesheet��>
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/AdUser/moduserInfo.css">
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script type="text/javascript" src="../../../Resources/SmartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script><script type="text/javascript" src="/recipetoyou/Resources/Admin/Js/AdUser/moduserInfo.js" charset="UTF-8"></script>
</head>
<body>

	<!-- 
		ȸ������Ʈ �� ���� ��ư Ŭ���� �Ѿ���� ������
	 -->
	<div class="wrap">
		<div class="mainTitle">
			ȸ���⺻����
		</div>
		
		<form action="${contextPath}/aduser/userUpdate.do" method="post">
		
			<table border="1">
			<c:set var="user" />
				<tr>
					<td class="grayBg">���̵�</td>
					<td class="whiteBg"><input id="text" type="text" value="${userVO.user_id}" readonly="readonly">
					<input type="hidden" name="user_id" value="${userVO.user_id }">
					</td>
					
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check" id="checkIcon"></i>
					�̸�
					</td>
					<td class="whiteBg"><input id="text" type="text" name="user_name" value="${userVO.user_name}"><div class="skyblueFont">+�ִ�50�ڱ��� �Է� ����</div>
					<%-- <input type="hidden" name="user_name" value="${userVO.user_name}"/> --%>
					</td>
					
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					�������
					</td>
					<td class="whiteBg">
					${userVO.user_birth}
					<input type="hidden" name="user_birth" value="${userVO.user_birth}">
						
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">
					<i class="fas fa-check fa-xs" id="checkIcon"></i>
					����
					</td>
					<td class="whiteBg">
						${userVO.user_gender}
						<%-- <c:out value="${userVO.user_gender}"/> --%>
						<!-- <input type="radio">��<input type="radio">�� -->
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">��й�ȣ</td>
					<td class="whiteBg">
					<input type="text" name="user_pw" value="${userVO.user_pw}">
					<%-- <input type="hidden" name="user_pw" value="${userVO.user_pw }"> --%>
					<div class="skyblueFont">+4~15���� ������,��������</div>
					<div class="redFont">(��й�ȣ ����ÿ��� �Է��Ͻʽÿ�)</div>
					</td>
				</tr>
			
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>ȸ�����</td>
					<td class="whiteBg">
					${userVO.user_grade}
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">�̸����ּ�</td>
					<td class="whiteBg">
					<input id="text" type="text" name="user_email" value="${userVO.user_email}">
					<%-- <input type="hidden" name="user_email" value="${userVO.user_email}"> --%>
					</td>
				</tr>
				
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>�޴���ȭ</td>
					<td class="whiteBg">
					<input id="text" type="text" name="user_phone" value="${userVO.user_phone}"/>
					<%-- <input type="hidden" name="user_phone" value="${userVO.user_phone}"> --%>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg"><i class="fas fa-check fa-xs" id="checkIcon"></i>�ּ�</td>
					<td class="whiteBg">
					<input id="text" type="text" name="user_addr" value="${userVO.user_addr}">
					<%-- <input type="hidden" name="user_addr" value="${userVO.user_addr}"><br> --%>
					</td>
				</tr>
			</table>
			
			<div class="title">
				�������ż���
			</div>
			
			<table>
				<tr>
					<td class="grayBg">�������� ����</td>
					<td class="whiteBg">
					${userVO.email_agree}
					<%-- <c:out value="${userVO.email_agree}"/> --%>
					</td>
				</tr>
				
				<tr>
					<td class="grayBg">���ڸ޽��� ����</td>
					<td class="whiteBg">
					${userVO.sms_agree}
					<%-- <c:out value="${userVO.sms_agree}"/> --%>
					</td>
				</tr>
				
			</table>
			
			<!-- <div class="title">
				�����ڸ޸�
			</div> -->
			
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
		
			<%-- <button type="button" class="saveBtn" onsubmit="return _onSubmit();"><a href="${contextPath}/user/userUpdate.do?user_id=${userVO.user_id}">����</a></button> --%>
			<input type="submit" class="saveBtn" value="����">
			</form>
			
			<!-- ��ư Ŭ���� �ڷΰ��� js�����Ǿ�����.  -->
			<button type="button" class="backBtn" onclick="location.href='${contextPath}/user/listadUsers.do'">�ڷΰ���</button>
		</div>

	</div>
</body>
</html>