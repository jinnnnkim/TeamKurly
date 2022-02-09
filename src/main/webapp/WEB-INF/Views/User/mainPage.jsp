<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe to You :: 내일의 장보기, 레시피투유</title>
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<!-- slick 링크 연결 -->
<link rel="stylesheet" type="text/css" href="/recipetoyou/Resources/Common/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/recipetoyou/Resources/Common/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="/recipetoyou/Resources/Common/slick/slick.min.js"></script>
</head>
<body>

	<div class="banner">
		<!-- banner -->
		<div class="banner-img">
			<div>
				<a href="#"><img alt="main1"
					src="/recipetoyou/Resources/User/Img/main1.jpg"></a>
			</div>
			<div>
				<a href="#"><img alt="main1"
					src="/recipetoyou/Resources/User/Img/main2.jpg"></a>
			</div>
			<div>
				<a href="#"><img alt="main1"
					src="/recipetoyou/Resources/User/Img/main3.jpg"></a>
			</div>
		</div>

		<!-- banner js 부분 -->


		<script type="text/javascript">
			$('.banner-img').slick({
				infinite : true,
				slidesToShow : 1,
				autoplay : true,
				autoplayspeed : 1800
			});
		</script>

		<div class="main">
			<!-- main -->
			<div class="item1">
				<!-- item1 -->
				<div class="item_how">
					<!-- .item-how -->
					<b>이 상품 어때요?</b>
				</div>

				<div class="how_goods">
			
 				<!-- goods_info 태그 - 상품 리스크 상위 태그 -->
						<div class="goods_info">
							<a href="${contextPath}/goodsView.do"><img alt="goods1"
								src="/recipetoyou/Resources/User/Img/goods1.jpg"></a>	
									<p>
										<span class="name">[백설] 포도씨유 900ml</span>
										<span class="cost">10,500원</span>
										<span class="mean">스페인에서 온 포도씨 100%</span>
									</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods2"
								src="/recipetoyou/Resources/User/Img/goods2.jpg"></a>	
									<p>
										<span class="name">[콜린스그린] 오일만 주스 350mL</span>
										<span class="cost">7,650원</span>
										<span class="mean">변화를 시작하는 주스 한 모금</span>
									</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods3"
								src="/recipetoyou/Resources/User/Img/goods3.jpg"></a>	
									<p>
										<span class="name">[상하목장] 유기농 요구르트 플레인 400g</span>
										<span class="cost">3,400원</span>
										<span class="mean">건강한 홈메이드 스타일</span>
									</p>
						</div>	
						<div class="goods_info">
							<a href="#"><img alt="goods4"
								src="/recipetoyou/Resources/User/Img/goods4.jpg"></a>	
								<p>
										<span class="name">[상하목장] 유기농 우유 3종</span>
										<span class="cost">4,400원</span>
										<span class="mean">행복한 소가 주는 자연의 선물</span>
								</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods5"
								src="/recipetoyou/Resources/User/Img/goods5.jpg"></a>
								<p>
										<span class="name">[스테파노스 키친] 까르보나라 스파게티 세트</span>
										<span class="cost">6,800원</span>
										<span class="mean">집에서 간편하게 만드는 까르보나라 스파케티</span>
								</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods6"
								src="/recipetoyou/Resources/User/Img/goods6.jpg"></a>
								<p>
										<span class="name">[일상味소] 갈비살 200g</span>
										<span class="cost">17,000원</span>
										<span class="mean">100g당 판매가 : 8,500원(냉장)</span>
								</p>
						</div>
					
					</div>	
					<!-- how_goods 닫힌 태그 -->
 
			
				<div class="arrowSlider">
						<span class="prev" id="aro1_prev"><i class="fas fa-angle-left"></i></span> 
						<span class="next" id="aro1_next"><i class="fas fa-angle-right"></i></span>
				</div>

				<!-- how_goods 페이징 기능.js -->
					<script type="text/javascript">
											$('.how_goods').slick({
												slidesToShow : 4,
												slidesToScroll : 1,
												dots : false,
												arrows : true,
												infinite : true,
												autoplay : false,
												speed : 500,
												prevArrow : $('#aro1_prev'),
												nextArrow : $('#aro1_next'),
												autoplaySpeed : 3000
											});
					</script>
					
			</div>
			<!-- item1 닫힌 태그 -->


			<div class="beef">
				<!-- 고기 광고 -->
				<div class="beef_img">
					<a href="#"><img alt="beef" src="/recipetoyou/Resources/User/Img/beefb.jpg"></a>
				</div>
			</div>


		<div class="item2">
		<!-- 	item_price 코드 시작 -->
			
				<div class="item_price">
					<b>놓치면 후회할 가격 > </b>
				</div>
			<!-- 	item_price 태그 상품이미지 리스트 포함 -->
					
			<!-- 	price_goods 태그 - 상품 리스크 상위 태그 -->
				<div class="price_goods">
				
					<!-- 	goods_info 태그로 각 상품 태그 -->
						<div class="goods_info">
							<a href="#"><img alt="goods1"
								src="/recipetoyou/Resources/User/Img/goods1.jpg"></a>	
									<p>
										<span class="name">[백설] 포도씨유 900ml</span>
										<span class="cost">10,500원</span>
										<span class="mean">스페인에서 온 포도씨 100%</span>
									</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods2"
								src="/recipetoyou/Resources/User/Img/goods2.jpg"></a>	
									<p>
										<span class="name">[콜린스그린] 오일만 주스 350mL</span>
										<span class="cost">7,650원</span>
										<span class="mean">변화를 시작하는 주스 한 모금</span>
									</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods3"
								src="/recipetoyou/Resources/User/Img/goods3.jpg"></a>	
									<p>
										<span class="name">[상하목장] 유기농 요구르트 플레인 400g</span>
										<span class="cost">3,400원</span>
										<span class="mean">건강한 홈메이드 스타일</span>
									</p>
						</div>	
						<div class="goods_info">
							<a href="#"><img alt="goods4"
								src="/recipetoyou/Resources/User/Img/goods4.jpg"></a>	
								<p>
										<span class="name">[상하목장] 유기농 우유 3종</span>
										<span class="cost">4,400원</span>
										<span class="mean">행복한 소가 주는 자연의 선물</span>
								</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods5"
								src="/recipetoyou/Resources/User/Img/goods5.jpg"></a>
								<p>
										<span class="name">[스테파노스 키친] 까르보나라 스파게티 세트</span>
										<span class="cost">6,800원</span>
										<span class="mean">집에서 간편하게 만드는 까르보나라 스파케티</span>
								</p>
						</div>
						<div class="goods_info">
							<a href="#"><img alt="goods6"
								src="/recipetoyou/Resources/User/Img/goods6.jpg"></a>
								<p>
										<span class="name">[일상味소] 갈비살 200g</span>
										<span class="cost">17,000원</span>
										<span class="mean">100g당 판매가 : 8,500원(냉장)</span>
								</p>
						</div>
			
				</div>		<!-- price_goods 닫힌 태그 -->
				
				
				<div class="arrowSlider">
						<span class="prev" id="aro2_prev"><i class="fas fa-angle-left"></i></span> 
						<span class="next" id="aro2_next"><i class="fas fa-angle-right"></i></span>
				</div>
		

			<!-- 	price_goods 페이징 기능.js -->
				<script type="text/javascript">
						$('.price_goods').slick({
							
							slidesToShow : 4,
							slidesToScroll : 1,
							dots : false,
							arrows : true,
							infinite : true,
							autoplay : false,
							speed : 500,
							prevArrow : $('#aro2_prev'),
							nextArrow : $('#aro2_next'),
							autoplaySpeed : 3000
											});
				</script>

			</div>
			<!-- item2 딛힌 태그  -->

			<!-- 새벽 배송 광고 -->
			<div class="dawn_delivery">
				<div class="dawn_ads">
					<a><img alt="dawn ads"
						src="/recipetoyou/Resources/User/Img/dawnAds.jpg"></a>
				</div>
			</div>
			<!-- dawn_delivery -->
			
			
			<div class="review">
				<div class="review_list">
					<span class="customer_review">고객 후기</span> <span
						class="review_more">더 많은 후기가 궁금하다면?</span>
					<div class="review_photo">					
							<img alt="후기1" src="/recipetoyou/Resources/User/Img/Review/1.jpg">
							<img alt="후기2" src="/recipetoyou/Resources/User/Img/Review/2.jpg">
							<img alt="후기3" src="/recipetoyou/Resources/User/Img/Review/3.jpg">
							<img alt="후기4" src="/recipetoyou/Resources/User/Img/Review/4.jpg">
							<img alt="후기5" src="/recipetoyou/Resources/User/Img/Review/5.jpg">
							<img alt="후기6" src="/recipetoyou/Resources/User/Img/Review/6.jpg">
							<img alt="후기7" src="/recipetoyou/Resources/User/Img/Review/7.jpg">
							<img alt="후기8" src="/recipetoyou/Resources/User/Img/Review/8.jpg">
							<img alt="후기9" src="/recipetoyou/Resources/User/Img/Review/9.jpg">
							<img alt="후기10" src="/recipetoyou/Resources/User/Img/Review/10.jpg">
					</div>
				</div>
				<!-- review_list -->

				<!-- 고객 후기 paging -->
				<div class="arrowSlider2">
						<span class="prev3" id="aro3_prev"><i class="fas fa-angle-left"></i></span> 
						<span class="next3" id="aro3_next"><i class="fas fa-angle-right"></i></span>
				</div>


				<!-- 고객 후기 paging.js -->
				 <script type="text/javascript">
						$('.review_photo').slick({
							
							slidesToShow :6,
							slidesToScroll : 1,
							dots : false,
							arrows : true,
							infinite : true,
							autoplay : false,
							speed : 500,
							prevArrow : $('#aro3_prev'),
							nextArrow : $('#aro3_next'),
							autoplaySpeed : 3000
											});
				</script>


				<div class="move">
					<div class="move_comu">
						<span class="review_more2">더 많은 후기가 궁금하다면?</span><br>
						 <a	href="#"><span>커뮤니티 바로가기</span></a>
					</div>
				</div>
				<!-- move-->
			</div>
			<!-- review 닫힌 태그 -->
		</div>
		<!-- main 닫힌 테그 -->
	</div>
	<!-- banner 닫힌 테그 -->

</body>
</html>


