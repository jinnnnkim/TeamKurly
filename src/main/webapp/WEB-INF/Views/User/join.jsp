<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe to You :: 내일의 장보기, 레시피투유</title>
<link href="/recipetoyou/Resources/User/Css/join.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>
<body>
	<div class="main">
		<div class="content">
			<h2 class="join">회원가입</h2>
			<!-- head -->
			<table class="myInfoMain">
				<tr>
					<th>아이디<strong>*</strong></th>
					<td><input type="text" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
						<a href="" onclick="">중복확인</a></td>
				</tr>
				<tr>
					<th>비밀번호<strong>*</strong></th>
					<td><input type="text" placeholder="비밀번호를 입력해주세요."></td>
				</tr>
				<tr>
					<th>비밀번호 확인<strong>*</strong></th>
					<td><input type="text" placeholder="비밀번호를 한번 더 입력해주세요.">
					</td>
				</tr>
				<tr>
					<th>이름<strong>*</strong></th>
					<td><input type="text" placeholder="이름을 입력해주세요"></td>
				</tr>
				<tr class="email">
					<th>이메일<strong>*</strong></th>
					<td><input type="text" placeholder="예:exam@gmail.com">
						<a href="" onclick="">중복확인</a></td>
				</tr>
				<tr class="phone">
					<th>휴대폰<strong>*</strong></th>
					<td><input type="text" placeholder="숫자만 입력해주세요"> <a
						href="" onclick="">인증번호 받기</a></td>
				</tr>
				<tr class="address">
					<th>주소<strong>*</strong></th>
					<td><a href="" onclick=""><i class="fas fa-search"></i>주소검색</a><br />
						<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><label> <input type="radio" name="gender">남자
					</label> <label> <input type="radio" name="gender">여자
					</label> <label> <input type="radio" name="gender">선택안함
					</label></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<div class="birth">
							<input type="text" placeholder="YYYY">/ <input
								type="text" placeholder="MM">/ <input type="text"
								placeholder="DD">
						</div>
					</td>
				</tr>
				<tr>
					<th>추가입력 사항</th>
					<td class="added"><label> <input class="recom"
							type="radio" name="event">추천인 아이디
					</label> <label> <input class="event" type="radio" name="event">참여
							이벤트명
					</label>
						<div class="recommend">
							<input type="text" placeholder="추천인 아이디를 입력해주세요." /> <br /> <span>
								추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.<br /> 가입 이후, 수정이 불가합니다.<br />
								대소문자 및 띄어쓰기에 유의해주세요.
							</span>
						</div>
						<div class="eventName">
							<input type="text" placeholder="참여 이벤트명을 입력해주세요." /> <br /> <span>
								추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.<br /> 가입 이후, 수정이 불가합니다.<br />
								대소문자 및 띄어쓰기에 유의해주세요.
							</span>
						</div></td>
				</tr>
				<tr>
					<th>이용약관 동의<strong>*</strong></th>
					<td><input type="checkbox" /> <span>전체 동의합니다.</span><br /> <span>선택항목에
							동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</span></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="checkbox"> <span>이용약관 동의</span> <span
						class="select">(필수)</span> <a href="#none">약관보기</a></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="checkbox"> <span>개인정보 수집ㆍ동의</span> <span
						class="select">(필수)</span> <a href="#none">약관보기</a></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="checkbox"> <span>개인정보 수집ㆍ동의</span> <span
						class="select">(선택)</span> <a href="#none">약관보기</a></td>
				</tr>
				<tr class="smsEmail">
					<th></th>
					<td><input type="checkbox" name="sms"> <span>SMS</span>
						<input type="checkbox" name="email"> <span>이메일</span></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="checkbox" /> <span>본인은 만 14세 이상입니다. <span
							class="select">(필수)</span>
					</span></td>
				</tr>
			</table>
			<div class="form_footer">
				<button type="submit">가입하기</button>
			</div>
		</div>
	</div>
	<script>
	$(function(){
		$(".added .recom").click(function(){
			$('.recommend').css('display','block');
			$('.eventName').css('display','none');
		});
		$(".added .event").click(function(){
			$('.eventName').css('display','block');
			$('.recommend').css('display','none');
		});
	});
</script>
</body>
</html>