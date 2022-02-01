<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="/recipetoyou/Resources/User/Css/Community/communityRecipeDetail.css"
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

		<div class="recipeBox">
			<div class="thumbnail">
				${recipeVO.recipe_img}
				<img src="/recipetoyou/Resources/User/Img/Notice/market01.jpg"/>
			</div>
			<div class="userName">
				<h3>${recipeVO.user_id }</h3>
				<h2>${recipeVO.recipe_title}</h2>
			</div>
			<div class="cookingImg">
				<h3>${recipeVO.recipe_content}</h3>
				
			</div>
			
			<div class="relativeItem">
				<h4>레시피와 관련된 상품</h4>
				<ul>
					<li>
						<a href="#none">
							<div class="goods">
								<img src="/recipetoyou/Resources/User/Img/goods4.jpg">
								<span>제품명</span><br/>
								<span>6,500</span>원<br/>
							</div>
						</a>
					</li>
					<li>
						<a href="#none">
							<div class="goods">
								<img src="/recipetoyou/Resources/User/Img/goods4.jpg">
								<span>제품명</span><br/>
								<span>6,500</span>원<br/>
							</div>
						</a>
					</li>
					<li>
						<a href="#none">
							<div class="goods">
								<img src="/recipetoyou/Resources/User/Img/goods4.jpg">
								<span>제품명</span><br/>
								<span>6,500</span>원<br/>
							</div>
						</a>
					</li>
					<li>
						<a href="#none">
							<div class="goods">
								<img src="/recipetoyou/Resources/User/Img/goods4.jpg">
								<span>제품명</span><br/>
								<span>6,500</span>원<br/>
							</div>
						</a>
					</li>
				</ul>
			</div>
			
			<div class="cookingReview">
				<h4>댓글 <strong>57</strong></h4>
				<div class="cookCont">
					<span class="userID">고르곤졸라이</span>
					<span class="regDate">2020-04-15 19:51</span> 							
					<span class="recipeStar">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
					</span><br/>
					<span class="cookContent">
						집들이 메뉴 중 하나였어요. 새우 한봉지를 다 사용하고 소스 두배로 만드니까 딱 좋았어요 ♥︎ 
					</span>
				</div>
				<div class="cookCont">
					<span class="userID">고르곤졸라이</span>
					<span class="regDate">2020-04-15 19:51</span> 							
					<span class="recipeStar">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
					</span><br/>
					<span class="cookContent">
						집들이 메뉴 중 하나였어요. 새우 한봉지를 다 사용하고 소스 두배로 만드니까 딱 좋았어요 ♥︎ 
					</span>
				</div>
				<div class="cookCont">
					<span class="userID">고르곤졸라이</span>
					<span class="regDate">2020-04-15 19:51</span> 							
					<span class="recipeStar">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
					</span><br/>
					<span class="cookContent">
						집들이 메뉴 중 하나였어요. 새우 한봉지를 다 사용하고 소스 두배로 만드니까 딱 좋았어요 ♥︎ 
					</span>
				</div>
				
				<div class="reviewForm">
					<form>
					<span class="star-input">
						<span class="input">
					    	<input type="radio" name="star-input" value="1" id="p1">
					    	<label for="p1">1</label>
					    	<input type="radio" name="star-input" value="2" id="p2">
					    	<label for="p2">2</label>
					    	<input type="radio" name="star-input" value="3" id="p3">
					    	<label for="p3">3</label>
					    	<input type="radio" name="star-input" value="4" id="p4">
					    	<label for="p4">4</label>
					    	<input type="radio" name="star-input" value="5" id="p5">
					    	<label for="p5">5</label>
					  	</span>
					  	<output for="star-input"><b>0</b>점</output>						
					</span>
					<input type="text" class="cookReview"/>
					<button>댓글쓰기</button>
					</form>
				</div>
				
			</div>
			
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
		<div class="BtnBox">
				<a href="${contextPath}/community/communityRecipeModify.do?recipe_idx=${recipeVO.recipe_idx}">수정</a>
				<a href="${contextPath}/community/communityRecipeDelete.do?recipe_idx=${recipeVO.recipe_idx}">삭제</a>
			</div>
		<script>
		var starRating = function(){
			var $star = $(".star-input"),
			    $result = $star.find("output>b");
				
			  	$(document)
				.on("focusin", ".star-input>.input", 
					function(){
			   		 $(this).addClass("focus");
			 	})
					 
			   	.on("focusout", ".star-input>.input", function(){
			    	var $this = $(this);
			    	setTimeout(function(){
			      		if($this.find(":focus").length === 0){
			       			$this.removeClass("focus");
			     	 	}
			   		}, 100);
			 	 })
			  
			    .on("change", ".star-input :radio", function(){
			    	$result.text($(this).next().text());
			  	})
			    .on("mouseover", ".star-input label", function(){
			    	$result.text($(this).text());
			    })
			    .on("mouseleave", ".star-input>.input", function(){
			    	var $checked = $star.find(":checked");
			    		if($checked.length === 0){
			     	 		$result.text("0");
			   		 	} else {
			     	 		$result.text($checked.next().text());
			    		}
			  	});
			};

			starRating();
		</script>
</body>
</html>