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
	<title>디자인설정 - 인트로설정</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/DesignSetting/designIntroSetting.css">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>
<body>
	<div class="designIntroSetting">
		<form action="design_intro()">
			<div class="introSetting">
				<p>인트로 유형을 '링크'로 설정할 경우 설정한 URL이 열립니다.</p>
				<p>인트로 유형을 '인증페이지'로 설정할 경우 '로그인' 또는 '실명인증'을 하지 않으면 사이트 이용이 제한됩니다.</p>
			</div>
			<div class="introTable">
			<p>인트로 설정</p>
				<table>
					<tr>
						<td class="gray">
							인트로 사용
						</td>
						<td>
							<input type="radio" name="introUse" value="사용함">사용함
							<input type="radio"name="introUse" value="사용안함">사용안함
						</td>
					</tr>
					
					<tr>
						<td class="gray">
							인트로 유형
						</td>
						<td>
							<input type="radio" id="introType1" name="introType" value="준비중">준비중
							<input type="radio" id="introType2" name="introType" value="일반HTML">일반HTML
							<input type="radio" id="introType3" name="introType" value="인증페이지" >인증페이지
							<input type="radio" id="introType4" name="introType" value="링크">링크(리다이렉트)
						</td>
					</tr>
					
					<tr class="ckeditor">
						<td colspan="2">
							<!-- 표시할 textarea로 영역-->
							<textarea name="content" id="editor" rows="10" cols="100"></textarea>
							<!-- ckeditor 생성을 위한 JS -->
							<script>
							       ClassicEditor
							           .create( document.querySelector('#editor'))
							           .then(edit => {
							           	console.log(editor);
							           })
							           .catch(error => {
							               console.error(error);
							           });
							 </script>
						</td>
					</tr>
					
					<tr class="certiPage">
						<td class="gray">만19세 미만 나가기</td>
						<td>
							<a href="#">링크</a>
							<p>+ 가입자 연령제한이 '만19세이상' 인 경우 인트로페이지에 노출되는 '19세미만나가기' 버튼의 이동주소를 설정합니다.</p>
						</td>
					</tr>
					
					<tr class="linkPage">
						<td class="gray">링크입력</td>
						<td><a href="#">링크</a></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready( function() {
			$("#introType1").click( function() {
		    	$(".ckeditor").detach();
		    	$(".certiPage").detach();
		    	$(".linkPage").detach();
		    });
		});
		
		$(document).ready( function() {
			$(".certiPage").detach();
	    	$(".linkPage").detach();
			$("#introType2").click( function() {	
				$(".certiPage").detach();
		    	$(".linkPage").detach();
				var introType2 = "<tr class='ckeditor'>"
					+"<td colspan='2'>"
					+"<textarea name='content' id='editor' rows='10' cols='100'></textarea>"
					+"</td>" 
					+"</tr>"
					$('table').append(introType2);
				
				/* <script type="text/javascript">
				      $(document).ready(function () {
				        $("#introType1").click(function () {
				          $("#ckbox").attr("style", "display:none");
				        });
				      });
				
				      $(document).ready(function () {
				        $("#introType2").click(function () {
				          $("#ckbox").attr("style", "display:blcok");
				        });
				      });
				    */
				ClassicEditor
	            .create( document.querySelector('#editor'))
	            .then(edit => {
	            	console.log(editor);
	            })
	            .catch(error => {
	                console.error(error);
	            });
			});
		});
		
		$(document).ready( function() {
			$("#introType3").click( function() {
				$(".ckeditor").detach();
		    	$(".linkPage").detach();
				var introType3 = "<tr class='certiPage'>"
					+"<td class='gray'>만19세 미만 나가기</td>"
					+"<td>"
					+"<a href='#'>링크</a>"
					+"<p>+ 가입자 연령제한이 '만19세이상' 인 경우 인트로페이지에 노출되는 '19세미만나가기' 버튼의 이동주소를 설정합니다.</p>"
					+"</td>" 
					+"</tr>"
					$('table').append(introType3);
		    });
		});
	
		$(document).ready( function() {
			$("#introType4").click( function() {
				$(".ckeditor").detach();
		    	$(".certiPage").detach();
				var introType4 ="<tr class='linkPage'>"
					+"<td class='gray'>링크입력</td>"
					+"<td><a href='#'>링크</a></td>"
					+"</tr>"		
					$('table').append(introType4);
			});
			
		});
	</script> 
</body>
</html>