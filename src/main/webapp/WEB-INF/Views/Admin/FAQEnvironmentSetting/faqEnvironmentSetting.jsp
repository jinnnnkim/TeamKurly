<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="../../../Resources/Admin/Css/FAQEnvironmentSetting/faqEnvironmentSetting.css">
<title>FAQ관리환경설정</title>
</head>
	<body>
		<div class= "wrap">
				<div class="BasicEnvironment">
					<form method="post" action="" name="userInfo" onsubmit="return checkValue()">
						<table class="AmountSetting"  align="center">
								<caption>| 기본환경설정</caption>
								<tr>
									<th>출력 개수 </th> 
									<td>
										<select name="chooseAmount">
														<option value>5개씩 </option>
														<option value="2">10개씩</option>
														<option value="3">15개씩</option>
														<option value="4">20개씩</option>
														<option value="5">25개씩</option>
														<option value="6">30개씩</option>
														<option value="7">35개씩</option>
														<option value="8">40개씩</option>
														<option value="9">45개씩</option>
														<option value="10">50개씩</option>
										</select>
									</td>
								</tr>
								<tr>	
									<th>검색폼 출력 </th> 
									<td>
										<input type="radio" id="printOut" name="mainVisual">출력함
										<input type="radio" id="don'tPrintOut" name="mainVisual">출력안함
									</td>
								</tr>
							</table>
					</form>
					<div class="SettingSaveButton">
						<button type="submit" id="SaveButton">저장</button>
					</div>	
				</div>
		</div>	
	</body>
</html>