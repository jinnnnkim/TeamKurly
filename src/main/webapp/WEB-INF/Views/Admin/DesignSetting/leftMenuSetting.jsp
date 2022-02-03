<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%request.setCharacterEncoding("UTF-8");%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>좌측메뉴설정</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/DesignSetting/leftMenuSetting.css">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="leftMenuSetting">
		<form action="#">
			<div class="leftMenuTable">
			<p>좌측메뉴설정</p>
				<table class="lMT">
					<tr>
						<td class="gray">상단 타이틀</td>
						<td>
							<input type="radio" id="leftMenuText" name="leftMenu" value="텍스트" >텍스트
							<input type="radio" id="leftMenuImg" name="leftMenu" value="이미지">이미지
						</td>
					</tr>
					
					<tr class="lM2">
						<td class="gray lm3">상단 타이틀 이미지</td>
						<td>
							<table>
								<tr>
									<td class="gray">1차 메뉴명</td>
									<td>파일업로드</td>
								</tr>
								<tr>
									<td class="gray">고객센터</td>
									<td><input type="file" value="파일 업로드"></td>
								</tr>
								<tr>
									<td class="gray">마이페이지</td>
									<td><input type="file" value="파일 업로드"></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr class="lM1">
						<td class="gray">하위메뉴 색상</td>
						<td>
							<table>
								<tr>
									<td class="gray">2차메뉴 글자색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
								<tr>
									<td class="gray">2차메뉴 배경색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
								<tr>
									<td class="gray">2차메뉴 테두리색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
								<tr>
									<td class="gray">3차메뉴 글자색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
								<tr>
									<td class="gray">3차메뉴 배경색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
								<tr>
									<td class="gray">3차메뉴 테두리색</td>
									<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
								</tr>
							</table>
						</td>
					</tr>
					
				</table>
			</div>
			<div class="desSave">
				<input type="submit" value="저장하기" onclick="#">
			</div>
		</form>
	</div>
	<script type="text/javascript">	
		$(document).ready(function() {
			$("#leftMenuImg").click(function() {
				$(".lM1").remove();
				var leftMenu2 = 
					"<tr class='lM2'>"
					+"<td class='gray'>상단 타이틀 이미지</td>"
					+"<td>"
					+"<table>"
					+"<tr>"
					+"<td class='gray'>1차 메뉴명</td>" 
					+"<td>파일업로드</td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>고객센터</td>"
					+"<td><input type='file' value='파일 업로드'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>마이페이지</td>"
					+"<td><input type='file' value='파일 업로드'></td>"
					+"</tr>"
					+"</table>"
					+"</td>"
					+"</tr>"
					+"<tr class='lM1'>"
					+"<td class='gray'>하위메뉴 색상</td>"
					+"<td>"
					+"<p>색상을 지정하지 않으려면 입력란의 값을 비우시고 저장하시면 됩니다.</p>"
					+"<table>"
					+"<tr>"
					+"<td class='gray'>2차메뉴 글자색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>2차메뉴 배경색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>2차메뉴 테두리색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>3차메뉴 글자색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>3차메뉴 배경색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"<tr>"
					+"<td class='gray'>3차메뉴 테두리색</td>"
					+"<td>비활성 : <input type='color'> 활성 : <input type='color'></td>"
					+"</tr>"
					+"</table>"
					+"</td>"
					+"</tr>"
					$('.lMT').append(leftMenu2);
				$('#leftMenuImg').attr('disabled',true);
				$('#leftMenuText').attr('disabled',false);
		    });
		});
		
		$(document).ready(function() {
			$("#leftMenuText").click(function() {
				$(".lM2").remove();
				$('#leftMenuImg').attr('disabled',false);
				$('#leftMenuText').attr('disabled',true);
			});
		});
	</script> 
</body>
</html>