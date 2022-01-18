<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품문의</title>
	<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
 	<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
	<link rel="stylesheet" href="../../../Resources/Admin/Css/HomePageHeaderSide/reset.css"> 
	<link rel="stylesheet" href="../../../Resources/Admin/Css/ShoppingMallManagement/productInquiry.css">
	<!-- cdn 활용하여 ckeditor 생성 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<!-- 쇼핑몰관리 -> 상품문의 -> 상품문의 페이지 (상품문의목록 페이지페이지에서 상품에 관한 문의문장을 클릭하면 상품문의 페이지로 이동) -->
	<div class="wrap">
		<div class="bar">상품문의</div>
		<table align="center">
			<tbody>
				<tr>
					<td align="left">
						<div class="main-content">
							<div class="sub-title">| 문의상세</div>
							<table class="table table1 line_top table_line">
								<colgroup>
									<col width="120px">
									<col>
									<col width="120px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>작성자</th>
										<td>조모모</td>
										<th>작성일시</th>
										<td>2016-07-27 12:02:43</td>
									</tr>
									<tr>
										<th>연관상품</th>
										<td colspan="3">체중계</td>
									</tr>
									<tr>
										<th>문의제목</th>
										<td colspan="3">대량구매도 가능한가요?!</td>
									</tr>
									<tr>
										<th>문의내용</th>
										<td colspan="3">대량구매도 가능한가요?!</td>
									</tr>
								</tbody>
							</table>
							<div class="sub-title" style="margin-top: 20px">| 답변하기</div>
							<table class="table table1 line_top table_line">
								<colgroup>
									<col width="120px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>답변상태</th>
										<td>
											<label class="lbl">
												<!-- radio기능 넣어야 됨 -->
												<input type="radio" name="reply_status" value="wait" checked/>답변대기
											</label>
											<label class="lbl">
												<input type="radio" name="reply_status" value="done"/>답변완료
											</label>
										</td>
									</tr>
									<tr>
										<th>답변내용</th>
										<td style="padding: 5px">
										<%-- 라이브러리 받아와서 추가해야 됨 -> 추가했는데 안됨 다시 수정 필요!! --%>
											<div class="preparedPage">
												<p>준비중 페이지</p>
												<textarea name="content3" id="prepared" rows="10" cols="100" ></textarea>
												<script>
											        ClassicEditor
											            .create( document.querySelector('#prepared'))
											            .then(edit => {
											            	console.log(prepared);
											            })
											            .catch(error => {
											                console.error(error);
											            });
											    </script>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							
							<div class="btn-box">
								<!-- 답변저장버튼 클릭시 나타나는 기능 넣기!! -->
								<button class="btn btn-lg btn-blue" onclick="">답변저장</button>
								<button class="btn btn-lg" onclick="document.location.href='productInquirylist.jsp'">목록</button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>