<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>    
<title>�����ø� :: ������ �庸��, �����ø�</title>
<link href="/Resources/User/Css/main.css"  rel="stylesheet"  type="text/css">
<link href="/Resources/User/Css/reset.css" rel="stylesheet"  type="text/css">
<!-- fontawesome ��ũ -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<!-- font ��ũ -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<!-- �ĺ��� ��ũ -->
<link href="/Resources/User/Img/KurlyIcon.png" rel= "icon" type="image/x-icon"/>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<div class="container">
				<div class="topBar" id="topMessage">	<!-- banner ���Խ� 100��~ -->
					<a href="#" id="eventPage">	<%-- ���� ������������ id ���� --%>
						���� �����ϰ� �α��ǰ <b>100��</b>�� �޾ư�����!
						<i class="fas fa-angle-right"></i>
					</a>
				</div>
				<div class="header">			<!-- header -->
					<div id ="userMenu">		<!-- �α���, ȸ������, ������ ��� -->
						<ul class="list_menu">	
							<li class="menu_list">	<!-- onclick�� ī����  -->
							<a href="/View/User/Mypage/myinfo.jsp">����������</a>
								<a href="/View/User/Notice/notice.jsp"  class ="link-menu3" onclick="">������<i class="fas fa-caret-down"></i></a>
							</li>
							<li class="menu_login"><a href="#" class ="link-menu2">�α��� &#124;</a></li>
							<li class="menu_join"><a href="#"  class ="link-menu1" style=" color: #5f0080;">ȸ������ &#124;</a></li>
						</ul>
					</div>
				
					<div class="delivery">	<!-- ���� ��۾ȳ� �̹��� -->
						<a href="#"><img alt="delivery" src="/Resources/User/Img/delivery.png"></a>	
					</div>
					<div class="logo">
						<a href="/View/User/mainPage.jsp"><img alt="logo" src="/Resources/User/Img/logo.gif"></a>
					</div>
				
		
					<div id="catagoryMenu" class="Tcatagory" >	     <!-- ��ü ī���� -->
						<ul>
							<li class="menu1">
								<a href="/View/User/mainPage.jsp" onclick="">
									<span class="ico"><i class="fas fa-bars"></i></span>
									<span class="txt">��ü ī�װ�</span>
								</a>
							</li>
							<li class="menu2">
								<a href="/View/User/Community/communityRecipeMain.jsp" class="link_comu" onclick="">Ŀ�´�Ƽ</a>
							</li>
							<li class="menu3">
								<a href="/View/User/newGoodsPage.jsp" class="link_new" onclick="">�Ż�ǰ</a>
							</li>
							<li class="menu4">
								<a href="/View/User/bestGoodsPage.jsp" class="link_best" onclick="">����Ʈ</a>
							</li>
							<li class="menu5">
								<a href="/View/User/saleGoodsPage.jsp" class="link_sale" onclick="">�˶����</a>
							</li>
							<li class="menu6">
								<a href="/View/User/benefitPage.jsp" class="link_benefit" onclick="">Ư��/����</a>
							</li>
						</ul>
						
						<div id="allCate">
							<ul id="cateMain">
								<li id="sul">�� ������Ʈ</li>
								<li id="vegetables">ä��</li>
								<li id="fruit">���Ϥ��߰�����</li>
								<li id="seafood">������ػ���Ǿ</li>
								<li id="meat">���������</li>
								<li id="meal">�������������ο丮</li>
								<li id="salad">������������</li>
								<li id="noodle">�����������</li>
								<li id="snack">���Ĥ����ڤ���</li>
								<li id="bakery">����Ŀ����ġ�������</li>
								<li id="health">�ǰ���ǰ</li>
								<li id="liquor">������</li>
							</ul>
							<ul class="sul">
								<li>ȫ�������ǰ���ǰ</li>	
								<li>������������������</li>
								<li>������Ǿ������</li>
								<li>���Ϥ��߰������</li>
								<li>����Ʈ��ġ����ٰ���</li>
								<li>����������Ϥ�ĵ��</li>
								<li>��Ȱ���ֹ����Ƽ</li>
								<li>����Ĥ�����</li>
							</ul>						
							<ul class="vegetables">
								<li>ģȯ��</li>	
								<li>���������ڤ����</li>
								<li>�ñ�ġ����ä�Ҥ�����</li>
								<li>����ݸ���������ī�������</li>
								<li>���Ĥ����Ĥ����ä�����</li>
								<li>���̤�ȣ�ڤ�����</li>
								<li>�õ����̻�������ä��</li>
								<li>�ᳪ��������</li>
							</ul>
							<ul class="fruit">
								<li>ģȯ��</li>	
								<li>��ö����</li>
								<li>�������</li>
								<li>���԰���</li>
								<li>�������</li>
								<li>�õ����ǰ���</li>
								<li>�߰���</li>
								<li>�Ҥ����</li>
							</ul>
							<ul class="seafood">
								<li>��ö����</li>	
								<li>������</li>
								<li>������ݰǷ�</li>
								<li>��¡�������������</li>
								<li>������Ԥ�������</li>
								<li>�ػ깰��������</li>
								<li>���갡��ǰ</li>
								<li>����̿���������</li>
								<li>�Ǿ���ٽ���</li>
							</ul>
							<ul class="meat">
								<li>������Ұ��</li>	
								<li>���Ի�Ұ��</li>
								<li>�������</li>
								<li>�����</li>
								<li>�ߤ��������</li>
								<li>����������</li>
								<li>����</li>
							</ul>
							<ul class="meal">
								<li>���������</li>	
								<li>��ŰƮ�����ο丮</li>
								<li>�ع���</li>
								<li>��ġ�����������</li>
								<li>�κΤ������ħ��</li>
								<li>���������ܤ�������</li>
							</ul>
							<ul class="salad">
								<li>��������߰�����</li>	
								<li>���ö������</li>
								<li>�Ľ�Ÿ�����</li>
								<li>�����̤�Ƣ�������</li>
								<li>���ڤ��ֵ��פ�����</li>
								<li>�����������������</li>
								<li>�פ�������ī��</li>
								<li>���Ĥ��ø���</li>
							</ul>
							<ul class="noodle">
								<li>�Ľ�Ÿ�����</li>	
								<li>���ʤ��ҽ����巹��</li>
								<li>�������������</li>
								<li>�Ŀ��������⸧������</li>
								<li>�ұݤ���������ŷ�</li>
								<li>�а����������ͽ�</li>
							</ul>
							<ul class="snack">
								<li>���ڤ���������Ű</li>	
								<li>���ݸ���������ĵ��</li>
								<li>�����Ѱ�</li>
								<li>���̽�ũ��</li>
							</ul>
							<ul class="bakery">
								<li>�Ļ�������</li>	
								<li>������ͤ���������</li>
								<li>����ũ�����̤�����Ʈ</li>
								<li>ġ��</li>
								<li>����</li>
								<li>�ø������Ŭ</li>
							</ul>
							<ul class="health">
								<li>������</li>	
								<li>�����</li>
								<li>ȫ����λ����</li>
								<li>�ǰ�����ǰ�����</li>
								<li>�ǰ��и����ǰ�ȯ</li>
								<li>���̾�Ʈ���̳ʺ�Ƽ</li>
								<li>���Ƶ�</li>
							</ul>
							<ul class="liquor">
								<li>���ɸ�������</li>	
								<li>�����֤�������</li>
							</ul>
						</div>
					</div>
				
				<div id="side_search" class="search"> <!-- search �˻�  -->
						<input class="inp_search" type="search" placeholder="�˻�� �Է����ּ���.">
						<a href="#"><i class="fas fa-search"></i></a>
				</div>
				
				<div class="icons">	<!-- ������ ��� -->
					<div class="location_set">	<!-- ����� ��� -->
						<a href="#"><i class="fas fa-map-marker-alt"></i></a>
					</div>
					<div class="pick_set">	<!-- ���� ��ǰ���� -->
						<a href="#"><i class="far fa-heart"></i></a>
					</div>
					<div class="cart_set">	<!-- ��ٱ��� -->
						<a href="#"><i class="fas fa-shopping-cart"></i></a>
					</div>
				</div>
			</div>	<!-- head -->
		</div>	<!-- container -->


