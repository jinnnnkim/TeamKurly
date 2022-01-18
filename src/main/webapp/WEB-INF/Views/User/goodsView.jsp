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
<link rel="stylesheet" type="text/css"
	href="/Resources/User/Css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="/Resources/User/Css/sparePage.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>
</head>
<body>
	<!-- ��ǰ �� ������ -->
	<div class="wrap">

		<jsp:include page="/View/User/inc/header.jsp" />
		<!-- header -->
		
		<div id="main">
			<!-- main -->
				
			<div class="section_view">
				<!-- section_view -->

					
				<div class="inner_view">
					<!-- inner_view - ��ǰ �̹����� ���� �±�  -->
					
					<div class="goods_info_name">
						<img alt="�κθ� �Ľ�Ÿ" src="/Resources/User/Img/Meal/paster1.jpg">
					</div>
				

					<div class="goods_name">		
					<!-- goods_name -->
						<span class="share"> 
							<img alt="share" src="/Resources/User/Img/share.png">
						</span>
						
						 <strong class="name">[��������] ��� ��ƿ�� �κθ� �Ľ�Ÿ</strong><br> 
						 
						 <span class="short_desc">�Ĺ��� ���� �ϼ��� �� �Ľ�Ÿ</span>
							  <span class="dc">
								<span class="dc_price">5,900 <span class="won">��</span></span>
							</span> 			
							<!-- dc -->
							<br>
						
						 <span class="not_login">�α��� ��, ���������� �����˴ϴ�.</span>
					

					<div class="goods_info">
							<!--  inn_goods_info, cartPut, total, pick_cart�� ���� �±� -->

							<div class="inn_goods_info">
								<!-- inn_goods_info -->
								<dl class="list fst">
									<dt class="tit">�ǸŴ���</dt>
									<dd class="desc">1��</dd>
								</dl>
								<dl class="list">
									<dt class="tit">�߷�/�뷮</dt>
									<dd class="desc">240g</dd>
								</dl>
								<dl class="list">
									<dt class="tit">��۱���</dt>
									<dd class="desc">�������/�ù���</dd>
								</dl>
								<dl class="list">
									<dt class="tit">����Ÿ��</dt>
									<dd class="desc">
										�õ�/��Ƽ��ǰ <strong class="emph">�ù����� ���������� ��Ƽ��ǰ����
											��ü�˴ϴ�.</strong>
									</dd>
								</dl>
								<dl class="list">
									<dt class="tit">�˷���������</dt>
									<dd class="desc">
										- ���,�丶�� ����<br> - �� ��ǰ�� ��, �Ұ��, �߰��, �������, ����, �޹�, ����,
										������, ȣ��, ��, ��¡��, ����, ��, ����, ������(��, ������, �������, ������, ȫ��, ���� ��),
										�˷�(���, ���߸���), ��Ȳ����� ����� ��ǰ�� ���� �����ü����� �����ϰ� �ֽ��ϴ�.
									</dd>
								</dl>
							</div>
							<!-- inn_goods_info  ��ǰ ���� -->


							<div class="cartPut">
								<!-- cartPut -->
								<span class="tit_item">���ż���</span>

								<div class="inner_option">
									<!-- inner_option -->
									<button type="button" class="btn down">
										<i class="fas fa-minus"></i>
									</button>
									<input type="number" readonly="readonly" onfocus="this.blur()"
										class="inp">
									<button type="button" class="btn up">
										<i class="fas fa-plus"></i>
									</button>
								</div>
								<!-- inner_option  -,+ ���ż��� -->
							</div>
							<!-- cartPut ��Ʈ  -->


							<div class="total">
								<!-- total  -->
								<span class="count_price">�� ��ǰ�ݾ� :</span> 
								<span class="sum">
									<span class="sum_num">5,900</span>
									 <span class="sum_won">��</span>
								</span>
								<p class="txt_point">
									<span class="point">����</span>
									 <span class="not_login">�α��� ��, �������� ����</span>
								</p>
							</div>
							<!-- total �� ��ǰ ���� �ݾ� -->


							<div class="pick_cart">
								<!-- pick_cart -->
								<button type="button" class="pick_btn">
									<i class="fas fa-heart"></i>
								</button>
								<div class="button_wrap">
									<button type="button" class="wrap_btn">��ٱ��� ���</button>
								</div>
								<!-- button_wrap -->
							</div>
							<!-- pick_cart ��ٱ��� ��� -->

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
					<div class="goods-add-product-sub">
						RELATED PRODUCT
					</div>
					<!-- goods-add-product-sub -->
			</div>	
			<!-- goods_add_product -->
			
			
			<div class="inn_goods_add_product">
			<!-- ���� ��ǰ ��õ -->
				<button class="btn_move_left"><i class="fas fa-angle-left"></i></button>
					<ul class="goods_add_product_list">
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
									<a href="#"><img alt="item_img" src="/Resources/User/Img/Meal/paster2.jpg"></a>
								<div class="add_product_item_inn">	
									<p class="add_product_item_inn_cost">[��������] ��� �����佺�� �κθ� �Ľ�Ÿ</p><br>
									<p >5,900��</p>
								</div>
								<!-- add_product_item_inn -->
							</div>	
						<!-- add_product_item_inn_wrap -->
						</li>
						
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
									<a href="#"><img alt="item_img" src="/Resources/User/Img/Meal/meal4.jpg"></a>
								<div class="add_product_item_inn">	
									<p class="add_product_item_inn_cost">[������] �¹뷱�� ����Ʈ�� ������ 2�� (4����)</p><br>
									<p >10,400��</p>
								</div>
								<!-- add_product_item_inn -->
							</div>	
						<!-- add_product_item_inn_wrap -->
						</li>
						
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
									<a href="#"><img alt="item_img" src="/Resources/User/Img/Meal/meal5.jpg"></a>
								<div class="add_product_item_inn">	
									<p class="add_product_item_inn_cost">[������] ������ �߰����� ��ä ������ (4����)</p><br>
									<p >10,400��</p>
								</div>
								<!-- add_product_item_inn -->
							</div>	
						<!-- add_product_item_inn_wrap -->
						</li>
						
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
									<a href="#"><img alt="item_img" src="/Resources/User/Img/Meal/meal6.jpg"></a>
								<div class="add_product_item_inn">	
									<p class="add_product_item_inn_cost">[���̺��] ������ ������ �������θ�</p><br>
									<p >5,500��</p>
								</div>
								<!-- add_product_item_inn -->
							</div>	
						<!-- add_product_item_inn_wrap -->
						</li>
						
						<li class="goods_add_product_item">
							<div class="add_product_item_inn_wrap">
									<a href="#"><img alt="item_img" src="/Resources/User/Img/Meal/meal7.jpg"></a>
								<div class="add_product_item_inn">	
									<p class="add_product_item_inn_cost">[���̺��] ������ ������ ¥���</p><br>
									<p >5,500��</p>
								</div>
								<!-- add_product_item_inn -->
							</div>	
						<!-- add_product_item_inn_wrap -->
						</li>
					</ul>
				<button class="btn_move_right"><i class="fas fa-angle-right"></i></button>
			</div>
			<!-- inn_goods_add_product ���� ��ǰ ��õ wrap-->
			
			<div class="goods-view-wrap">
			<!-- ��ǰ �󼼺��� -->
					<div class="goods-view-inn">
						<ul class="goods-view-lists">
							<li class="gview-list-inn">
								<a href="#" class="gview_tab_anchor">��ǰ����</a>
							</li>
							<li class="gview-list-inn">
								<a href="#" class="gview_tab_anchor">������</a>
							</li>
							<li class="gview-list-inn">
								<a href="#" class="gview_tab_anchor">�ı�</a>
							</li>
							<li class="gview-list-inn">
								<a href="#" class="gview_tab_anchor">����</a>
							</li>
						</ul>
						<!-- goods-view-lists -->	
					</div>
					<!-- goods-view-inn -->
				
				<div class="goods-view-inn_content_wrap">
						<div class="goods-view-inn_content">
							<div class="pic">
								<img alt="pic" src="/Resources/User/Img/SaleGoods/view-inn_content_1.jpg">
							</div>	
							<!-- pic -->
							<div class="context_tit">
								<h4>
									<small>�Ĺ��� ���� �ϼ��� �� �Ľ�Ÿ</small>
									[��������] ���<br>
									��ƿ�� �κθ� �Ľ�Ÿ
								</h4>
								<p class="words">
									��ä�ο� �κ� �丮�� �õ� ���� ���̶��, 
									���� �Ұ��ϴ� �������� ��� �κθ� �Ľ�Ÿ�� ��ô ������ ��� �ſ���.
									����� ������ �κθ��� �����ϰ� �ҽ��� ������ ��� �Ĺ��� ��Ḧ ����� �� ���� �ܹ����� ���̼����� �����ϰ� ì�� �� �ְŵ��. 
									�̹����� ����� �κθ鿡 �丶�� �ҽ��� ��ƿ������ ���� �󱸼ҽ��� �컶 ���� �ϼ��� ��ƿ�� �Ľ�Ÿ�� �غ��߾��.
									�κο� ��ƿ���� �İ��� ��� �־� ǳ���ϰ� ��ä�ο� ���� �ڶ��Ѵ�ϴ�. 
									������ �� ���� �Ļ縦 ã�� ��̴ٸ�, ���������� ������ ������.
								</p>
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
					<img alt="check_point_img" src="/Resources/User/Img/SaleGoods/check_point.jpg">
				</div>
				<!-- check_point -->
				
				<div class="pick">
					<h3>
						<span>Recipe To You's Pick</span>
					</h3>
					<div class="context_tit">
						<p  class="words">
							<strong class="sub_tit">
								<span class="option_tit">��� ��ƿ�� �κθ� �Ľ�Ÿ</span>
							</strong>
							<b>�߷�</b> : 1��(240g)<br>
							<b>Ư¡ </b> : �κθ鿡 ������ �丶��ҽ��� ����� ��ƿ���� ����� ���� �� �ҽ� �Ľ�Ÿ�Դϴ�.<br>
						</p>
						<div class="pic2">
								<img alt="pic" src="/Resources/User/Img/SaleGoods/pick_1.jpg">
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
							<p  class="tip_words">
								<strong class="sub_tit_tip">������</strong>
								����� ��¦ ��� ���ڷ������� �ְ� 700W ���� �� 4�� ~ 4�� 30�ʰ�,
								1000W ���� �� 3�� ~ 3�� 30�ʰ� ������ �ּ���.
							</p>
							<p  class="tip_words">
								<strong class="sub_tit_tip">������</strong>
								 -18�� ���Ͽ��� �õ� �����ϼ���.
							</p>
						</div>
						<!-- tip_tit -->
					</div>
					<!-- tip_box -->
				</div>
				<!-- tips -->
				
				<div id="goods_pic">
					<img alt="" src="/Resources/User/Img/SaleGoods/pick_2.jpg">
				</div>
				<!-- goods_pic -->
				
				
				<table width="100%" border="0" cellpading="0" cellspacing="1" class="extra-info">
					<tbody>
						<tr>
							<th scope="row" class="goods_table_head">��ǰ��</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
							<th scope="row" class="goods_table_head">��ǰ�� ����</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
						</tr>
						<tr>
							<th scope="row" class="goods_table_head">�����ڹ׼�����(����ǰ�ǰ�������,�����ڹ�������)</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
							<th scope="row" class="goods_table_head">����������,������ѶǴ�ǰ����������</th>
								<td>��ǰ ���� �� ǥ�� ����</td>
						</tr>
						<tr>
							<th scope="row" class="goods_table_head">��������� ���빰�� �뷮(�߷�), ����</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
							<th scope="row" class="goods_table_head">��������Է�(����깰�ǿ�����ǥ�ÿ����ѹ���������������ǥ������)</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
						</tr>
						<tr>
							<th scope="row" class="goods_table_head">���缺��(��ǰ����ǥ�á��������ѹ����� ���� ���缺�� ǥ�ô�� ��ǰ�� ����)</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
							<th scope="row" class="goods_table_head">�����ں�����ǰ���ش��ϴ°����ǥ��</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
						</tr>
						<tr>
							<th scope="row" class="goods_table_head">�Һ��ھ����� ���� ���ǻ���</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
							<th scope="row" class="goods_table_head">���Խ�ǰ�� �ش��ϴ� ��� �����Խ�ǰ��������Ư������ ���� ���ԽŰ� ���ԡ��� ����</th>
								<td>��ǰ���� �� ��ǰ�̹��� ����</td>
						</tr>
						<tr>
							<th scope="row" class="goods_table_head">�Һ��ڻ�������ȭ��ȣ</th>
								<td>���������� ������ (1234-5678)</td>
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
									</div>	<!-- why_icon -->
									<div class="why_info">
										<span class="title">����� ��ǰ����ȸ</span>
										<span class="tit_story">
											���� �� ������ �԰� �� ��ǰ�� ����<br> �������� ���� ��ǰ�� ���� �Ծ��,<br>
											�����غ��� ����, ��, ������ �� �ٰ�����<br> ������ ����� ��ǰ���� �Ǹ��մϴ�.
										</span>
									</div>		<!-- why_info -->
								</div>
								<!-- col -->
								
								<div class="col"> 
									<div class="why_icon">
										<i class="fas fa-shipping-fast"></i>
									</div>	<!-- why_icon -->
									<div class="why_info">
										<span class="title">�ż��� Ǯ�ݵ�ü�� ���</span>
										<span class="tit_story">
											�¶��� ���� ���ʷ� �������� �� �ձ���<br>���, ����, �õ� ��ǰ�� �и� ���� ��<br>
											������ �µ��� �����ϴ� ���� ��� �ý���,<br>Ǯ�ݵ�ü������ ��ǰ�� �ż��ϰ� ���ص帳�ϴ�.
										</span>
									</div>		<!-- why_info -->
								</div>
								<!-- col -->
								
								<div class="col"> 
									<div class="why_icon">
										<i class="fas fa-globe-americas"></i>
									</div>	<!-- why_icon -->
									<div class="why_info">
										<span class="title">ȯ���� �����ϴ� ���� ������ ����</span>
										<span class="tit_story">
											ģȯ�� ��������� �����ڰ� ��ǰ����<br>������ �� �ִ� ������ ���뱸������,<br>
											���� ������ ������ ����ϸ�<br>��� ȯ��(������, Ŀ�´�Ƽ, ����)��<br>�� ������ �� �ֵ��� ����մϴ�.
										</span>
									</div>		<!-- why_info -->
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
									<span class="happy_tit">���ູ����</span>
									<span class="sub_qus">�ñ��Ͻ� ���̳� ���� �̿뿡 ������ ���� �����Ű���?</span>
									<span class="sub_ans">������ �Ǵ� �κ��� �������� ��� �Ʒ� �� ���Ͻ� ������� ������ �ֽø� ������ ���͵帮�ڽ��ϴ�.</span>
								</div>
								<!-- happy -->
								
								<ul class="happy_list_u">
									<li>
										<div class="happy_list_tit">
											<span class="con"></span>
												��ȭ ���� 1234-1234
										</div>
										<!-- happy_list_tit -->
										<div class="happy_list_sub">���� 7��~���� 7�� (���߹���)</div>
									</li>
									
									<li>
										<div class="happy_list_tit">
											<span class="con"></span>
												īī���� ����
										</div>
										<!-- happy_list_tit -->
										<div class="happy_list_sub">���� 7��~���� 7�� (���߹���)</div>
										<div class="happy_list_plus">īī���忡�� ��Recipe To You���� �˻� ��<br>��ȭâ�� ���� �� ���������<br>�����ּ���.</div>
									</li>
									
									<li>
										<div class="happy_list_tit">
										<span class="con"></span>
												Ȩ������ ����
										</div>
										<!-- happy_list_tit -->
										<div class="happy_list_sub">24�ð� ���� ����<br>�α��� > ���������� > 1:1 ����</div>
										<div class="happy_list_plus">������ � �ð��� ����������<br>�亯�ص帮�ڽ��ϴ�.</div>
									</li>
								</ul>
								
								<div class="happy_center">
									<div class="happy_unfold">
										<p class="unfold_top">��ȯ �� ȯ�� �ȳ�</p>
										<p class="unfold_sub">��ȯ �� ȯ���� �ʿ��Ͻ� ��� ���ູ���ͷ� �������ּ���.</p>
										<a class="asked" href="#">
											<span class="txt">�ڼ�������</span>
											<i class="fas fa-angle-down"></i>
										</a>
									</div>
									<!-- happy_unfold -->
								</div>
								<!-- happy_center -->
								
								<div class="happy_center">
									<div class="happy_unfold">
										<p class="unfold_top">�ֹ� ��� �ȳ�</p>
											<ul class="sub">
												<li>
													<strong class="sub_inn">- [�Ա� Ȯ��] �ܰ�</strong>
													<span class="sub_inn_in">�����ø� > �ֹ� ���� ������������ ���� ����Ͻ� �� �ֽ��ϴ�.</span>
												</li>
												<li>
													<strong class="sub_inn">- [�Ա� Ȯ��] ���� �ܰ�</strong>
													<span class="sub_inn_in">���ູ���ͷ� �������ּ���.</span>
												</li>
												<li>
													<strong class="sub_inn">- ���� ���� ��� / ȯ��</strong>
													<span class="sub_inn_in">���� ���ܿ� ���� ������ ���� 3~7�� ���� ó���ص帳�ϴ�.</span>
												</li>
											</ul>
										<a class="asked" href="#">
											<span class="txt">�ڼ�������</span>
											<i class="fas fa-angle-down"></i>
										</a>
									</div>
									<!-- happy_unfold -->
								</div>
								<!-- happy_center -->
								
								<div class="happy_center">
									<div class="happy_unfold">
										<p class="unfold_top">��۰��þȳ�</p>
										<p class="unfold_sub">��� ���� �� ��� ��ȭ �� ���α��� ��Ȳ�� ���� �ε����ϰ� ���� ����� �߻��� �� �ֽ��ϴ�.</p>	
									</div>
									<!-- happy_unfold -->
								</div>
								<!-- happy_center -->
							</div>
							<!-- happy_center_wrap -->
				
			</div>		
			<!-- goods-view-wrap -->
			
			<!-- <div class="product_review_wrap" id="goods_review">
				<div class="board">
				
				 </div>
				 board 
				 
				 
				 �ı� ���̺� ������
				 
				 -->
			</div>
			<!-- product_review_wrap -->
			
			
			
			
			
			
		</div>	
		<!-- goods_add_product_wrap -->




			</div>
			<!-- section_view -->
		</div>
		<!-- main -->

		<jsp:include page="/View/User/inc/footer.jsp" />
		<!-- footer -->
	</div>
	<!-- wrap -->
</body>
