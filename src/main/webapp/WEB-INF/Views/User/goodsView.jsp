<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articlesMap.articlesList }"/><%--page넘버와 섹션이 적용된 페이지 글 --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe to You :: 내일의 장보기, 레시피투유</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		function fn_pick() {
			$.ajax({
				type: "post",
				async: true,
				url: "",
				dataType: "text",
				data: {imageFileNO: _imageFileNO, articleNO: _articleNO, imageFileName: _imageFileName},
				success: function(result, textStatus) {
					if (result == 'success') {
						alert("이미지를 삭제했습니다.");
						location.href="http://localhost:8080/ezenac10/board/viewArticle.do?removeCompleted=true&articleNO=" + _articleNO;
						
						$('#tr_' + rowNum).remove();		
						$('#tr_sub' + rowNum).remove();		
					}
					else {
						alert("다시 시도해 주세요.");
					}
				},
				error : function(data, textStatus) {
					alert("에러가 발생했습니다.");
				},
				complete : function(data, textStatus) {
					alert("찜목록에 담았습니다.");	
				}
			});
		}
			 
		//onclick="fn_removeModImage(${item.imageFileNO}, ${item.articleNO}, '${item.imageFileName}', ${status.count})"
		function fn_cart(_cart_code, _prod_code, _prod_quantity, _user_id) {
		
			$.ajax({
				type: "post",			
				dateType: "text",		
				async: true,			
				url: "http://localhost:8080/recipetoyou/cart.do",		
				data: {cart_code: _cart_code, prod_code: _prod_code, prod_quantity: _prod_quantity, user_id: _user_id},	
				success: function(data, textStatus) {		
					//$('#message').append(data);	
				},
				error: function(data, textStatus) {			
					alert("에러가 발생했습니다.");
				},
				complete: function(data, textStatus) {		
					alert("장바구니에 담았습니다.");	
				}
			});
		} 
		
		
		/* 
		function fn_removeModImage(_imageFileNO, _articleNO, _imageFileName, rowNum) {
			//alert(rowNum);
			$.ajax({
				type: "post",
				async: false,
				url: "http://localhost:8080/ezenac10/board/removeModImage.do",
				dataType: "text",
				data: {imageFileNO: _imageFileNO, articleNO: _articleNO, imageFileName: _imageFileName},
				success: function(result, textStatus) {
					if (result == 'success') {
						alert("이미지를 삭제했습니다.");
						location.href="http://localhost:8080/ezenac10/board/viewArticle.do?removeCompleted=true&articleNO=" + _articleNO;
						
						$('#tr_' + rowNum).remove();		//해당된 <tr></tr>부분 삭제됨
						$('#tr_sub' + rowNum).remove();		//밑의 버튼들 삭제됨
					}
					else {
						alert("다시 시도해 주세요.");
					}
				},
				error : function(data, textStatus) {
					alert("에러가 발생했습니다.");
				},
				complete : function(data, textStatus) {
					//
				}
			});
		} */
	</script>

<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="/recipetoyou/Resources/User/Css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="/recipetoyou/Resources/User/Css/sparePage.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>