<script>
	$(document).ready(function (){
	    $('#catagoryMenu .menu1').mouseenter(function(){
	        $('#allCate ul').css('display','block');
	        
	        $('#sul').mouseenter(function(){
	        	$('.sul').css('display','block');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.sul').mouseleave(function(){
	        		$('.sul').css('display','none');
	        	});
	        });
	        
	        $('#vegetables').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','block');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.vegetables').mouseleave(function(){
	        		$('.vegetables').css('display','none');
	        	});
	        });
	        $('#fruit').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','block');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.fruit').mouseleave(function(){
	        		$('.fruit').css('display','none');
	        	});
	        });
	        
	        $('#seafood').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','block');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.seafood').mouseleave(function(){
	        		$('.seafood').css('display','none');
	        	});
	        });
	        $('#meat').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','block');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.meat').mouseleave(function(){
	        		$('.meat').css('display','none');
	        	});
	        });
	        $('#meal').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','block');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.meal').mouseleave(function(){
	        		$('.meal').css('display','none');
	        	});
	        });
	        $('#salad').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','block');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.salad').mouseleave(function(){
	        		$('.salad').css('display','none');
	        	});
	        });
	        $('#noodle').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','block');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.noodle').mouseleave(function(){
	        		$('.noodle').css('display','none');
	        	});
	        });
	        $('#snack').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','block');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.snack').mouseleave(function(){
	        		$('.snack').css('display','none');
	        	});
	        });
	        $('#bakery').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','block');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','none');
	        	$('.bakery').mouseleave(function(){
	        		$('.bakery').css('display','none');
	        	});
	        });
	        $('#health').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','block');
	        	$('.liquor').css('display','none');
	        	$('.health').mouseleave(function(){
	        		$('.health').css('display','none');
	        	});
	        });
	        $('#liquor').mouseenter(function(){
	        	$('.sul').css('display','none');
	        	$('.vegetables').css('display','none');
	        	$('.fruit').css('display','none');
	        	$('.seafood').css('display','none');
	        	$('.meat').css('display','none');
	        	$('.meal').css('display','none');
	        	$('.salad').css('display','none');
	        	$('.noodle').css('display','none');
	        	$('.snack').css('display','none');
	        	$('.bakery').css('display','none');
	        	$('.health').css('display','none');
	        	$('.liquor').css('display','block');
	        	$('.liquor').mouseleave(function(){
	        		$('.liquor').css('display','none');
	        	});
	        });
	        
	    }); 
	    $('#allCate').mouseleave(function() {
	        $('#allCate ul').css('display','none');
	    }); 
	});
</script>






