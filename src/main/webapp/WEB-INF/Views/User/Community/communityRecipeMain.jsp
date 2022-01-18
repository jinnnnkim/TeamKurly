<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/Resources/User/Css/Community/communityRecipeMain.css"
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
<link href="/Resources/User/Img/KurlyIcon.png" rel= "icon" type="image/x-icon"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<%-- header --%>
		<jsp:include page="/View/User/inc/header.jsp" />
		<%-- header end --%>
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
				<div class="cateRow">
					<span class="cateType">종류별</span>
					<a class="allCate" href="#none">전체</a>
					<a href="#none">메인반찬</a>
					<a href="#none">국/탕</a>
					<a href="#none">찌개</a>
					<a href="#none">디저트</a>
					<a href="#none">면/만두</a>
					<a href="#none">밥/죽/떡</a>
					<a href="#none">퓨전</a>
					<a href="#none">김치/젓갈/장류</a>
					<a href="#none">양념/소스/잼</a>
					<a href="#none">양식</a>
					<a href="#none">샐러드</a>
					<a href="#none">스프</a>
					<a href="#none">빵</a>
					<a href="#none">과자</a>
					<a href="#none">차/음료/술</a>
					<a href="#none">기타</a>
				</div>
				<div class="cateRow">
					<span class="cateType">상황별</span>
					<a class="allCate" href="#none">전체</a>
					<a href="#none">메인반찬</a>
					<a href="#none">국/탕</a>
					<a href="#none">찌개</a>
					<a href="#none">디저트</a>
					<a href="#none">면/만두</a>
					<a href="#none">밥/죽/떡</a>
					<a href="#none">퓨전</a>
					<a href="#none">김치/젓갈/장류</a>
					<a href="#none">양념/소스/잼</a>
					<a href="#none">양식</a>
					<a href="#none">샐러드</a>
					<a href="#none">스프</a>
					<a href="#none">빵</a>
					<a href="#none">과자</a>
					<a href="#none">차/음료/술</a>
					<a href="#none">기타</a>
				</div>
				<div class="cateRow">
					<span class="cateType">재료별</span>
					<a class="allCate" href="#none">전체</a>
					<a href="#none">메인반찬</a>
					<a href="#none">국/탕</a>
					<a href="#none">찌개</a>
					<a href="#none">디저트</a>
					<a href="#none">면/만두</a>
					<a href="#none">밥/죽/떡</a>
					<a href="#none">퓨전</a>
					<a href="#none">김치/젓갈/장류</a>
					<a href="#none">양념/소스/잼</a>
					<a href="#none">양식</a>
					<a href="#none">샐러드</a>
					<a href="#none">스프</a>
					<a href="#none">빵</a>
					<a href="#none">과자</a>
					<a href="#none">차/음료/술</a>
					<a href="#none">기타</a>
				</div>
			</div>
			<div class="writeBtn">
				<a href="communityRecipeWrite.jsp">글쓰기</a>
			</div>
			<div class="recipeList">
				<ul>
					<li>
						<div class="recipeImg">
							<img src="/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
					<li>
						<div class="recipeImg">
							<img src = "/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
					<li>
						<div class="recipeImg">
							<img src="/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
					<li>
						<div class="recipeImg">
							<img src="/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
					<li>
						<div class="recipeImg">
							<img src="/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
					<li>
						<div class="recipeImg">
							<img src="/Resources/User/Img/Notice/market01.jpg">
						</div>
						<div class="detail">
							<span class="recipeTitle">간단한 술안주로 최고인 버터갈릭새우 만들기</span>
							<br/>
							<span class="writeId">이웃사슴</span>
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
						
					</li>
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
		
		<%-- footer --%>
		<jsp:include page="/View/User/inc/footer.jsp" />
		<%-- footer end--%>
	</div>

</body>
</html>