<body>
	<div id="main">
		<div class="section_view">
			<div class="inner_view">
				<!-- inner_view - 상품 이미지를 감싼 태그  -->
				<div class="goods_info_name">
					<img alt="두부면 파스타"
						src="/recipetoyou/Resources/User/Img/Meal/paster1.jpg">
				</div>

				<div class="goods_name">
					<!-- goods_name -->
					<span class="share"> <img alt="share"
						src="/recipetoyou/Resources/User/Img/share.png">
					</span> <strong class="name">[잇츠베러] 어스밀 렌틸라구 두부면 파스타</strong><br> <span
						class="short_desc">식물성 재료로 완성한 라구 파스타</span> <span class="dc">
						<span class="dc_price">${goodsVO.prod_code} ${goodsVO.prod_code}5,900 <span class="won">원</span></span>
					</span>
					<!-- dc -->
					<br> <span class="not_login">로그인 후, 적립혜택이 제공됩니다.</span>


					<div class="goods_info">
						<!--  inn_goods_info, cartPut, total, pick_cart를 감싼 태그 -->

						<div class="inn_goods_info">
							<!-- inn_goods_info -->
							<dl class="list fst">
								<dt class="tit">판매단위</dt>
								<dd class="desc">1팩</dd>
							</dl>
							<dl class="list">
								<dt class="tit">중량/용량</dt>
								<dd class="desc">240g</dd>
							</dl>
							<dl class="list">
								<dt class="tit">배송구분</dt>
								<dd class="desc">샛별배송/택배배송</dd>
							</dl>
							<dl class="list">
								<dt class="tit">포장타입</dt>
								<dd class="desc">
									냉동/스티로품 <strong class="emph">택배배송은 에코포장이 스티롬품으로 대체됩니다.</strong>
								</dd>
							</dl>
							<dl class="list">
								<dt class="tit">알레르기정보</dt>
								<dd class="desc">
									- 대두,토마토 함유<br> - 이 제품은 밀, 소고기, 닭고기, 돼지고기, 우유, 메밀, 땅콩,
									복숭아, 호두, 잣, 오징어, 고등어, 게, 새우, 조개류(굴, 바지락, 모시조개, 가리비, 홍합, 전복 등),
									알류(계란, 메추리알), 아황산류를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
								</dd>
							</dl>
						</div>
						<!-- inn_goods_info  상품 정보 -->


						<div class="cartPut">
							<!-- cartPut -->
							<span class="tit_item">구매수량</span>

							<div class="inner_option">
								<!-- inner_option -->
								<button id="prodDown" type="button" class="btn down">
									<i class="fas fa-minus"></i>
								</button>
								<input type="number" readonly="readonly"
									class="inp" value="1">
								<button id="prodUp" type="button" class="btn up">
									<i class="fas fa-plus"></i>
								</button>
							</div>
							<!-- inner_option  -,+ 구매수량 -->
						</div>
						<!-- cartPut 하트  -->


						<div class="total">
							<!-- total  -->
							<span class="count_price">총 상품금액 :</span> <span class="sum">
								<span class="sum_num">5,900</span> <span class="sum_won">원</span>
							</span>
							<p class="txt_point">
								<span class="point">적립</span> <span class="not_login">로그인
									후, 적립혜택 제공</span>
							</p>
						</div>
						<!-- total 총 상품 구매 금액 -->


						<div class="pick_cart">
							<!-- pick_cart -->
							<button id="pick" type="button" class="pick_btn off" onclick="fn_pick()"><!-- 찜 버튼  -->
								<i class="fas fa-heart"></i>
							</button>
							<div class="button_wrap">
								<button type="button" class="wrap_btn"  onclick="fn_cart()">장바구니 담기</button> <!-- 장바구니 버튼  -->
								<span>${goodsVO.PROD_CODE}</span>
							</div>
							<!-- button_wrap -->
						</div>
						<!-- pick_cart 장바구니 담기 -->

					</div>
					<!-- goods_info -->
				</div>
				<!-- goods_name -->
			</div>
			<!-- inner_view -->

			<div class="goods_add_product_wrap">
				<!-- goods_add_product_wrap -->
				<div class="goods_add_product">
					<h3 class="goods-add-product-title"></h3>
					<div class="goods-add-product-sub">RELATED PRODUCT</div>
					<!-- goods-add-product-sub -->
				</div>
				<!-- goods_add_product -->


				<div class="inn_goods_add_product">
					<!-- 관련 상품 추천 -->
					<button class="btn_move_left">
						<i class="fas fa-angle-left"></i>
					</button>
					<ul class="goods_add_product_list">
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
								<a href="#"><img alt="item_img"
									src="/recipetoyou/Resources/User/Img/Meal/paster2.jpg"></a>
								<div class="add_product_item_inn">
									<p class="add_product_item_inn_cost">[잇츠베러] 어스밀 바질페스토 두부면
										파스타</p>
									<br>
									<p>5,900원</p>
								</div>
								<!-- add_product_item_inn -->
							</div> <!-- add_product_item_inn_wrap -->
						</li>

						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
								<a href="#"><img alt="item_img"
									src="/recipetoyou/Resources/User/Img/Meal/meal4.jpg"></a>
								<div class="add_product_item_inn">
									<p class="add_product_item_inn_cost">[아임웰] 굿밸런스 라이트밀 볶음밥 2종
										(4개입)</p>
									<br>
									<p>10,400원</p>
								</div>
								<!-- add_product_item_inn -->
							</div> <!-- add_product_item_inn_wrap -->
						</li>

						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
								<a href="#"><img alt="item_img"
									src="/recipetoyou/Resources/User/Img/Meal/meal5.jpg"></a>
								<div class="add_product_item_inn">
									<p class="add_product_item_inn_cost">[아임웰] 곤약잡곡 닭가슴살 잡채 볶음밥
										(4개입)</p>
									<br>
									<p>10,400원</p>
								</div>
								<!-- add_product_item_inn -->
							</div> <!-- add_product_item_inn_wrap -->
						</li>

						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
								<a href="#"><img alt="item_img"
									src="/recipetoyou/Resources/User/Img/Meal/meal6.jpg"></a>
								<div class="add_product_item_inn">
									<p class="add_product_item_inn_cost">[마이비밀] 진선미 떡볶이 오리지널맛</p>
									<br>
									<p>5,500원</p>
								</div>
								<!-- add_product_item_inn -->
							</div> <!-- add_product_item_inn_wrap -->
						</li>

						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
								<a href="#"><img alt="item_img"
									src="/recipetoyou/Resources/User/Img/Meal/meal7.jpg"></a>
								<div class="add_product_item_inn">
									<p class="add_product_item_inn_cost">[마이비밀] 진선미 떡볶이 짜장맛</p>
									<br>
									<p>5,500원</p>
								</div>
								<!-- add_product_item_inn -->
							</div> <!-- add_product_item_inn_wrap -->
						</li>
					</ul>
					<button class="btn_move_right">
						<i class="fas fa-angle-right"></i>
					</button>
				</div>
				<!-- inn_goods_add_product 관련 상품 추천 wrap-->

				<div class="goods-view-wrap">
					<!-- 상품 상세보기 -->
					<div class="goods-view-inn">
						<ul class="goods-view-lists">
							<li class="gview-list-inn"><a href="#prodDetail"
								class="gview_tab_anchor scroll_move">상품설명</a></li>
							<li class="gview-list-inn"><a href="#goods_pic"
								class="gview_tab_anchor scroll_move">상세정보</a></li>
							<li class="gview-list-inn"><a href="#reviewTable"
								class="gview_tab_anchor scroll_move">후기</a></li>
							<li class="gview-list-inn"><a href="#QandATable"
								class="gview_tab_anchor scroll_move">문의</a></li>
						</ul>
						<!-- goods-view-lists -->
					</div>
					<!-- goods-view-inn -->

					<div class="goods-view-inn_content_wrap">
						<div id="prodDetail" class="goods-view-inn_content">
							<div class="pic">
								<img alt="pic"
									src="/recipetoyou/Resources/User/Img/SaleGoods/view-inn_content_1.jpg">
							</div>
							<!-- pic -->
							<div class="context_tit">
								<h4>
									<small>식물성 재료로 완성한 라구 파스타</small> [잇츠베러] 어스밀<br> 렌틸라구 두부면
									파스타
								</h4>
								<p class="words">다채로운 두부 요리를 시도 중인 분이라면, 지금 소개하는 잇츠베러 어스밀
									두부면 파스타가 무척 마음에 드실 거예요. 유기농 콩으로 두부면을 제면하고 소스와 토핑은 모두 식물성 재료를
									사용해 질 좋은 단백질과 식이섬유를 간편하게 챙길 수 있거든요. 이번에는 고소한 두부면에 토마토 소스와 렌틸콩으로
									만든 라구소스를 흠뻑 입혀 완성한 렌틸라구 파스타를 준비했어요. 두부와 렌틸콩의 식감이 살아 있어 풍성하고
									다채로운 맛을 자랑한답니다. 가볍고 속 편한 식사를 찾고 계셨다면, 잇츠베러를 선택해 보세요.</p>
							</div>
							<!-- context_tit -->
						</div>
						<!-- goods-view-inn_content -->
					</div>
					<!-- goods-view-inn_content_wrap -->


					<div class="check_point">
						<h3>
							<span>Recipe To You's Check Point</span>
						</h3>
						<img alt="check_point_img"
							src="/recipetoyou/Resources/User/Img/SaleGoods/check_point.jpg">
					</div>
					<!-- check_point -->

					<div class="pick">
						<h3>
							<span>Recipe To You's Pick</span>
						</h3>
						<div class="context_tit">
							<p class="words">
								<strong class="sub_tit"> <span class="option_tit">어스밀
										렌틸라구 두부면 파스타</span>
								</strong> <b>중량</b> : 1팩(240g)<br> <b>특징 </b> : 두부면에 새콤한 토마토소스와 고소한
								렌틸콩을 사용해 만든 라구 소스 파스타입니다.<br>
							</p>
							<div class="pic2">
								<img alt="pic"
									src="/recipetoyou/Resources/User/Img/SaleGoods/pick_1.jpg">
							</div>
							<!-- pic2 -->
						</div>
						<!-- context_tit -->
					</div>
					<!-- pick -->

					<div class="goods_tips">
						<span>Recipe To You's Tip</span>
						<div class="tip_box">
							<div class="tip_tit">
								<p class="tip_words">
									<strong class="sub_tit_tip">조리법</strong> 비닐을 살짝 뜯어 전자레인지에 넣고
									700W 기준 약 4분 ~ 4분 30초간, 1000W 기준 약 3분 ~ 3분 30초간 가열해 주세요.
								</p>
								<p class="tip_words">
									<strong class="sub_tit_tip">보관법</strong> -18℃ 이하에서 냉동 보관하세요.
								</p>
							</div>
							<!-- tip_tit -->
						</div>
						<!-- tip_box -->
					</div>
					<!-- tips -->

					<div id="goods_pic">
						<img alt=""
							src="/recipetoyou/Resources/User/Img/SaleGoods/pick_2.jpg">
					</div>
					<!-- goods_pic -->


					<table width="100%" border="0" cellpading="0" cellspacing="1"
						class="extra-info">
						<tbody>
							<tr>
								<th scope="row" class="goods_table_head">제품명</th>
								<td>상품설명 및 상품이미지 참조</td>
								<th scope="row" class="goods_table_head">식품의 유형</th>
								<td>상품설명 및 상품이미지 참조</td>
							</tr>
							<tr>
								<th scope="row" class="goods_table_head">생산자및소재지(수입품의경우생산자,수입자및제조국)</th>
								<td>상품설명 및 상품이미지 참조</td>
								<th scope="row" class="goods_table_head">제조연월일,유통기한또는품질유지기한</th>
								<td>제품 별도 라벨 표기 참조</td>
							</tr>
							<tr>
								<th scope="row" class="goods_table_head">포장단위별 내용물의 용량(중량),
									수량</th>
								<td>상품설명 및 상품이미지 참조</td>
								<th scope="row" class="goods_table_head">원재료명및함량(농수산물의원산지표시에관한법률에따른원산지표시포함)</th>
								<td>상품설명 및 상품이미지 참조</td>
							</tr>
							<tr>
								<th scope="row" class="goods_table_head">영양성분(식품등의표시·광고에관한법률에
									따른 영양성분 표시대상 식품에 한함)</th>
								<td>상품설명 및 상품이미지 참조</td>
								<th scope="row" class="goods_table_head">유전자변형식품에해당하는경우의표시</th>
								<td>상품설명 및 상품이미지 참조</td>
							</tr>
							<tr>
								<th scope="row" class="goods_table_head">소비자안전을 위한 주의사항</th>
								<td>상품설명 및 상품이미지 참조</td>
								<th scope="row" class="goods_table_head">수입식품에 해당하는 경우
									“수입식품안전관리특별법에 따른 수입신고를 필함”의 문구</th>
								<td>상품설명 및 상품이미지 참조</td>
							</tr>
							<tr>
								<th scope="row" class="goods_table_head">소비자상담관련전화번호</th>
								<td>레시피투유 고객센터 (1234-5678)</td>
								<th scope="row" class="goods_table_head"></th>
								<td></td>
							</tr>
						</tbody>
					</table>


					<div class="whykurly_wrap">
						<div class="whykurly">
							<strong class="whykurly_tit">Why Recipe To You</strong>
							<div class="whykurly_txt_area">
								<div class="col">
									<div class="why_icon">
										<i class="fas fa-clipboard-list"></i>
									</div>
									<!-- why_icon -->
									<div class="why_info">
										<span class="title">깐깐한 상품위원회</span> <span class="tit_story">
											나와 내 가족이 먹고 쓸 상품을 고르는<br> 마음으로 매주 상품을 직접 먹어보고,<br>
											경험해보고 성분, 맛, 안정성 등 다각도의<br> 기준을 통과한 상품만을 판매합니다.
										</span>
									</div>
									<!-- why_info -->
								</div>
								<!-- col -->

								<div class="col">
									<div class="why_icon">
										<i class="fas fa-shipping-fast"></i>
									</div>
									<!-- why_icon -->
									<div class="why_info">
										<span class="title">신선한 풀콜드체인 배송</span> <span
											class="tit_story"> 온라인 업계 최초로 산지에서 문 앞까지<br>상온,
											냉장, 냉동 상품을 분리 포장 후<br> 최적의 온도를 유지하는 냉장 배송 시스템,<br>풀콜드체인으로
											상품을 신선하게 전해드립니다.
										</span>
									</div>
									<!-- why_info -->
								</div>
								<!-- col -->

								<div class="col">
									<div class="why_icon">
										<i class="fas fa-globe-americas"></i>
									</div>
									<!-- why_icon -->
									<div class="why_info">
										<span class="title">환경을 생각하는 지속 가능한 유통</span> <span
											class="tit_story"> 친환경 포장재부터 생산자가 상품에만<br>집중할 수
											있는 직매입 유통구조까지,<br> 지속 가능한 유통을 고민하며<br>모든 환경(생산자,
											커뮤니티, 직원)이<br>더 나아질 수 있도록 노력합니다.
										</span>
									</div>
									<!-- why_info -->
								</div>
								<!-- col -->
							</div>
							<!--whykurly_txt_area  -->
						</div>
						<!-- whykurly -->
					</div>
					<!-- whykurly_wrap -->


					<div class="happy_center_wrap">
						<div class="happy">
							<span class="happy_tit">고객행복센터</span> <span class="sub_qus">궁금하신
								점이나 서비스 이용에 불편한 점이 있으신가요?</span> <span class="sub_ans">문제가 되는
								부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.</span>
						</div>
						<!-- happy -->

						<ul class="happy_list_u">
							<li>
								<div class="happy_list_tit">
									<span class="con"></span> 전화 문의 1234-1234
								</div> <!-- happy_list_tit -->
								<div class="happy_list_sub">오전 7시~오후 7시 (연중무휴)</div>
							</li>

							<li>
								<div class="happy_list_tit">
									<span class="con"></span> 카카오톡 문의
								</div> <!-- happy_list_tit -->
								<div class="happy_list_sub">오전 7시~오후 7시 (연중무휴)</div>
								<div class="happy_list_plus">
									카카오톡에서 ’Recipe To You’를 검색 후<br>대화창에 문의 및 불편사항을<br>남겨주세요.
								</div>
							</li>

							<li>
								<div class="happy_list_tit">
									<span class="con"></span> 홈페이지 문의
								</div> <!-- happy_list_tit -->
								<div class="happy_list_sub">
									24시간 접수 가능<br>로그인 > 마이페이지 > 1:1 문의
								</div>
								<div class="happy_list_plus">
									고객센터 운영 시간에 순차적으로<br>답변해드리겠습니다.
								</div>
							</li>
						</ul>

						<div class="happy_center">
							<div class="happy_unfold">
								<p class="unfold_top">교환 및 환불 안내</p>
								<p class="unfold_sub">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
								<a class="asked" href="#"> <span class="txt">자세히보기</span> <i
									class="fas fa-angle-down"></i>
								</a>
							</div>
							<!-- happy_unfold -->
						</div>
						<!-- happy_center -->

						<div class="happy_center">
							<div class="happy_unfold">
								<p class="unfold_top">주문 취소 안내</p>
								<ul class="sub">
									<li><strong class="sub_inn">- [입금 확인] 단계</strong> <span
										class="sub_inn_in">마이컬리 > 주문 내역 상세페이지에서 직접 취소하실 수 있습니다.</span>
									</li>
									<li><strong class="sub_inn">- [입금 확인] 이후 단계</strong> <span
										class="sub_inn_in">고객행복센터로 문의해주세요.</span></li>
									<li><strong class="sub_inn">- 결제 승인 취소 / 환불</strong> <span
										class="sub_inn_in">결제 수단에 따라 영업일 기준 3~7일 내에 처리해드립니다.</span></li>
								</ul>
								<a class="asked" href="#"> <span class="txt">자세히보기</span> <i
									class="fas fa-angle-down"></i>
								</a>
							</div>
							<!-- happy_unfold -->
						</div>
						<!-- happy_center -->

						<div class="happy_center">
							<div class="happy_unfold">
								<p class="unfold_top">배송관련안내</p>
								<p class="unfold_sub">배송 과정 중 기상 악화 및 도로교통 상황에 따라 부득이하게 지연
									배송이 발생될 수 있습니다.</p>
							</div>
							<!-- happy_unfold -->
						</div>
						<!-- happy_center -->
					</div>
					<!-- happy_center_wrap -->

				</div>
				<!-- goods-view-wrap -->

				<div id="reviewTable" class="reviewTable">
					<div>
						<h5>PRODUCT REVIEW</h5>
						<h6>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
							이동될 수 있습니다.</h6>
						<h6>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</h6>
					</div>
					<table>
						<tr class="th">
							<th class="num">번호</th>
							<th class="title">제목</th>
							<th class="writer">작성자</th>
							<th class="writeDate">작성일</th>
							<th class="hit">조회</th>
						</tr>

						<tr class="reviewList1">
							<td>공지</td>
							<td class="titleCont"><a href="#none">금주의 Best 후기 안내</a></td>
							<td>Recipe</td>
							<td>2022-01-04</td>
							<td>15</td>
						</tr>
						<tr class="reviewDetailList1">
							<td colspan="5">
								<div>
									<span> 금주의 best 후기입니다. </span>
									<div class="echoBtn">
										<button class="editBtn" type="button">수정</button>
										<button class="deleteBtn" type="button" onclick="QAdelte()">삭제</button>
									</div>
								</div>
							</td>
						</tr>

					</table>
					<div class="writeBtn">
						<a href="${contextPath}/reviewWrite.do">후기작성</a>
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
				<%--review end --%>

				<%--QnA --%>
				<div id="QandATable" class="QandATable">
					<div>
						<h5>PRODUCT Q&A</h5>
						<h6>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
							이동될 수 있습니다.</h6>
						<h6>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</h6>
					</div>
					<table>
						<tr class="th">
							<th class="title">제목</th>
							<th class="writer">작성자</th>
							<th class="writeDate">작성일</th>
							<th class="reply">답변상태</th>
						</tr>

						<tr class="QandAList1">
							<td>판매 일시 중단 제품입니다.</td>
							<td class="titleCont">recipetoyou</td>
							<td>2022-01-04</td>
							<td>-</td>
						</tr>
						<tr class="QandADetailList1">
							<td colspan="5">
								<div>
									<span> 환경을 생각해주세요. </span>
									<div class="echoBtn">
										<button class="editBtn" type="button">수정</button>
										<button class="deleteBtn" type="button" onclick="QAdelte()">삭제</button>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<div class="writeBtn">
						<a id="show">문의하기</a>
					</div>
					<%--QnA End--%>
					
					<%--문의하기 팝업 --%>
					<div class="background">
						<div class="window">
							<div class="popup">
								<div class="popupHeader">
									<h1 class="QAWrtieTitle">상품문의하기</h1>
									<button id="close">X</button>
								</div>
								<div class="prod">
									<div class="img">
										<img src="/recipetoyou/Resources/User/Img/goods6.jpg" />
									</div>
									<div class="prodInfo">
										<span class="prodTitle">소고기 200g</span><br /> <span
											class="prodSub">맛있는 소고기 200g</span>
									</div>
								</div>
								<div class="QnAWrap">
									<form>
										<table class="QnAWrite">
											<tr class="QnAWriteTitle">
												<th>제목</th>
												<td><input type="text" placeholder="제목을 입력해주세요." /></td>
											</tr>
											<tr class="content">
												<th>내용</th>
												<td><textarea
														placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,&#13;&#10;일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다.&#13;&#10;반품/환불 문의는 1:1문의로 가능합니다."></textarea>
												</td>
											</tr>
											<tr class="scret">
												<th colspan="2"><label><input type="checkbox">&nbsp;비밀글로 문의하기</label></th>
											</tr>
										</table>
										
										
										<div class="popWriteBtn">
											<button class="cancel" type="reset">취소</button>
											<button class="reg" type="submit">등록</button>
										</div>
									</form>
								</div>

							</div>
						</div>
					</div>
					<%--문의하기 팝업 끝 --%>
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
			<!-- product_review_wrap -->

		</div>
		<!-- goods_add_product_wrap -->


	</div>
	<!-- section_view -->
	<!-- wrap -->
	<script>
	let detailHeader = document.querySelector(".goods-view-inn");
	//let detailHeaderHeight = detailHeader.offsetHeight;
	
	window.onscroll = function () {
	  let windowTop = window.scrollY;
	  if (windowTop >= 1350) {
		  detailHeader.classList.add("drop");
	  } 
	  else {
		  detailHeader.classList.remove("drop");
	  }
	};
	
	$(document).ready(function($) {
        $(".scroll_move").click(function(event){         
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
	});
	$(document).ready(function() {
		var aa = $('#pick').attr('class');
		$('.reviewList1').click(function() {
			$('.reviewDetailList1').fadeToggle();
		});
		$('.QandAList1').click(function() {
			$('.QandADetailList1').fadeToggle();
		});
	     //장바구니 하트 색변화
	    $('#pick').click(function(){
	    	console.log(aa);
	    	if(aa == 'pick_btn off'){
	    		$('#pick').removeClass('off');
	    		$('#pick').addClass('on');
	    		aa = $('#pick').attr('class');
	    	}else if((aa == 'pick_btn on')){
	    		$('#pick').removeClass('on');
	    		$('#pick').addClass('off');
	    		aa = $('#pick').attr('class');
	    	}
	    });
	     
	    var amount = $('.inp').val();
	    amount = parseInt(amount);
	    $('#prodDown').click(function(){
	    	if(amount > 1){
	    		amount = amount -1;
	    		$('.inp').val(amount);
	    	}else{
	    		alert('구매수량은 1개 이상이여야 합니다.');
	    	}
	    });
		$('#prodUp').click(function(){
			amount = amount +1;
			$('.inp').val(amount);
	    });
	    
	});
	
	//문의하기 팝업
	 function show() {
        document.querySelector(".background").className = "background show";
      }

      function close() {
        document.querySelector(".background").className = "background";
      }

      document.querySelector("#show").addEventListener("click", show);
      document.querySelector("#close").addEventListener("click", close);
      

	</script>
</body>