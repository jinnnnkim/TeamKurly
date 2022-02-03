<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe to You :: ������ �庸��, ������ �� ��</title>
<link href="/ezen/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="/ezen/Resources/User/Css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="/ezen/Resources/User/Css/notice.css" />	
<!-- slick ��ũ ���� -->
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
<!-- JQuery -->	
<script type="text/javascript"
						src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/ezen/Resources/User/Js/address.js"></script>						

</head>
<body>
	<div class="wrap">
		
		<div class="notice_deliver_wrap">
			<div class="notice_deliver_tit">
				<h2 class="tit">��������</h2>
				<p class="sub">������ �� ���� ���ο� �ҽĵ�� ������ �������� �Ѱ����� Ȯ���ϼ���.</p>
			</div>
			<!-- notice_deliver_tit -->
			
			<div id="main">
				<div class="main_tb">
					<table width="100%" align="center" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<th>����</th>
								<td>�����ø� ��� �ȳ�</td>
							</tr>
							<tr>
								<th>�ۼ���</th>
								<td>Recipe To You</td>
							</tr>
							
							<tr class="twos">
								<td colspan="2" class="twos_tb">
									<ul>
										<li class="write_date">
											<strong class="th">�ۼ���</strong>
											<span class="td">2022-01-12</span>			
										</li>
										<li class="click_count">
											<strong class="th">��ȸ��</strong>
											<span class="td">1</span>	
										</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>	
				</div>
				<!-- main_tb -->
			
			</div>
			<!-- main �������� ���̺� ��� �κ�-->
			
			<div class="img_noticeview">
				<img alt="�ż����� ���ձ���" src="/ezen/Resources\User\Img\deliver_notice\deliver_1.jpg">
				<img alt="�������" src="/ezen/Resources\User\Img\deliver_notice\deliver_2.jpg" class="deliver_img_in">
				<img alt="�Ѵ��� ����" src="/ezen/Resources\User\Img\deliver_notice\deliver_3.jpg" class="deliver_img_in">
				<img alt="�� 7�� �������" src="/ezen/Resources\User\Img\deliver_notice\deliver_4.jpg" class="deliver_img_in">
				
				<a href="#">
					<img alt="������� �˻�" src="/ezen/Resources\User\Img\deliver_notice\deliver_5.jpg"  class="deliver_img_search">
				</a>
			
			
			<!--  �ּҰ˻� -  ���� ���¼ҽ� Ȱ�� ���� 	
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
	    			new daum.Postcode({
	       				 oncomplete: function('.deliver_img_search') {
	            // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ��Դϴ�.
	            // ������ �����Ͽ� �پ��� Ȱ����� Ȯ���� ������.
	        			}
	   			 }).open();
				</script>
				
				 -->
				
				
				
				<img alt="�� 6�� ���� ���" src="/ezen/Resources\User\Img\deliver_notice\deliver_6.jpg" class="deliver_img_in">
				<img alt="��� �̹��� �ϴ�" src="/ezen/Resources\User\Img\deliver_notice\deliver_7.jpg" class="deliver_img_bottom">
			</div>
			<!-- img_noticeview -->
			
			<div class="list_btn_wrap">
				<div class="list_btn">
					<a href="notice.jsp">
						<button type="button" class="list_click">���</button>
					</a>
				</div>
				<!-- list_btn -->
			</div>
			<!-- list_btn_wrap -->
			
			<div class="notice_board">
				<ul>
					<li class="prev">
						<a href="" class="board_icons"><i class="fas fa-angle-up">������</i></a>
						<a href="#">�ı�Խ���(Product review)�� 1:1���� �Խ��� ���å</a>
					</li>
					<li class="next">
						<a href="" class="board_icons"><i class="fas fa-angle-down">������</i></a>
						<a href="#">�õ���ǰ ������ ���濡 ���� �ȳ��� ��</a>
					</li>
				</ul>
			
			</div>
			<!-- notice_board -->
			
		</div>
		<!-- notice_deliver_wrap ��ü �±� -->

	</div>
	<!-- wrap -->
</body>
</html>