<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기본설정</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/basicSetting.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품관리 -> 상품등록페이지 -> 기본설정페이지 (상품등록페이지에서 운영설정을 클릭하면 나타나는 페이지) -->
	<div class="wrap">
		<div class="bar">기본설정</div>
		<table align="center">
		<tbody>
		<tr>
			<td align="left">
			<div class="main-content">
			<!-- action기능 넣기 -->
			<form action="">
			<!-- hidden기능 필요하면 기능넣기! 필요없으면 삭제하기 -->
			<input type="hidden" name="mode" value="settings"/>
			<input type="hidden" name="act" value="basic"/>
			
			<div class="sub-title">| 기본설정(공통)</div>
			<table class="table table1 list_top table_line">
			<colgroup>
				<col width="165px">
				<col>
			</colgroup>
			<tbody>
			<tr>
				<th>구매설정</th>
				<td>
					<label class="lbl">
						<input type="radio" name="allowed_buyer" value="nolimit" checked/>
						제한없음
					</label>
					<label class="lbl">
						<input type="radio" name="allowed_buyer" value="member"/>
						회원만 구매가능
					</label>
				</td>
			</tr>
			
			<tr>
				<th>상품명 사용여부</th>
				<td>
					<label class="lbl">
						<input type="radio" name="use_review" value="Y" checked/>
						사용함 
					</label>
					<label class="lbl">
						<input type="radio" name="use_review" value="N"/>
						사용안함 
					</label>
				</td>
			</tr>
			
			<tr>
				<th>상품문의 사용여부</th>
				<td>
					<label class="lbl">
						<input type="radio" name="use_qna" value="Y" checked/>
						사용함 
					</label>
					<label class="lbl">
						<input type="radio" name="use_qna" value="N"/>
						사용안함 
					</label>
				</td>
			</tr>
			
			<tr>
				<th>배송비설정</th>
				<td><!-- onchange 기능 넣기 (현재 기능 없음) -->
					<select name="shippong[type]" onchange="">
					<option value="free">무료배송</option>
					<option value="deferred">착불배송</option>
					<option value="fixed">고정배송</option>
					<option value="condition" selected>조건부 무료배송</option>
					</select>
					<span id="condition_option">
						<span id="condition_frame">
						<input type="text" name="shipping[condition]" id="shipping_contion" 
								value="30000" class="input-mini input-center"/>
						원 이상 구매시 배송비 무료, 미만시
						</span>
						배송비
						<input type="text" name="shipping[price]" 
								value="3000" class="input-mini input-center"/>
						원 부과
					</span>
				</td>
			</tr>
			</tbody>
			</table>
			
			<div class="sub-title" style="margin-top: 20px;">| 적립금 사용 설정</div>
			<table class="table table1 list_top table_line">
			<colgroup>
				<col width="165px">
				<col>
			</colgroup>
			<tbody>
			<tr>
				<th>적립금 사용</th>
				<td>
					<label class="lbl">
						<input type="radio" name="mileage[use]" value="yes" checked/>
						사용함
					</label>
					<label class="lbl">
						<input type="radio" name="mileage[use]" value="no"/>
						사용안함
					</label>
				</td>
			</tr>
			<tr>
				<th>사용가능 보유 적립금</th>
				<td>
					<input type="text" name="mileage[usable_mileage]" value="1000"
							class="input-mini input-center" style="width: 60px"/>
				</td>
			</tr>
			<tr>
				<th>사용가능 주문 금액</th>
				<td>
					<input type="text" name="mileage[order_price]" value="1000"
							class="input-mini input-center" placeholder="0" style="width: 60px"/>
				</td>
			</tr>
			<tr>
				<th>최소 사용 적립금</th>
				<td>
					<label class="lbl">
						<input type="text" name="mileage[min]" value="1000"
							class="input-mini input-center" placeholder="0" style="width: 60px"/>
							원 이상부터 사용가능
					</label>
				</td>
			</tr>
			<tr>
				<th>최대 사용 적립금</th>
				<td>
					<div>
					<label>
						<input type="radio" name="maileage[limit]" value="unlimited" checked/>
						<span class="lbl">제한없음</span>
					</label>
					</div>
					<div>
					<label>
						<input type="radio" name="maileage[limit]" value="fixed"/>
						<span>최대</span>
					</label>
					<input type="text" name="maileage[limit]" value="2000" 
							class="input-mini input-center" placeholder="0" style="width: 80px"/>
					원 까지 사용가능
					</div>
					<div>
					<label>
						<input type="radio" name="maileage[limit]" value="rare" checked/>
					</label>
					<select name="mileage[calc]" style="width: 120px">
						<option value="order_price">상품금액</option>
					</select>
					의
					<input type="text" name="mileage[rate]" value="90" 
							class="input-mini input-center" placeholder="0"/>
					% 까지 사용가능
					</div>
				</td>
			</tr>
			</tbody>
			</table>
			
			<div class="sub-title" style="margin-top: 20px;">| 적립금 지급 설정</div>
			<table class="table table1 list_top table_line">
			<colgroup>
				<col width="165px">
				<col>
			</colgroup>
			<tbody>
			<tr>
				<th>회원가입</th>
				<td>
					<label class="lbl">
						<input type="radio" name="mileage[join_use]" value="yes" checked/>
						지급함
					</label>
					<label class="lbl">
						<input type="radio" name="mileage[join_use]" value="no"/>
						지급안함
					</label>
					<input type="text" name="mileage[join_mileage]" value="1000"
							class="input-mini input-center" placeholder="0"/>
					<div>
						<span class="helper"><b>> </b> 회원가입시 지급할 적립금입니다.</span>
					</div>
				</td>
			</tr>
			<tr>
				<th>로그인</th>
				<td>
					<label class="lbl">
						<input type="radio" name="mileage[login_use]" value="yes" checked/>
						지급함
					</label>
					<label class="lbl">
						<input type="radio" name="mileage[login_use]" value="no"/>
						지급안함
					</label>
					<input type="text" name="mileage[login_mileage]" value="10"
							class="input-mini input-center" placeholder="0"/>
					<div>
						<span class="helper"><b>> </b> 하루 한번 로그인시 지급할 적립금입니다.</span>
					</div>
				</td>
			</tr>
			<tr>
				<th>지급 정책</th>
				<td>
				<div>
					<label>
						<input type="radio" name="mileage[give_type]" value="rate" checked/>
					</label>
					판매가의
					<input type="text" name="mileage[give_rate]" value="2"
						class="input-mini input-center" placeholder="0"/>
					%를 구매확정 시 지금
				</div>
				<div>
					<label>
						<input type="radio" name="mileage[give_type]" value="fixed" checked/>
						상품당
					</label>
					<input type="text" name="mileage[give_fixed]" value="200"
						class="input-mini input-center" placeholder="0"/>
					원을 구매확정 시 지급
				</div>	
				<span class="helper"><b>> </b>상품등록시 기본으로 표시될 적립금정책입니다. 상품별로 변경할 수 있습니다.</span>
				</td>
			</tr>
			<tr>
				<th>지급 제한</th>
				<td>
				<div>
					<label>
						<input type="radio" name="mileage[give_limit]" value="none" checked/>
						제한 없음
					</label>
				</div>
				<div>
					<label>
						<input type="radio" name="mileage[give_limit]" value="unused"/>
						<span>상품 주문시 적립금을 사용하면 상품적립금을 지급하지 않음</span>
					</label>
				</div>
				</td>
			</tr>
			</tbody>
			</table>
			
			<div class="sub-title" style="margin-top: 20px;">| 웹설정</div>
			<table class="table table1 list_top table_line">
			<colgroup>
			<col width="165px">
			<col>
			</colgroup>
			<tbody>
			<tr>
				<th>출력상품수</th>
				<td><!-- 필요한 hidden 속성 설정하기 -->
					<input type="hidden" name="list[style]" value="gallery"/>
					<select name="list[limit]">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15" selected>15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					</select>
					개
				</td>
			</tr>
			<tr>
				<th>메인이미지</th>
				<td>
					<input type="text" name="image[main][width]" value="294"
							class="input-mini input-center" placeholder="0"/>
					Pixel<b> x</b>
					<input type="text" name="image[main][height]" value="490"
							class="input-mini input-center" placeholder="0"/>	
					Pixel	
				</td>
			</tr>
			<tr>
				<th>목록이미지</th>
				<td>
					<input type="text" name="image_size[list][width]" value="302"
							class="input-mini input-center" placeholder="0"/>
					Pixel<b> x</b>
					<input type="text" name="image_size[list][height]" value="340"
							class="input-mini input-center" placeholder="0"/>	
					Pixel	
				</td>
			</tr>
			<tr>
				<th>상세이미지</th>
				<td>
					<input type="text" name="image_size[detail][width]" value="350"
							class="input-mini input-center" placeholder="0"/>
					Pixel<b> x</b>
					<input type="text" name="image_size[detail][height]" value="350"
							class="input-mini input-center" placeholder="0"/>	
					Pixel	
				</td>
			</tr>
			</tbody>
			</table>
			
			<div class="sub-title" style="margin-top: 20px;">| 모바일설정</div>
			<table class="table table1 list_top table_line">
			<colgroup>
			<col width="165px">
			<col>
			</colgroup>
			<tbody>
			<tr>
				<th>출력상품수</th>
				<td>
					<select name="list[limit_mobile]">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10" selected>10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					</select>
					개
				</td>
			</tr>
			<tr>
				<th>목록이미지(모바일)</th>
				<td>
					<input type="text" name="image_size[list_mobile][width]" value="163"
							class="input-mini input-center" placeholder="0"/>
					Pixel<b> x</b>
					<input type="text" name="image_size[list_mobile][height]" value="163"
							class="input-mini input-center" placeholder="0"/>	
					Pixel	
				</td>
			</tr>
			<tr>
				<th>상세이미지</th>
				<td>
					<input type="text" name="image_size[detail_mobile][width]" value="230"
							class="input-mini input-center" placeholder="0"/>
					Pixel<b> x</b>
					<input type="text" name="image_size[detail_mobile][height]" value="230"
							class="input-mini input-center" placeholder="0"/>	
					Pixel	
				</td>
			</tr>
			</tbody>
			</table>
			</form>
				
			<div class="btn-box" style="margin-top: 10px">
				<!-- onclick 기능 넣기 현재 기능 없음 -->
				<button class="btn btn-lg btn-blue" onclick="">저장</button>
			</div>	
			
			</div>
			</td>
		</tr>
		</tbody>
		</table>
	</div>
	
	
	
</body>
</html>