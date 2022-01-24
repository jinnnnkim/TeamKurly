<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/recipetoyou/Resources/User/Css/Community/communityRecipeWrite.css"
	rel="stylesheet" type="text/css">
<!-- fontawesome 링크 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- font 링크 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/recipetoyou/Resources/User/Img/KurlyIcon.png" rel= "icon" type="image/x-icon"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div class="main">
			<h2>레시피등록</h2>
			<div class="content">
				<div class="title">
					<div class="recipeTitle">
						<span>Recipe Title</span><input type="text" placeholder="예) 소고기 미역국 끓이기"/>
						
					</div>
					<div class="recipeContent">
						<span>Recipe</span><textarea placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 ...."></textarea>
						
					</div>
					<div class="recipeIngred">
						<span>Ingredient</span><textarea placeholder="나만의 레시피에 들어가는 요리 재료를 적어주세요. ex)미역국에 필요한 재료"></textarea>
					</div>
					<div class="cate">
					<span>Category </span>
					<select>
						<option>종류별</option>
						<option>상황별</option>
						<option>재료별</option>
						<option>방법별</option>
					</select>
					<select>
						<option>일상</option>
						<option>초스피드</option>
						<option>손님접대</option>
						<option>술안주</option>
					</select>
					<select>
						<option>소고기</option>
						<option>돼지고기</option>
						<option>닭고기</option>
						<option>육류</option>
					</select>
					<select>
						<option>볶음</option>
						<option>끓이기</option>
						<option>부침</option>
						<option>조림</option>
					</select>
				</div>
	
				</div>
				<div id="root">
				  <div class="contents">
				    <div class="upload-box">
				      <div id="drop-file" class="drag-file">
				        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
				        <p class="message">이미지를 드래그 하세요</p>
				        <img src="" alt="미리보기 이미지" class="preview">
				      </div>
				      <label class="file-label" for="chooseFile">이미지 선택하기</label>
				      <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
				    </div>
				  </div>
				</div>
			</div>
			
			<div class="writeBtn">
				<a href="#">글쓰기</a>
			</div>
		
			
		</div>
	</div>
<script>

function preventDefaults(e) {
	  e.preventDefault();
	  e.stopPropagation();
	}
	
const dropArea = document.getElementById("drop-file");

function highlight(e) {
  preventDefaults(e);
  dropArea.classList.add("highlight");
}

function unhighlight(e) {
  preventDefaults(e);
  dropArea.classList.remove("highlight");
}

dropArea.addEventListener("dragenter", highlight, false);
dropArea.addEventListener("dragover", highlight, false);
dropArea.addEventListener("dragleave", unhighlight, false);

function handleDrop(e) {
	  unhighlight(e);
	  let dt = e.dataTransfer;
	  let files = dt.files;

	  console.log(files);
	  
	}
	
function renderFile(file) {
	  let reader = new FileReader();
	  reader.readAsDataURL(file);
	  reader.onloadend = function () {
	    let img = dropArea.getElementsByClassName("preview")[0];
	    img.src = reader.result;
	    img.style.display = "block";
	  };
	}
</script>
</body>
</html>