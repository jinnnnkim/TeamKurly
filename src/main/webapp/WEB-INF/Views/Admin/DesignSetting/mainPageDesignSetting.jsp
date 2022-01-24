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
	<title>메인페이지 디자인설정</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/DesignSetting/mainPageDesignSetting.css">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="mainPageDesignSetting">
	<form method="post" action="#" name="#">
		<div class="mainSetting">
			<div class="mainOutLogin">
				<p class="title">메인 아웃로그인 설정</p>
				<table class="mPDS">
					<tr>
						<td class="gray">아웃로그인 사용</td>
						<td>
							<input type="radio" id="oL1" name="outLogin">사용함
							<input type="radio" id="oL2" name="outLogin">사용안함
							<p class="mPDText2">+ 회원제를 사용하지 않을 경우 이 설정은 무시됩니다.</p>
						</td>
					</tr>
					
					<tr>
						<td class="gray">아웃로그인 위치</td>
						<td>
							상단여백 : <input type="text"><p class="mPDText">px, </p>
							좌측여백 : <input type="text"><p class="mPDText">px</p>
							<p class="mPDText2">+ 메인 비쥬얼을 기준으로 위치가 적용됩니다.</p>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="topVisualSetting">
				<p class="title">상단 비쥬얼 설정</p>
				<table class="mPDS2">
					<tr>
						<td class="gray">메인 비쥬얼</td>
						<td>
							<input type="radio" id="mV1" name="mainVisual">사용자제작
							<input type="radio" id="mV2" name="mainVisual">이미지링크
						</td>
					</tr>
					
					<tr>
						<td class="gray">사이즈설정</td>
						<td>
							<input type="text"><p class="mPDText">px x</p>
							<input type="text"><p class="mPDText">px</p>
							<p class="mPDText2">(가로 ⅹ 세로)</p>
						</td>
					</tr>
					
					<tr class="imgUp">
						<td class="gray">업로드</td>
						<td><input type="file">(swf,jpg,gif,png 파일만 가능) (제한크기 : 최대 5MB)</td>
					</tr>
					
					<tr class="imgMot">
						<td class="gray">이미지 모션</td>
						<td>
							<input type="radio" id="iM1" name="imgMotion">오퍼시티형
							<input type="radio" id="iM2" name="imgMotion">슬라이드형
						</td>
					</tr>
					
					<tr class="imgRegi">
						<td class="gray"> 이미지등록</td>
						<td>
							<table>
								<tr>
									<td class="gray">업로드</td>
									<td><input type="file">(swf,jpg,gif,png 파일만 가능) (제한크기 : 최대 5MB)></td>
								</tr>
								
								<tr>
									<td>이동주소</td>
									<td>
										<a href="#">링크</a>
										<p class="mPDText2">+ 이미지클릭시 이동할 페이지주소를 입력하세요.</p>
										<img alt="이미지" src="#">
									</td>
								</tr>
							</table>
						</td>
					</tr>
					
				</table>
			</div>
			
			<div class="mainPageBg">
				<p class="title">메인페이지 배경설정</p>
					<table>
						<tr class="siteBgSet1">
							<td class="gray">메인 비쥬얼 배경</td>
							<td class="mS2">
								<input type="radio" id="siteBg1" name="desginBg" value="배경없음">배경없음
								<input type="radio" id="siteBg2" name="desginBg" value="배경색" >배경색
								<input type="radio" id="siteBg3" name="desginBg" value="이미지업로드" >이미지업로드
							</td>
						</tr>
						
						<tr class="siteBgSet2">
							<td class="gray">배경색상 설정</td>
							<td  >
								<table>
									<tr>
										<td class="gray">단색</td>
										<td><input type="color"></td>
									</tr>
								</table>
							</td>
						</tr>
						
						<tr class="siteBgSet3">
							<td class="gray">이미지업로드</td>
							<td><input type="file"><p class="mPDText2">(제한크기 : 최대 5MB)</p></td>
						</tr>
					</table>
				</div>		
			
			</div>	
		
		</form>
		</div>

	<script type="text/javascript">
			
		
			$(document).ready(function() {
		    	$(".imgMot").detach();
		    	$(".imgRegi").detach();
		    	$(".imgUp").detach();
				$("#mV1").click(function() {
			    	$(".imgMot").detach();
			    	$(".imgRegi").detach();
			    	var upload =
						"<tr class='imgUp'>"
						+"<td>업로드</td>"
						+"<td><input type='file'>(swf,jpg,gif,png 파일만 가능) (제한크기 : 최대 5MB)</td>"
						+"</tr>"
						$('.mPDS2').append(upload);
						$('#mV1').attr('disabled',true);
						$('#mV2').attr('disabled',false);
			    });
			});	
				
			
			$(document).ready(function() {
				$("#mV2").click(function() {
			    	$(".imgUp").detach();
			    	var imgMotRegi =
			    		"<tr class='imgMot'>"
			    		+"<td>이미지 모션</td>"
			    		+"<td>"
			    		+"<input type='radio' id='iM1' name='imgMotion' checked>오퍼시티형"
			    		+"<input type='radio' id='iM2' name='imgMotion'>슬라이드형"
			    		+"</td>"
			    		+"</tr>"
			    		+"<tr class='imgRegi'>"
			    		+"<td>이미지등록</td>"
			    		+"<td>"
			    		+"<table>"
			    		+"<tr>"
			    		+"<td>업로드</td>"
			    		+"<td><input type='file'>(swf,jpg,gif,png 파일만 가능) (제한크기 : 최대 5MB)></td>"
			    		+"</tr>"		
			    		+"<tr>"
			    		+"<td>이동주소</td>"
			    		+"<td>"
			    		+"<a href='#'>링크</a>"
			    		+"<p>+ 이미지클릭시 이동할 페이지주소를 입력하세요.</p>"
			    		+"<img alt='이미지' src='#'>"
			    		+"</td>"
			    		+"</tr>"
			    		+"</table>"
			    		+"</td>"
			    		+"</tr>"
			    		$('.mPDS2').append(imgMotRegi);
			    	$('#mV2').attr('disabled',true);
					$('#mV1').attr('disabled',false);
			    });
			});
	
	
			$(document).ready(function() {
		    	$(".siteBgSet2").detach();
		    	$(".siteBgSet3").detach();
				$("#siteBg1").click(function() {
			    	$(".siteBgSet2").detach();
			    	$(".siteBgSet3").detach();
			    	$('#siteBg1').attr('disabled',true);
					$('#siteBg2').attr('disabled',false);
					$('#siteBg3').attr('disabled',false);
			    });
			});
			
			$(document).ready( function() {
				$("#siteBg2").click(function() {
			    	$(".siteBgSet3").detach();
					var siteBg2 = 
						"<tr class='siteBgSet2'>"
						+"<td>배경색상 설정</td>"
						+"<td>"
						+"<table>"
						+"<tr>"
						+"<td>단색</td>"
						+"<td><input type='color'></td>"
						+"</tr>"
						+"</table>"
						+"</td>"
						+"</tr>"
						$('.mainPageBg').append(siteBg2);
					$('#siteBg1').attr('disabled',false);
					$('#siteBg2').attr('disabled',true);
					$('#siteBg3').attr('disabled',false);
			    });
			});
		
			$(document).ready(function() {
				$("#siteBg3").click(function() {
			    	$(".siteBgSet2").detach();
					var siteBg3 =
						"<tr class='siteBgSet3'>"
						+"<td>이미지업로드</td>"
						+"<td><input type='file'><p>(제한크기 : 최대 5MB)</p></td>"
						+"</tr>"
						$('.mainPageBg').append(siteBg3);
					$('#siteBg1').attr('disabled',false);
					$('#siteBg2').attr('disabled',false);
					$('#siteBg3').attr('disabled',true);
				});
			});
		</script>
</body>
</html>