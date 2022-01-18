<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세정보</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/orderInfoDetail.css">
	<script type="text/javascript" src="../../../Resources/Admin/Js/ShoppingMallManagement/orderInfoDetail.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 쇼핑몰관리 -> 주문관리의 모든페이지 -> 주문상세정보페이지(주문관리의 모든페이지에서 제품명 클릭시 이동하는 페이지) -->
	<div class="wrap">
		<div class="bar">주문상세정보</div>
		<table align="center">
			<tbody>
			<tr>
			<td align="left">
				<div class="main-content">
				<div class="sub-title">| 주문상품</div>
				<table class="table table1 list_top table-center table_line">
					<colgroup>
					<col width="140px">
					<col>
					<col width="115px">
					<col width="115px">
					</colgroup>
					<thead>
					<tr>
						<th></th>
						<th>상품/옵션정보</th>
						<th>수량</th>
						<th>금액</th>	
					</tr>
					</thead>
					<tbody>
					<tr>
						<td rowspan="2" class="img_style">
						<img src="../../../Resources/Admin/Img/ShoppingMallManagement/woodBed.jpg" style="width: 120px; height: 120px;">
						</td>
						<td colspan="3" class="table_inner_height">
						우드프레임 원목침대 (매트리스별도)
						</td>
					</tr>
					<tr>
						<td style="text-align: left;">
						<div class="table_inner_height">옵션 : 본품 / 19,000원</div>
						<div>
							<p>[ 추가구성 총 1가지 / 합계금액 " 11,000원 "]</p>
							<p> * 옵션선택/생밤3kg : 11,000원 - 1개 </p>
						</div>
						</td>
						<td align="center">1개</td>
						<td align="center">
							<p><span>30,000</span>원</p>
						</td>
					</tr>
					</tbody>
				</table>
				
				<table class="table table1 table_line" style="margin-top: 5px;">
				<colgroup>
				<col>
				</colgroup>
				<tbody>
					<tr>
					<td style="line-height: 40px; text-align: right;">
					30,000 (상품구입비) + 2,500 (배송비) = 
					<span class="span_style">32,500</span>
					(총 결제금액)
					</td>
					</tr>
				</tbody>
				</table>
				
				<!-- form 기능 넣기 -->
				<form id="RADShopOrderViewFrm" action="">
					<!-- hidden기능 필요시 기능 넣고 사용하기 없다면 삭제해도 됨. -->
					<input type="hidden" name="mode" value="order"/>
					<input type="hidden" name="act" value="modify"/>
					<input type="hidden" name="order_no" value="59"/>
					<input type="hidden" name="delivery_company_name" value/>
					<div class="sub-title" style="margin-top: 28px;">| 결제 및 배송정보</div>
					<table class="table table1 list_top table_line">
					<colgroup>
					<col width="140px">
					<col>
					</colgroup>
					<tbody>
					<tr>
						<th>거래상태</th>
						<td>
							<label class="lbl">
							<input type="radio" name="order_status" value="ready" checked/>
							입금대기
							</label>
							<label class="lbl">
							<input type="radio" name="order_status" value="payed" />
							결제완료
							</label>
							<label class="lbl">
							<input type="radio" name="order_status" value="prepare" />
							발송분비중
							</label>
							<label class="lbl">
							<input type="radio" name="order_status" value="delivery" />
							배송중
							</label>
							<label class="lbl">
							<input type="radio" name="order_status" value="complete" />
							배송완료
							</label>
							<input type="radio" name="order_status" value="cancel" />
							주문취소
							</label>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="padding: 10px">
						<table class="table table1 table-center table-bordered">
						<colgroup>
						<col width="140px">
						<col>
						</colgroup>
						<thead>
						<tr>
							<th>작성일</th>
							<th>진행내역</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td colspan="2" height="50">진행내역이 없습니다.</td>
						</tr>
						</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<th>결제위치</th>
						<td><span>웹</span></td>
					</tr>
					<tr>
						<th>결제방식</th>
						<td> 무통장입금 (국민은행 123-123-12345 홍길동 | 입금자명 : 랭크업)</td>
					</tr>
					<tr>
						<th>현금영수증</th>
						<td>
							<div>발급여부 : 발급</div>
							<div> 발급방법 : 소득공제용, 핸드폰(010-123-1234)</div>
						</td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>2,500 원</td>
					</tr>
					<tr>
						<th>택배사 선택</th>
						<td><!-- onchange 기능 넣기 -->
							<select name="delivery_company" id="delivery_company" onchange="">
							<option>::택배사::</option>
							<!-- 관리자 페이지의 택배사 설정페이지에 택배서 설정한 값만 나올 수 있게 설정해야 됨. -->
							<option value="cjgls">CJGLS</option>
							<option value="kgb">로젠택배</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>송장번호</th>
						<td><!-- <input>기능 넣기 -->
							<input type="text" name="delivery_code" style="width: 300px"/>
						</td>
					</tr>
					<tr>
						<th>택재발송일</th>
						<td><!-- <input>기능 넣기 -->
							<input type="date" name="date_delivery" value="0000-00-00" class="datepicker hasDatepicker" id=""/>
							<!-- onclick(메일보내는 기능)기능 넣기 -->
							<button type="button" class="btn btn-xs btn-green" style="vertical-align: 1px" onclick="">발송안내메일 보내기</button>
						</td>
					</tr>
					</tbody>
					</table>
					
					<div class="sub-title" style="margin-top: 28px">| 주문자정보</div>
					<table class="table table1 list_top table_line">
					<colgroup>
					<col width="140px">
					<col>
					<col width="140px">
					<col>
					</colgroup>
					<tbody>
						<tr>
							<th>이름</th>
							<td><input type="text" name="buyer_name" value="랭크업"/></td>
							<th>이메일</th>								<!-- 적적할 value값 다시 넣기  -->
							<td><input type="text" name="buyer_email" value="xxx@naver.com" style="width: 95%"/></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td >
								<input type="text" name="buyer_phone[0]" value="000" style="width: 40px"/> -
								<input type="text" name="buyer_phone[1]" value="0000" style="width: 40px"/> -
								<input type="text" name="buyer_phone[2]" value="0000" style="width: 40px"/>
							</td>
							<th>휴대폰번호</th>
							<td >
								<input type="text" name="buyer_mobile[0]" value="000" style="width: 40px"/> -
								<input type="text" name="buyer_mobile[1]" value="0000" style="width: 40px"/> -
								<input type="text" name="buyer_mobile[2]" value="0000" style="width: 40px"/>
							</td>
						</tr>
					</tbody>
					</table>
					
					
					
					<div class="sub-title" style="margin-top: 28px">| 수령자정보</div>
					<table class="table table1 list_top table_line">
					<colgroup>
					<col width="140px">
					<col>
					<col width="140px">
					<col>
					</colgroup>
					<tbody>
					
					
					<tr>
						<th>이름</th>
						<td colspan="3"><input type="text" name="receiver_name" value="랭크업"/></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="text" name="receiver_phone[0]" value="000" style="width: 40px"/> -
							<input type="text" name="receiver_phone[1]" value="0000" style="width: 40px"/> -
							<input type="text" name="receiver_phone[2]" value="0000" style="width: 40px"/>
						</td>
						<th>휴대폰번호</th>
						<td>
							<input type="text" name="receiver_mobile[0]" value="000" style="width: 40px"/> -
							<input type="text" name="receiver_mobile[1]" value="0000" style="width: 40px"/> -
							<input type="text" name="receiver_mobile[2]" value="0000" style="width: 40px"/>
						</td>
					</tr>
					
					
					<tr>
					<th>주소</th>
					<td colspan="3">
						<div style="margin: 5px 0px">
							<input type="text" name="receiver_zipcode" value="501-713" style="width: 70px"/>
						</div>
						<div>
							<input type="text" name="receiver_address" value="광주 동구 금남로5가 남선빌딩" style="width: 98%"/>
						</div>
						<div style="margin: 5px 0px">
							<input type="text" name="receiver_address_detail" value="509호" style="width: 98%"/>
						</div>
						</td>
					</tr>
					
					<tr>
					<th>배송요청사항</th>
						<td colspan="3">
							<input type="text" name="receiver_memo" style="width: 98%"/>
						</td>
					</tr>	
					</tbody>
					</table>
				</form>
				<div class="btn-box">
					<!-- 버튼클릭시 나타나는 기능 넣기 - onclick기능 -->
					<button id="updateSave" class="btn btn-lg btn-red" onclick="">저장</button>
					<!-- 클릭시 전체주문목록페이지로 이동함 -->
					<button class="btn btn-lg"  onclick="document.location.href='fullOrderList.jsp'">목록</button>
				</div>
				
				</div>
				
			</td>
			</tr>
			
			</tbody>
		</table>
	</div>	
	
	<script type="text/javascript">
		// 저장버튼 클릭시 나타나는 alert창 
		$(document).ready(function() {
			$('#updateSave').click(function(){
				alert('변경사항을 저장하시겠습니까?');
			});
		});
	
	</script>
	
	
</body>
</html>