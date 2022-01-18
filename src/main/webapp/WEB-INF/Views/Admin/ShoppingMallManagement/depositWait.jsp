<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>주문목록-입금대기</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/orderManagement.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 쇼핑몰관리 -> 주문관리 -> 입금대기페이지 -->
	<div class="wrap">
		<div class="bar">주문목록</div>
		<table align="center">
			<tbody>
			<tr>
			<td align="left">
				<div class="main-content">
				<!-- form기능이 필요하다면 설정하기/ action기능 넣기 -->
				<form id="ShopOrderList" method="get" action="">
				<table class="table table1 table_line">
					<colgroup>
					<col width="120px">
					<col>
					<col width="120px">
					<col>
					</colgroup>
					<tbody>
					<tr>
						<th>주문일자</th>
						<td colspan="3" style="text-align: left;"><input type="date"/> ~ <input type="date" /></td>
					</tr>
					<tr>
						<th>주문상태</th>
						<td colspan="3" style="text-align: left;">
							<label class="lbl">
							<input type="checkbox" name="status[]" value="ready" checked/>임금대기
							</label>
							<label class="lbl">
							<input type="checkbox" name="status[]" value="payed"/>결제완료
							</label>
							<label class="lbl">
							<input type="checkbox" name="status[]" value="prepare"/>발송준비중
							</label>
							<label class="lbl">
							<input type="checkbox" name="status[]" value="delivery"/>배송중
							</label>
							<label class="lbl">
							<input type="checkbox" name="status[]" value="complete"/>배송완료
							</label>
							<label class="lbl">
							<input type="checkbox" name="status[]" value="cancel"/>주문취소
							</label>
						</td>
					</tr>
					<tr>
						<th>검색어</th>
						<td colspan="3" style="text-align: left;">
							<select name="sf">
								<option value="order_code">주문번호</option>
								<option value="buyer_name">구매자명</option>
							</select>
							<input type="text" name="sw" style="width: 400px"/>
						</td>
					</tr>
					</tbody>
				</table>
				<div class="btn-box">
					<button type="submit" class="btn btn-sm btn-blue">검색</button>
					<button type="button" class="btn btn-sm" onclick="document.location.href='fullOrderList.jsp'">주문내역</button>
				</div>
				</form>
				
				<div class="list-tools">
					<div class="list-action">
						<!-- 버튼클리시 나타나는 기능 -> 각각버튼에 onclick기능 넣기 -->
						<button id="selectRemove" class="btn btn-red" onclick="">선택삭제</button>
						<button class="btn btn-green" onclick="">주문내역다운로드</button>
						<button class="btn btn-li_gray" onclick="">다운로드 항목 설정</button>
						<button id="del_info_upload" class="btn btn-Li_blue" onclick="">배송정보 업로드</button>
					</div>
					<div class="summary">
						검색된 주문
						<span class="f-bold f-red f-num">7</span>
						건
						<span>|</span>
						총 주문
						<span class="f-bold f-num">13</span>
						건
					</div>
				</div>
				<table class="table table1 list_top table_line table-center">
					<colgroup>
					<col width="50px">
					<col width="100px">
					<col>
					<col width="140px">
					<col width="110px">
					<col width="140px">
					</colgroup>
					<thead>
					<tr><!-- onclick기능 넣기 선택시 모든 체크박스 선택되는 기능 넣기 -->
						<th><input id="checkboxAllChoice" type="checkbox" onclick=""/></th>
						<th>구매자</th>
						<th>주문정보</th>
						<th>결제금액</th>
						<th>결제방식</th>
						<th>상태</th>
					</tr>
					</thead>
					<tbody>
					<tr>	<!-- 필요시 value값 적절히 수정하기 -->
						<td>
							<input class="chChoice" type="checkbox" value="44"/>
						</td>
						<td>
							랭크업
							<div class="blue">rankup</div>
						</td>
						<td style="text-align: left; padding: 10px;">
							<div>
							<a href="orderInfoDetail.jsp">
								생밤1kg/3kg/5kg
								<span class="helper" title="주문번호">[RANKUP 1550814486]</span>
							</a>
							</div>
							<div class="hline">
								<span class="f-small f-gray" >주문일시 : 2021-01-12 14:48</span>
							</div>
						</td>
						<td>
							32,500원
							<div class="f-small f-gray" style="margin: 5px 0px">배송비 : 2,500원</div>
						</td>
						<td>무통장입금</td>
						<td><!-- 적절한 id값으로 수정하기 -->
							<select id="status_44">
								<option value="ready" selected>입금대기</option>
								<option value="payed">결제완료</option>
								<option value="prepare">발송준비중</option>
								<option value="delivery">배송중</option>
								<option value="complete">배송완료</option>
								<option value="cancel">주문취소</option>
							</select>
							<!-- onclick기능 넣기 -->
							<button class="btn btn-xs" onclick="">변경</button>
						</td>
					</tr>
					
						<tr>	<!-- 필요시 value값 적절히 수정하기 -->
						<td>
							<input class="chChoice" type="checkbox" value="44"/>
						</td>
						<td>
							랭크업
							<div class="blue">rankup</div>
						</td>
						<td style="text-align: left; padding: 10px;">
							<div>
							<a href="orderInfoDetail.jsp">
								체중계
								<span class="helper" title="주문번호">[RANKUP 1550814447]</span>
							</a>
							</div>
							<div class="hline">
								<span class="f-small f-gray" >주문일시 : 2021-01-12 14:47</span>
							</div>
						</td>
						<td>
							22,320원
							<div class="f-small f-gray" style="margin: 5px 0px">배송비 : 3,000원</div>
						</td>
						<td>
							<span class="lable label-xs lable-blue">모바일</span>
							<br/>
							무통장입금
						</td>
						<td><!-- 적절한 id값으로 수정하기 -->
							<select id="status_44">
								<option value="ready" selected>입금대기</option>
								<option value="payed">결제완료</option>
								<option value="prepare">발송준비중</option>
								<option value="delivery">배송중</option>
								<option value="complete">배송완료</option>
								<option value="cancel">주문취소</option>
							</select>
							<!-- onclick기능 넣기 -->
							<button class="btn btn-xs" onclick="">변경</button>
						</td>
					</tr>
					
					<tr>	<!-- 필요시 value값 적절히 수정하기 -->
						<td>
							<input class="chChoice" type="checkbox" value="44"/>
						</td>
						<td>
							랭크업
							<div class="blue">비회원</div>
						</td>
						<td style="text-align: left; padding: 10px;">
							<div>
							<a href="orderInfoDetail.jsp">
								여성의류전문샵외 2건
								<span class="helper" title="주문번호">[G615FB_1538375172]</span>
							</a>
							</div>
							<div class="hline">
								<span class="f-small f-gray" >주문일시 : 2020-11-23 15:27</span>
							</div>
						</td>
						<td>
							135,900원
							<div class="f-small f-gray" style="margin: 5px 0px">배송비 : 3,000원</div>
						</td>
						<td>무통장입금</td>
						<td><!-- 적절한 id값으로 수정하기 -->
							<select id="status_44">
								<option value="ready" selected>입금대기</option>
								<option value="payed">결제완료</option>
								<option value="prepare">발송준비중</option>
								<option value="delivery">배송중</option>
								<option value="complete">배송완료</option>
								<option value="cancel">주문취소</option>
							</select>
							<!-- onclick기능 넣기 -->
							<button class="btn btn-xs" onclick="">변경</button>
						</td>
					</tr>
					
					<tr>	<!-- 필요시 value값 적절히 수정하기 -->
						<td>
							<input class="chChoice" type="checkbox" value="56"/>
						</td>
						<td>
							랭크업
							<div class="blue">rankup</div>
						</td>
						<td style="text-align: left; padding: 10px;">
							<div>
							<a href="orderInfoDetail.jsp">
								아이섀도우
								<span class="helper" title="주문번호">[RANKUP_1522637786]</span>
							</a>
							</div>
							<div class="hline">
								<span class="f-small f-gray" >주문일시 : 2020-11-23 11:56</span>
							</div>
						</td>
						<td>
							25,000원
							<div class="f-small f-gray" style="margin: 5px 0px">배송비 : 3,000원</div>
						</td>
						<td>무통장입금</td>
						<td><!-- 적절한 id값으로 수정하기 -->
							<select id="status_44">
								<option value="ready" selected>입금대기</option>
								<option value="payed">결제완료</option>
								<option value="prepare">발송준비중</option>
								<option value="delivery">배송중</option>
								<option value="complete">배송완료</option>
								<option value="cancel">주문취소</option>
							</select>
							<!-- onclick기능 넣기 -->
							<button class="btn btn-xs" onclick="">변경</button>
						</td>
					</tr>
					
					</tbody>
				</table>
				
				<div id="paging">
					<ul>
						<li> <%-- href: 처음페이지로 이동해야 됨 --%>
							<a href="#">	
								<img alt="처음" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_pprev.png" width="10" height="10">
							</a>
						</li>
						<li><%-- href: 이전페이지로 이동해야 됨 --%>
							<a href="">	
								<img alt="이전" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_prev.png" width="10" height="10">
							</a>
						</li>
						<li class="num">
							<a href="" class="on">1</a>
						</li>
						<li><%-- href: 다음페이지로 이동해야 됨 --%>
							<a href="">
								<img alt="다음" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_next.png" width="10" height="10">
							</a>
						</li>
						<li><%-- href: 마지막페이지로 이동해야 됨 --%>
							<a href="">
								<img alt="마지막" src="../../../Resources/Admin/Img/ShoppingMallManagement/page_nnext.png" width="10" height="10">
							</a>
						</li>
					</ul>
				</div>
				
				<!-- 다운로드항목 설정 팝업창 -->
				<div></div>
				
				<!-- 배송정보 업로드 팝업창 -->
				<div id="csv_upload_fram" class="div_style2 table_line">
				<div class="sub_title">| 송장번호 업로드</div>
					<!-- 필요한 기능 넣기 -->
					<form name="RUFrmCsvUpload" id="RUFrmCsvUpload" action="">
						<!-- hidden 속성 사용하는 기능 필요하면 적용하기  -->
						<input type="hidden" name="mode" value="csv_file_upload"/>
						<table class="table table1 table-bordered">
						<colgroup>
						<col width="150">
						<col width="*">
						</colgroup>
						<tbody>
						<tr>
							<th style="height: 80px;">송장번호 업로드</th>
							<td>
							<div class="file_div">
								<div class="csv-file">
								<span id="view_file_name" style="padding-left: 5px">
								송장번호가 입력된 CSV 파일을 선택해 주세요.
								</span>
								<label class="lable pull-right lable-sm">선택</label>
								
								
								</div>
								<!-- onchange기능 넣기 -->
								<input type="file" name="csv_file" id="csv_file" class="file_hidden" onchange=""/>
							</div>
							</td>
						</tr>
						<tr>
							<th>택배사</th>
							<td>
								<select name="couriers" id="couriers" style="width: 200px">
								<option value="cjgls">CJGLS</option>
								<option value="kgb">로젠택배</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>주문상태</th>
							<td >
								<select name="order_status" id="order_status" style="width: 200px">
								<option value="delivery">배송중</option>
								<option value="complete">배송완료</option>
								</select>
							</td>
						</tr>
						</tbody>
						</table>
					</form>
					<div class="popup_div_style">
						<!-- 버튼기능 각각 넣기  -->
						<button class="btn btn-lg btn-green" id="csv_up_save">등록하기</button>
						<button class="btn btn-lg" id="csv_up_close">닫기</button>
					</div>
					<div class="tip" style="height: 20px; margin-top: 15px;">
						<b>! </b>주문내역을 다운로드한후 송장번호를 변경하여 업로드 하시기 바랍니다.
					</div>
					<div class="tip" style="height: 20px">
						<b>! </b>배송일, 배송완료(주문상태 배송완료일경우)일 필드를 입력할 경우 입력된 정보로 적용됩니다.
					</div>
				</div>
				
				
				</div>
			</td>
			</tr>
			</tbody>
		</table>
	</div>	
	
	
	
	
	<script type="text/javascript">
	
		//체크박스 전체선택기능
		$(function () {
			$('#checkboxAllChoice').click(function () {
				var checked = $('#checkboxAllChoice').is(':checked');
				
				if(checked)
					$('input.chChoice:checkbox').prop('checked',true);
				else 
					$('input.chChoice:checkbox').prop('checked',false);
			});
		});
	
		$(document).ready( function() {
			// 배송정보업로드 버튼 클릭시 화면에 타나나기
			$('#del_info_upload').click(function() {
				$('#csv_upload_fram').show();
			});
			
			//배송정보업로드 팝업창에서 닫기 버튼 클릭시 화면 사라지기
			$('#csv_up_close').click(function() {
				$('#csv_upload_fram').hide();
			});
			
			//선택삭제버튼 클릭시 나타나는 alert창
			$('#selectRemove').click(function(){
				alert('삭제할 주문서를 선택하세요.');
			});
			
		});
	
	
	
	</script>
		
</body>
</html>