<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 추가</title>
<link rel="stylesheet" href="../../../../Resources/Admin/Css/MultiboardManagement/plusboard.css">
<link rel=“stylesheet” href=“https://use.fontawesome.com/releases/v5.14.0/css/all.css”
     integrity=“sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc” crossorigin=“anonymous”>
<link href=“https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap” rel=“stylesheet”>
<link rel="stylesheet" href="../../../../Resources/Admin/Css/HomePageHeaderSide/reset.css">
<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
 
</head>
<body>
	<div class="wrap">
		<div class="plusboardTitle">
		<!-- 기본환경 설정 -->
		<div class="sub_title">
			<b>기본환경 설정</b>
			<table class="plusboard">
				<tr>
					<td class="col">게시판 아이디</td>
					<td>
						<input type="text" class="require">
						<input type="button" value="중복체크" id="#">
					</td>
				</tr>
				
				<tr>
					<td class="col">게시판 이름</td>
					<td>
						<input type="text" class="require">
						<p class="lgText">+ 게시판 상단에 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">게시판 스킨</td>
					<td class="skin_list">
						<select>
							<optgroup class="modern" label="modern"></optgroup>
								<option value="modern/gray">modern_gray</option>
								<option value="modern/blue">modern_blue</option>
								<option value="modern/green">modern_green</option>	
								<option value="modern/pink">modern_pink</option>
								<option value="modern/orange">modern_orange</option>
							<optgroup class="simple" label="simple"></optgroup>
								<option value="simple/gray">simple_gray</option>
								<option value="simple/blue">simple_blue</option>
								<option value="simple/green">simple_green</option>
								<option value="simple/pink">simple_pink</option>
								<option value="simple/orange">simple_orange</option>
							<optgroup class="basic" label="basic"></optgroup>
								<option value="basic/gray">basic_gray</option>
								<option value="basic/blue">basic_blue</option>
								<option value="basic/green">basic_green</option>
								<option value="basic/pink">basic_pink</option>
								<option value="basic/orange">basic_orange</option>
							<optgroup class="pure" label="pure"></optgroup>
								<option value="pure/gray">pure_gray</option>
								<option value="pure/blue">pure_blue</option>
								<option value="pure/green">pure_green</option>
								<option value="pure/pink">pure_pink</option>
								<option value="pure/orange">pure_orange</option>
							<optgroup class="color" label="color"></optgroup>
								<option value="color/basic">color_basic</option>
						</select>
						<input type="button" value="미리보기" id="#">
						<p class="lgText">+ 게시판 기본 테마</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">게시판 형태</td>
					<td>
						<input type="radio" name="boardform" id="listform" value="list">
						<label for="listform">리스트 형태</label>
						<input type="radio" name="boardform" id="galleryform" value="gallery">
						<label for="galleryform">갤러리 형태</label>
						<input type="radio" name="boardform" id="webzineform" value="webzine">
						<label for="webzineform">웹진 형태</label>
						<input type="radio" name="boardform" id="otoform" value="onetoone">
						<label for="otoform">1:1 형태</label>
						<input type="button" value="미리보기" id="#">
					</td>
				</tr>
				
				<tr>
					<td class="col">게시판 가로크기</td>
					<td>
						<input type="text" name="boradwidth">픽셀
					</td>
				</tr>
				
				<tr>
					<td class="col">목록 제목글자 제한</td>
					<td>
						<input type="text" name="bytes">Byte,
						<input type="checkbox" name="letter_reduce" checked>
						<label for="letter_reduce">글 줄임기호(...) 사용</label>
						<p class="lgText">+ 한글 2Byte, 영문 1Byte 처리</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">페이지당 게시물 수</td>
					<td>
						<input type="text" name="unit">개/페이지
						<p class="lgText">+ 한 페이지당 출력될 게시물 갯수</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">게시판 사용</td>
					<td>
						<input type="checkbox" name="use_board" checked>
						<label for="use_board">사용</label>
						<p class="lgText">+ 체크해제시 사이트에 해당 게시판/게시글들이 더이상 출력되지 않음</p>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 기능사용 및 출력 설정 -->
		<div class="sub_title">
			<b>기능사용 및 출력 설정</b>
			<table class="plusboard">
			
				<tr>
					<td class="col">분류기능 사용</td>
					<td>
						<input type="checkbox" name="use_cate">
						<label for="use_cate">사용</label>
						<p class="lgText">+ 기능 사용시 '분류설정'에서 게시판 분류를 설정</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">중복조회 사용</td>
					<td>
						<input type="checkbox" name="use_overlap">
						<label for="use_overlap">사용</label>
						<p class="lgText">+ 게시물을 읽을때 마다 조회수가 증가,　* 미사용시 게시물당 1회만 증가 (관리자/글작성자 제외)</p>
					</td>
				</tr>
			
				<tr>
					<td class="col">댓글기능 사용</td>
					<td>
						<input type="checkbox" name="use_comment" checked>
						<label for="use_comment">사용</label>
					</td>
				</tr>
				
				<tr>
					<td class="col">답글기능 사용</td>
					<td>
						<input type="checkbox" name="use_reply" checked>
						<label for="use_reply">사용</label>
					</td>
				</tr>
				
				<tr>
					<td class="col">추천/반대기능 사용</td>
					<td>
						<input type="checkbox" name="use_vote">
						<label for="use_vote">사용,</label>	
						<input type="checkbox" name="use_oppose">
						<label for="use_oppose">반대기능 사용안함</label>	
					</td>
				</tr>
				
				<tr>
					<td class="col">비밀글 기능 사용</td>
					<td>
						<input type="checkbox" name="use_secret">
						<label for="use_secret">사용</label>
						<p class="lgText">+ 권한 있는 사람과 작성자만 열람가능</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">인쇄기능 사용</td>
					<td>
						<input type="checkbox" name="use_print">
						<label for="use_print">사용</label>
						<p class="lgText">+ 회원이 해당 게시물을 인쇄 할수 있는 기능</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">작성자이름 출력</td>
					<td>
						<input type="radio" name="use_writer" id="use_writer_nickname" value="nickname" checked>
						<label for="use_writer_nickname">실명</label>
						<input type="radio" name="use_writer" id="use_writer_uid" value="uid">
						<label for="use_writer_uid">아이디</label>
						<p class="lgText">+ 게시물 작성자에 닉네임 또는 아이디를 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">SNS 글보내기 사용</td>
					<td>
						<input type="checkbox" name="use_snssend">
						<label for="use_snssend">사용</label>
						<p class="lgText">+ 게시물 상세페이지에 SNS 글보내기 버튼 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">게시글 삭제기능</td>
					<td>
						<input type="radio" name="use_articledel" id="use_articledel_now" value="now">
						<label for="use_articledel_now">바로삭제</label>
						<input type="radio" name="use_articledel" id="use_articledel_wait" value="wait" checked>
						<label for="use_articledel_wait">삭제된 게시물로 표시</label>
						<p class="lgText">+ 삭제된 게시물을 삭제하면 최종 삭제처리</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">워터마크 사용</td>
					<td>
						<input type="checkbox" name="use_watermark">
						<label for="use_watermark">사용</label>
						<p class="lgText">+ 워터마크 사용여부 설정</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">조회수 BEST 출력</td>
					<td>
						<input type="checkbox" name="use_hit_best">
						<label for="use_hit_best">사용</label>
						<select>
							<option value="5개">5개</option>
							<option value="10개">10개</option>
							<option value="15개">15개</option>
							<option value="20개">20개</option>
						</select>
						<p class="lgText">+ 게시물 목록/상세페이지에 조회수 BEST 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">NEW 아이콘 출력</td>
					<td>
						<input type="checkbox" name="use_new_icon" checked>
						<label for="use_new_icon">사용</label>
						<input type="text" value="24">시간 이내
						<p class="lgText">+ 목록에서 최근 게시물에 new 아이콘 출력, 최대 72시간까지 설정</p></td>
				</tr>
				
				<tr>
					<td class="col">첨부파일 아이콘 출력</td>
					<td>
						<input type="checkbox" name="use_attach_icon" checked>
						<label for="use_attach_icon">사용</label>
						<p class="lgText">+ 목록에 첨부파일 아이콘 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">답글 아이콘 출력</td>
					<td>
						<input type="checkbox" name="use_reply_icon" checked>
						<label for="use_reply_icon">사용</label>
						<p class="lgText">+ 목록에 답글 아이콘 출력</p>
					</td>
				</tr> 
				
				<tr>
					<td class="col">이전글/다음글 출력</td>
					<td>
						<input type="checkbox" name="use_near_article" checked>
						<label for="use_near_article">사용</label>
						<p class="lgText">+ 게시물 상세페이지 하단에 이전글, 다음글 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">상세페이지 목록 출력</td>
					<td>
						<input type="checkbox" name="use_detail_list" checked>
						<label for="use_detail_list">사용</label>
						<p class="lgText">+ 게시물 상세페이지 하단에 목록 출력</p>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 첨부파일 설정 -->
		<div class="sub_title">
			<b>첨부파일 설정</b>
			<table class="plusboard">
				<tr>
					<td class="col">첨부파일 사용</td>
					<td>
						<input type="checkbox" name="use_attach" checked>
						<label for="use_attach">사용</label>
						<p class="lgText">+ 자료실/갤러리 기능</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">첨부파일 출력</td>
					<td>
						<input type="checkbox" name="use_attach_print" checked>
						<label for="use_attach_print">사용</label>
						<p class="lgText">+ 게시물 상세페이지에 첨부파일 목록 / 다운로드 현황 출력</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">첨부파일 갯수</td>
					<td>
						<input type="text" name="attach_nums" value="4">개
						<p class="lgText">+최대 9개 까지 설정 가능<p>
					</td>
				</tr>
				
				<tr>
					<td class="col">첨부파일 최대크기</td>
					<td>
						<input type="text" name="attach_size" value="2048">KB/파일
						<p class="lgText">+ PHP 설정상 최대 2048000KB까지 설정가능</p></td>
				</tr>
				
				<tr>
					<td class="col">이미지 최대 가로크기</td>
					<td>	
						<input type="text" name="picture_width" value="675">픽셀
						<p class="lgText">+ 상세페이지에 출력될 이미지의 최대 가로크기, 게시판 가로크기와 25픽셀 유지</p></td>
				</tr>
				
				<tr>
					<td class="col">첨부파일 확장자</td>
					<td>
						<input type="text" name="attach_extension" value="gif,png,jpg,bmp,swf,hwp,doc,pdf,ppt,xls,gul,zip,alz,xlsx,pptx,docx">
						<p class="lgText">+ 쉼표(,)로 구분 (단, php, php3, html, html 제외)</p>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 게시판 상단/하단 파일 설정 -->
		<div class="sub_title">
			<b>게시판 상단/하단 파일 설정</b>
			<div class="tip">+ 게시판 상단/하단에 출력할 파일을 설정</div>
			<table class="plusboard">
				<tr>
					<td class="col">상단에 로드할 파일명</td>
					<td>
						<input type="text" name="board_header_file">
						<p class="lgText">+ 파일 업로드 위치 : board/include/</p>
					</td>
				</tr>
				
				<tr>
					<td class="col">하단에 로드할 파일명</td>
					<td>
						<input type="text" name="board_footer_file">
						<p class="lgText">+ 파일 업로드 위치 : board/include/</p>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="sub_title">
			<b>본문 설정</b>
			<div class="tip">+ 게시글 내용에 출력할 기본 텍스트를 설정</div>
				<table class="plusboard">
					<tr class="ckeditor">
						<td class="col">기본 텍스트</td>
						<td colspan="2">
							<!-- 표시할 textarea로 영역-->
							<textarea name="content" id="editor" rows="10" cols="100"></textarea>
							<!-- ckeditor 생성을 위한 JS -->
							<script>
							       ClassicEditor
							           .create( document.querySelector('#editor'))
							           .then(edit => {
							           	console.log(editor);
							           })
							           .catch(error => {
							               console.error(error);
							           });
							 </script>
						</td>
					</tr>
				</table>
		</div>	
		
		<div class="sub_title">
			<b>사용제한</b>
			<div class="tip">+ 입력시 쉼표(,)로 구분</div>
				<table class="plusboard">
					<tr>
						<td class="col">금지 단어 설정</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td class="col">아이피 차단 설정</td>
						<td><input type="text"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>































