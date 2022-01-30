<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<form name="frmJoin" method="post">
	<div class="main">
		<div class="content">
			<h2 class="join">회원가입</h2>
			<!-- head -->
			<table class="myInfoMain">
				<tr>
					<th>아이디<strong>*</strong></th>
					<td><input id="userID" type="text" name="user_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" >
						<input id="userIDChk" type="hidden" value="N"/>
						<button type="button" id="idCheck" onclick="idChk()">중복확인</button>
						</td><!-- /join/idChk.do -->
				</tr>
				<tr>
					<th>비밀번호<strong>*</strong></th>
					<td><input type="text" name="user_pw" placeholder="비밀번호를 입력해주세요."></td>
				</tr>
				<tr>
					<th>비밀번호 확인<strong>*</strong></th><!-- //user_pw -->
					<td><input type="text" name="user_pwChk" placeholder="비밀번호를 한번 더 입력해주세요.">
					</td>
				</tr>
				<tr>
					<th>이름<strong>*</strong></th>
					<td><input type="text" name="user_name" placeholder="이름을 입력해주세요"></td>
				</tr>
				<tr class="email">
					<th>이메일<strong>*</strong></th>
					<td><input id="userMail" type="email" name="user_email" placeholder="예:exam@gmail.com">
					<input id="userMailChk" type="hidden" value="N"/>
						<button type="button" onclick="mailChk()">중복확인</button></td>
				</tr>
				<tr class="phone">
					<th>휴대폰<strong>*</strong></th>
					<td><input id="phone" type="text" name="user_phone" placeholder="숫자만 입력해주세요">
					 <button type="button" onclick="smsChk()">인증번호 받기</button>
					 <div class="authBox"><input id="authNum" type="text" name="phone"/>
					  <button type="button" onclick="authBtn()">인증하기</button>
					 </div>
					<input type="hidden" value="N" name="phoneAuth" id="phoneAuth">
					 </td>
				</tr>
				<tr class="address">
					<th>주소<strong>*</strong></th>
					<input type="hidden" name="user_addr" value="214241"/>
					<td><a href="" onclick=""><i class="fas fa-search" ></i>주소검색</a><br />
						<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><label> <input type="radio" name="user_gender" value="1">남자
					</label> <label> <input type="radio" name="user_gender" value="2">여자
					</label> <label> <input type="radio" name="user_gender" value="3" checked>선택안함
					</label></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<div class="birth">
							<input type="text" name="user_birth"  placeholder="YYYY/MM/DD"> 
							<!-- <input type="text" name="birth" maxlength="2" placeholder="MM">/ 
							<input type="text" name="birth" maxlength="2" placeholder="DD"> -->
						</div>
					</td>
				</tr>
				<tr>
					<th>추가입력 사항</th>
					<td class="added">
					<label><input class="recom" type="radio" >추천인 아이디</label> 
					<label><input class="event" type="radio">참여이벤트명</label>
						<div class="recommend">
							<input type="text" placeholder="추천인 아이디를 입력해주세요." name="recommendId"/> <br /> <span>
								추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.<br /> 
								가입 이후, 수정이 불가합니다.<br />
								대소문자 및 띄어쓰기에 유의해주세요.
							</span>
						</div>
						<div class="eventName">
							<input type="text" placeholder="참여 이벤트명을 입력해주세요." name="join_event"/> <br /> 
							<span>
								추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.<br /> 
								가입 이후, 수정이 불가합니다.<br />
								대소문자 및 띄어쓰기에 유의해주세요.
							</span>
						</div></td>
				</tr>
				<tr>
					<th>이용약관 동의<strong>*</strong></th>
					<td><input type="checkbox" id="checkboxAllChoice"/> 
					<span>전체 동의합니다.</span><br /> 
					<span>선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</span>
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
					<input type="checkbox" id="tearm_agree" class="chChoice"> <span>이용약관 동의</span> 
					<span class="select">(필수)</span> <a href="#none">약관보기</a>
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
					<input type="checkbox" class="chChoice" > 
					<span>개인정보 수집ㆍ동의</span> 
					<span class="select">(필수)</span> <a href="#none">약관보기</a>
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
					<input type="checkbox" id="info_agree" name="info_agree" class="chChoice"> <span>개인정보 수집ㆍ동의</span> 
					<span class="select">(선택)</span> <a href="#none">약관보기</a></td>
				</tr> 
				<tr class="smsEmail">
					<th></th>
					<td>
					<input type="checkbox" name="sms_agree" class="chChoice" > <span>SMS</span>
					<input type="checkbox" name="email_agree" class="chChoice" > <span>이메일</span>
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
					<input type="checkbox" class="chChoice" /> 
					<span>본인은 만 14세 이상입니다.</span>
					<span class="select">(필수)</span>
					</td>
				</tr>
			</table>
			<div class="form_footer">
				<button type="submit" onclick="fn_sendUser()">가입하기</button>
			</div>
		</div>
	</div>
	</form>
	
	<script type="text/javascript">
		$(function(){
			$(".added .recom").click(function(){
				$('.recommend').css('display','block');
				$('.eventName').css('display','none');
			});
			$(".added .event").click(function(){
				$('.eventName').css('display','block');
				$('.recommend').css('display','none');
			});
			
			//체크박스 전체선택기능
			$('#checkboxAllChoice').click(function () {
				var checked = $('#checkboxAllChoice').is(':checked');
				
				if(checked) {
					$('input.chChoice:checkbox').prop('checked',true);
					$('input.chChoice:checkbox').prop('value',1);
				}
				else {
					$('input.chChoice:checkbox').prop('checked',false);
					$('input.chChoice:checkbox').prop('value',0);
				}
					
			});
			
			
			//이용약관 동의 체크박스 
			$('#tearm_agree').click(function () {
				var checked = $('#tearm_agree').is(':checked');
				
				if(checked) {
					$('#tearm_agree').prop('checked',true);
					$('#tearm_agree').prop('value',1);
				}
				else {
					$('#tearm_agree').prop('checked',false);
					$('#tearm_agree').prop('value',0);
				}
			});
			
			//개인정보 수집ㆍ동의 체크박스
			$('#info_agree').click(function () {
				var checked = $('#info_agree').is(':checked');
				
				if(checked) {
					$('#info_agree').prop('checked',true);
					$('#info_agree').prop('value',1);
				}
					
				else {
					$('#info_agree').prop('checked',false);
					$('#info_agree').prop('value',0);
				}	
			});
			
			//SMS 동의 체크박스 sms_agree
			$('#sms_agree').click(function () {
				var checked = $('#sms_agree').is(':checked');
				
				if(checked) {
					$('#sms_agree').prop('checked',true);
					$('#sms_agree').prop('value',1);
				}
					
				else {
					$('#sms_agree').prop('checked',false);
					$('#sms_agree').prop('value',0);
				}	
			});
			
			//14세이상 동의 체크박스 fourteen_chk  
			$('#fourteen_chk').click(function () {
				var checked = $('#fourteen_chk').is(':checked');
				
				if(checked) {
					$('#fourteen_chk').prop('checked',true);
					$('#fourteen_chk').prop('value',1);
				}
					
				else {
					$('#fourteen_chk').prop('checked',false);
					$('#fourteen_chk').prop('value',0);
				}	
			});
			
		});
		
			
	</script>

	<script type="text/javascript">
	
		function fn_sendUser() {
			var frmJoin = document.frmJoin
				var user_id = frmJoin.user_id.value;
				var user_pw = frmJoin.user_pw.value;
				var user_pwChk = frmJoin.user_pwChk.value;
				var user_name = frmJoin.user_name.value;
				var user_email = frmJoin.user_email.value;		//입력한 값들을 얻음.
				var user_phone = frmJoin.user_phone.value;		//입력한 값들을 얻음.
				var user_addr = frmJoin.user_addr.value;
				var userIDChk = $("#userIDChk").val;
				var userMailChk = $("#userMailChk").val;
				
				var phoneAuth = frmJoin.phoneAuth.value;
				
				var empJ = /\s/g;
				//아이디 정규식
				var idJ = /^[a-z0-9]{4,12}$/;
				// 비밀번호 정규식
				var pwJ = /^[A-Za-z0-9]{4,12}$/; 
				// 이름 정규식
				var nameJ = /^[가-힣]{2,6}$/;
				// 이메일 검사 정규식
				var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				// 휴대폰 번호 정규식
				var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
				
				if(user_id.length==0 || user_id=="") {
					alert("아이디는 필수입니다.");
				}else if(userIDChk=='N'){
					alert('중복체크를 해주세요');
				}else if(!idJ.test(user_id)){
					alert('4자리 이상 영문자로 입력해주세요.');
				}else if(user_pwChk == user_pw){
					alert('비밀번호가 일치하지 않습니다.');
				}else if (phoneAuth == "N"){
					alert("핸드폰 인증을 해주세요.");
				}
				else if(user_pw.length==0 || user_pw=="") {
					alert("비밀번호는 필수입니다.")
				}
				else if(user_name.length==0 || user_name=="") {
					alert("이름은 필수입니다.")
				}else if(userMailChk=="N"){
					alert("메일중복체크를 해주세요");
				}
				else if(user_email.length==0 || user_email=="") {
					alert("이메일은 필수입니다.")
				}
				else if(user_phone.length==0 || user_phone=="") {
					alert("휴대번호는 필수입니다.")
				}
				else {
					frmJoin.method="post";										//전송 방법을 post로 지정함.
					frmJoin.action="${contextPath}/join/joinProcess.do";			//서블릿 매핑 이름 지정함.		
					frmJoin.submit();												//서블릿으로 전송함.
				}
			}
		
		
		function idChk(){
			var _userID = document.querySelector('#userID').value;
			$.ajax({
				type: "post",
				async: true,
				url: "http://localhost:8080/recipetoyou/user/idChk.do",
				dataType: "text",
				data: {user_id: _userID},
				success: function(result) {
					console.log(result);
					if (result!= 1) {
						alert("사용 가능한 아이디 입니다.");
						$('#userIDChk').attr("value", "Y");
					}else {
						alert("아이디가 이미 존재합니다.");
					}
				},
				error : function(data, textStatus) {			
					alert("에러가 발생했습니다.")	
				},
				complete : function(data, textStatus) {			
				
				}					
			 });
		}
		function mailChk(){
			var _userMail = document.querySelector('#userMail').value;
			$.ajax({
				type: "post",
				async: true,
				url: "http://localhost:8080/recipetoyou/user/mailChk.do",
				dataType: "text",
				data: {user_mail: _userMail},
				success: function(result) {
					console.log(result);
					if (result!= 1) {
						alert("사용 가능한 메일 입니다.");
						$('#userMailChk').attr("value", "Y");
					}else {
						alert("이미 해당 메일로 가입되었습니다.");
					}
				},
				error : function(data, textStatus) {			
					alert("에러가 발생했습니다.")	
				},
				complete : function(data, textStatus) {			
				
				}					
			 });
		}
		var code2 = "";
		function smsChk(){
			var phone =  document.querySelector("#phone").value;
			if(phone!="" || phone == null){
				alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
				$(".authBox").css("display","table-row"); 
				$.ajax({
					type:"GET", 
					url:"http://localhost:8080/recipetoyou/user/phoneCheck.do?phone=" + phone, 
					cache : false, 
					success:function(data){
						if(data == "error"){ 
							alert("휴대폰 번호가 올바르지 않습니다.") 
							$("#phone").attr("autofocus",true); 
						}else{ 
							code2 = data; 
						}
					} 
				});
			}else{
				alert('핸드폰 번호를 입력해주세요');
			}

		}
		function authBtn(){
			var inputAuth = document.querySelector("#authNum").value;
			if(inputAuth == code2){
				alert("인증이 완료되었습니다.");
				document.querySelector("#phoneAuth").value = "Y";
				document.querySelector("#authNum").readOnly = true;
			}else{ 
				alert("인증번호가 일치하지 않습니다.");
			} 
		}

	
	</script>
	
</body>
</html>