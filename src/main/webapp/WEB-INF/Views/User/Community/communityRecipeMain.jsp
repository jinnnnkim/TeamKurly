<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="/recipetoyou/Resources/User/Css/Community/communityRecipeMain.css"
	rel="stylesheet" type="text/css">
<!-- fontawesome 링크 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- font 링크 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel= "icon" type="image/x-icon"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div class="main">
			<div class="title">
				<h2>컬리의 추천레시피</h2>
				<span>컬리의 새로운 소식들과 유용한 레시피를 한 곳에서 확인하세요.</span>
			</div>
			
			<div class="searchBar">
				<div class="searchSelect">
					<span>·&nbsp;검색어</span>
					<label><input type="checkbox"/>이름</label>
					<label><input type="checkbox"/>제목</label>
					<label><input type="checkbox"/>내용</label>
				</div>
				
				<div class="searchInput">
					<input type="text"/>
					<a href="#"><i class="fas fa-search"></i></a>
				</div>
			</div>
			
			<div class="cateList">
				<c:forEach var="titleList" items="${cateTitleList}" varStatus="status" begin="0" end="5" >
					<div class="cateRow">
						<span class="cateType">${titleList.recipe_cate}</span>
						<c:forEach var="cateDetailList" items="${cateDetailList}">
							<c:if test="${cateDetailList.recipe_cate_parent eq status.count}">
								<c:choose>
									<c:when test="${cateDetailList.recipe_cate eq '전체' }">
										<a class="allCate" href="#none">${cateDetailList.recipe_cate}</a>
									</c:when>
									<c:otherwise>
										<a href="#none">${cateDetailList.recipe_cate}</a>
									</c:otherwise>
								</c:choose>
							</c:if>
						</c:forEach> 
					</div>
					
				</c:forEach>
			</div>
				
			<div class="writeBtn">
				<a href="${contextPath}/community/communityRecipeWrite.do">글쓰기</a>
			</div>
			<div class="recipeList">
				<ul>
					<c:forEach var="list" items="${recipeList}">
					<li>
						<a href="${contextPath }/community/communityRecipeDetail.do?recipe_idx=${list.recipe_idx}">
							<div class="recipeImg">
								<img src="/recipetoyou/Resources/User/Img/Notice/market01.jpg">
							</div>
							<div class="detail">
								<span class="recipeTitle">${list.recipe_title}</span>
								<br/>
								<span class="writeId">${list.user_id}</span>
								<br/>
								<span class="recipeStar">
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
								</span>
								<span class="recipeReview">(57)</span>
								<span class="recipeHit">조회수 <span class="recipeHitNumber">15</span>만</span>
							</div>
						</a>
					</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="page">
				<ul>
					<li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
					<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#"><i class="fas fa-angle-right"></i></a></li>
					<li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function(){
		$(".cateRow a").click(function(){
			/* $(this).css("background","grey"); */
			
		});
			
		
	});
	</script>
</body>
</html>