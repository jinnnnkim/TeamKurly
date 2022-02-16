<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }"/>  
<c:if test="${admin.adminId == null }">
	<script>
		alert("관리자 로그인 후 이용이 가능합니다.");
		location.href="${contextPath}/admin/adLogin.do";
	</script>
</c:if>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>후기 상세</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/HomePageHeaderSide/reset.css">
	<link rel="stylesheet" href="/recipetoyou/Resources/Admin/Css/ShoppingMallManagement/adgoodsReviewDetail.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
</head>
<body>
	
	<div class="wrap">
		<div class="bar">상품후기</div>
			<table align="center">
			<tbody>
				<tr>
					<td align="left">
						<div class="main-content">
						
							<div class="sub-title">| 후기상세</div>
							<table class="table table1 line_top table_line">
								<colgroup>
									<col width="120px">
									<col>
									<col width="120px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>작성자</th>
										<td>${review.user_id }</td>
										<th>작성일시</th>
										<td>${review.reg_date }</td>
									</tr>
									<tr>
										<th>연관상품</th>
										<td colspan="3">
											<div style="float: left;">
												<img class="img-style" src="../../../Resources/Admin/Img/ShoppingMallManagement/scale.png"/>
											</div>
											<div class="img-info">
												<div>체중계</div>
												<div>17,320원</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>후기제목</th>
										<td colspan="3">${review.title }</td>
									</tr>
									<tr>
										<th>후기내용</th>
										<td colspan="3">
											<div class="img-diary">
												<img class="img-style2" src="../../../Resources/Admin/Img/ShoppingMallManagement/background.png" />
											</div>
											${review.content }
										</td>
									</tr>
									<tr>
										<th>평점</th>
										<td colspan="3">
											<img src="../../../Resources/Admin/Img/ShoppingMallManagement/yellow-star.jpg" width="13" height="13"/>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn-box">
								<%-- 버튼 클릭시 상품후기목록으로 이동하는 기능 넣어야 됨 --%>
								<button id="moveBtn" class="btn btn-lg">목록</button>
							</div>
						</div>
					</td>
				</tr>
			
			</tbody>
		</table>	
	</div>
	<script>
	$(document).ready(function() {
		$('#moveBtn').click(function(){
			alert('목록으로 이동합니다.');
			$(location).attr('href','productReviewList.jsp');
			console.log('이동');
		});
	});
	</script>
</body>
</html>