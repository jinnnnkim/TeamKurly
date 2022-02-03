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

				<div class="how_goods" style="background-color: red;">
					<!-- goods img -->
					<div>
						<a href="#"><img alt="goods1"
							src="/recipetoyou/Resources/User/Img/goods1.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods2"
							src="/recipetoyou/Resources/User/Img/goods2.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods3"
							src="/recipetoyou/Resources/User/Img/goods3.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods4"
							src="/recipetoyou/Resources/User/Img/goods4.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods5"
							src="/recipetoyou/Resources/User/Img/goods5.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods6"
							src="/recipetoyou/Resources/User/Img/goods6.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods7"
							src="/recipetoyou/Resources/User/Img/goods7.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods8"
							src="/recipetoyou/Resources/User/Img/goods8.jpg"></a>
					</div>

				</div>
				<!-- how_goods 닫힌 태그 -->

				<!-- <i class="fas fa-arrow-circle-right"></i>  -->

				<!-- item-how js -->
				<script type="text/javascript">
					$('.how_goods').slick({

						infinite : false,
						speed : 300,
						slidesToShow : 4,
						slidesToScroll : 4,
						goods_img : [ {
							breakpoint : 1024,
							settings : {
								slidesToShow : 3,
								slidesToScroll : 3,
								infinite : true
							}
						}, {
							breakpoint : 600,
							settings : {
								slidesToShow : 2,
								slidesToScroll : 2
							}
						}, {
							breakpoint : 480,
							settings : {
								slidesToShow : 1,
								slidesToScroll : 1
							}
						} ]
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


			<!-- item_price -->
			<div class="item2">
				<div class="item_price">
					<b>놓치면 후회할 가격 > </b>
				</div>

				<div class="price_goods" style="background-color: red;">
					<!-- goods img -->
					<div>
						<a href="#"><img alt="goods1"
							src="/recipetoyou/Resources/User/Img/goods1.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods2"
							src="/recipetoyou/Resources/User/Img/goods2.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods3"
							src="/recipetoyou/Resources/User/Img/goods3.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods4"
							src="/recipetoyou/Resources/User/Img/goods4.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods5"
							src="/recipetoyou/Resources/User/Img/goods5.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods6"
							src="/recipetoyou/Resources/User/Img/goods6.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods7"
							src="/recipetoyou/Resources/User/Img/goods7.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods8"
							src="/recipetoyou/Resources/User/Img/goods8.jpg"></a>
					</div>
				</div>
				<!-- price_goods 닫힌 태그 -->


				<script type="text/javascript">
					$('.price_goods').slick({

						infinite : false,
						speed : 300,
						slidesToShow : 4,
						slidesToScroll : 4,
						goods_img : [ {
							breakpoint : 1024,
							settings : {
								slidesToShow : 3,
								slidesToScroll : 3,
								infinite : true
							}
						}, {
							breakpoint : 600,
							settings : {
								slidesToShow : 2,
								slidesToScroll : 2
							}
						}, {
							breakpoint : 480,
							settings : {
								slidesToShow : 1,
								slidesToScroll : 1
							}
						} ]
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

			<div class="review">
				<div class="review_list">
					<span class="customer_review">고객 후기</span> <span
						class="review_more">더 많은 후기가 궁금하다면?</span>
					<div class="review_photo">
						<img alt="bread"
							src="/recipetoyou/Resources/User/Img/Review/1.jpg"> <img
							alt="카레" src="/recipetoyou/Resources/User/Img/Review/2.jpg">
						<img alt="요거트" src="/recipetoyou/Resources/User/Img/Review/3.jpg">
						<img alt="부리또" src="/recipetoyou/Resources/User/Img/Review/4.jpg">
						<img alt="부리또1" src="/recipetoyou/Resources/User/Img/Review/5.jpg">
					</div>
				</div>
				<!-- review_list -->

				<div class="move">
					<div class="move_comu">
						<span class="review_more2">더 많은 후기가 궁금하다면?</span><br> <a
							href="#"><span>커뮤니티 바로가기</span></a>
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


