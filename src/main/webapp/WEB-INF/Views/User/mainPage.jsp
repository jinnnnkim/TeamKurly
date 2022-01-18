<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"
	value="${pageContext.request.servletContext.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Recipe to You :: ������ �庸��, ����������</title>
<link href="/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<!-- slick ��ũ ���� -->
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />

</head>
<body>
	<div class="wrap">
		<jsp:include page="/View/User/inc/header.jsp" />
		<!-- header -->

		<div class="banner">
			<!-- banner -->
			<div class="banner-img">
				<div>
					<a href="#"><img alt="main1"
						src="/Resources/User/Img/main1.jpg"></a>
				</div>
				<div>
					<a href="#"><img alt="main1"
						src="/Resources/User/Img/main2.jpg"></a>
				</div>
				<div>
					<a href="#"><img alt="main1"
						src="/Resources/User/Img/main3.jpg"></a>
				</div>
			</div>

			<!-- banner js �κ� -->
			<script type="text/javascript"
				src="//code.jquery.com/jquery-1.11.0.min.js"></script>
			<script type="text/javascript"
				src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
			<script type="text/javascript" src="slick/slick.min.js"></script>

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
						<b>�� ��ǰ ���?</b>
					</div>	
					
					<div class="how_goods" style="background-color: red;">
						<!-- goods img -->
						<div>
							<a href="#"><img alt="goods1"
								src="/Resources/User/Img/goods1.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods2"
								src="/Resources/User/Img/goods2.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods3"
								src="/Resources/User/Img/goods3.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods4"
								src="/Resources/User/Img/goods4.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods5"
								src="/Resources/User/Img/goods5.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods6"
								src="/Resources/User/Img/goods6.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods7"
								src="/Resources/User/Img/goods7.jpg"></a>
						</div>
						<div>
							<a href="#"><img alt="goods8"
								src="/Resources/User/Img/goods8.jpg"></a>
						</div>
						
					</div>		<!-- how_goods ���� �±� -->
							
				<!-- <i class="fas fa-arrow-circle-right"></i>  -->

				<!-- item-how js -->
				<script type="text/javascript"
					src="//code.jquery.com/jquery-1.11.0.min.js"></script>
				<script type="text/javascript"
					src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
				<script type="text/javascript" src="slick/slick.min.js"></script>

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
			</div>		<!-- item1 ���� �±� -->
		

			<div class="beef">
				<!-- ��� ���� -->
				<div class="beef_img">
					<a href="#"><img alt="beef"
						src="/Resources/User/Img/beefb.jpg"></a>
				</div>
			</div>


			<!-- item_price -->
			<div class="item2">
				<div class="item_price">
					<b>��ġ�� ��ȸ�� ���� > </b>
				</div>

				<div class="price_goods" style="background-color: red;">
					<!-- goods img -->
					<div>
						<a href="#"><img alt="goods1"
							src="/Resources/User/Img/goods1.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods2"
							src="./Resources/User/Img/goods2.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods3"
							src="/Resources/User/Img/goods3.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods4"
							src="/Resources/User/Img/goods4.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods5"
							src="/Resources/User/Img/goods5.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods6"
							src="/Resources/User/Img/goods6.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods7"
							src="/Resources/User/Img/goods7.jpg"></a>
					</div>
					<div>
						<a href="#"><img alt="goods8"
							src="/Resources/User/Img/goods8.jpg"></a>
					</div>
				</div>		<!-- price_goods ���� �±� -->
		


			<script type="text/javascript"
				src="//code.jquery.com/jquery-1.11.0.min.js"></script>
			<script type="text/javascript"
				src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
			<script type="text/javascript" src="slick/slick.min.js"></script>

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
		</div>				<!-- item2 ���� �±�  -->

			<!-- ���� ��� ���� -->
			<div class="dawn_delivery">
				<div class="dawn_ads">
					<a><img alt="dawn ads"
						src="/Resources/User/Img/dawnAds.jpg"></a>
				</div>
			</div>

		 <div class="review">	
				<div class="review_list">
					<span class="customer_review">�� �ı�</span>
					<span class="review_more">�� ���� �ıⰡ �ñ��ϴٸ�?</span>
						<div class="review_photo">
							<img alt="bread" src="/Resources/User/Img/review/1.jpg">
							<img alt="ī��" src="/Resources/User/Img/review/2.jpg">
							<img alt="���Ʈ" src="/Resources/User/Img/review/3.jpg">
							<img alt="�θ���" src="/Resources/User/Img/review/4.jpg">
							<img alt="�θ���1" src="/Resources/User/Img/review/5.jpg">
						</div> 
				</div>		<!-- review_list -->
				
				<div class="move">	
					<div class="move_comu">
					<span class="review_more2">�� ���� �ıⰡ �ñ��ϴٸ�?</span><br>
					<a href="#"><span>Ŀ�´�Ƽ �ٷΰ���</span></a>
					</div>
				</div>		<!-- move-->
		</div>			<!-- review ���� �±� -->

		




	
				</div>	<!-- main ���� �ױ� -->
			</div>		<!-- banner ���� �ױ� -->
		<jsp:include page="/View/User/inc/footer.jsp" />
	</div>				<!-- wrap -->
</body>
</html>


