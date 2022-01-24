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
	<title>상단메뉴설정</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
 	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/DesignSetting/topMenuSetting.css">
	<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div class="topMenuSetting">
		<p>인트로 설정</p>
		<form action="#" >
		<div class="topMenuTable">
			<table>
				<tr>	
					<td class="gray tdTMT">메뉴전체 사이즈</td>
					<td><input type="text" value="1200">px x <input type="text" value="43">px</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">1차메뉴 간격</td>
					<td><input type="text" value="85">px</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">1차메뉴 글씨크기</td>
					<td><input type="text" value="20">px</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">2차메뉴 간격</td>
					<td><input type="text" value="30">px</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">2차메뉴 시작높이</td>
					<td><input type="text" value="15">px</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">2차메뉴 시작위치</td>
					<td>
						<table id="tM1">
							<tr>
								<td class="gray">1차 메뉴명</td>
								<td>2차메뉴 시작위치</td>
							</tr>
							<tr>
								<td class="gray">회사소개</td>
								<td><input type="text" value="430">px</td>
							</tr>
							<tr>
								<td class="gray">브랜드소개</td>
								<td><input type="text" value="430">px</td>
							</tr>
							<tr>
								<td class="gray">제품구매</td>
								<td><input type="text" value="430">px</td>
							</tr>
							<tr>
								<td class="gray">커뮤니티</td>
								<td><input type="text" value="430">px</td>
							</tr>
							<tr>
								<td class="gray">고객센터</td>
								<td><input type="text" value="430">px</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>	
					<td class="gray tdTMT">색상 설정</td>
					<td>
						<table id="tMTable">
							<tr>
								<td class="gray">1차메뉴 배경</td>
								<td >
									<table id="tMTable1">
										<tr>
											<td class="gray"><input type="checkbox" id="noBg">배경없음</td>
											<td>+배경없음 체크시 외각 테두리 및 배경색이 보이지 않습니다.</td>
										</tr>
										<tr>
											<td class="gray"><input type="checkbox" id="oneBg">단색배경</td>
											<td><input type="color"></td>
										</tr>
										<tr>
											<td class="gray"><input type="checkbox" id="imgUpload">이미지업로드</td>
											<td><input type="file">선택된 파일 없음</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="gray">2차메뉴 배경</td>
								<td>
									<table id="tMTable2">
										<tr>
											<td class="gray"><input type="checkbox" id="noBg">배경없음</td>
											<td>+배경없음 체크시 외각 테두리 및 배경색이 보이지 않습니다.</td>
										</tr>
										<tr>
											<td class="gray"><input type="checkbox" id="oneBg">단색배경</td>
											<td><input type="color"></td>
										</tr>
										
									</table>
								</td>
							</tr>
							<tr>
								<td class="gray">1차메뉴 글자색</td>
								<td>비활성 : <input type="color"> 활성 : <input type="color"></td>
							</tr>
							<tr>
								<td class="gray">2차메뉴 글자색</td>
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

</body>
</html>