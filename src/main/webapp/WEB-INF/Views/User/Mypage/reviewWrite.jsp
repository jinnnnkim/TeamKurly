<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_주문내역</title>
<link rel="stylesheet"
	href="/recipetoyou/Resources/User/Css/Mypage2/reviewWrite.css">
<link href="/recipetoyou/Resources/User/Css/Mypage2/reset.css" rel="stylesheet"
	type="text/css">
<!-- fontawesome 링크 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<!-- font 링크 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
<!-- 파비콘 링크 -->
<link href="/recipetoyou/Resources/User/Img/Mypage2/KurlyIcon.png" rel="icon"
	type="image/x-icon" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
		
		<div class="content">
		
			<div class="review_main">
					<h2 class="title">후기작성</h2>
					<!-- <div class="reviewContent">
						<div class="prod">
							<div class="img">  
								<img src="/recipetoyou/Resources/User/Img/goods6.jpg"/>
							</div>
							<div class="prodInfo">
								<span class="prodTitle">소고기 200g</span><br/>
								<span class="prodSub">맛있는 소고기 200g</span>
							</div>
						</div> -->
						<div class="reviewWriteWrap">

						<c:if test="${comCategory==1 }">
							<td colspan="4">
								소중한 후기를 남겨주세요.
							</td>
						</c:if>
						<c:if test="${comCategory==2 }">
							<td colspan="4">
								궁금하신 게 있다면 언제든지 물어봐주세요^^
							</td>
						</c:if>
							<form action="" id="reviewForm" name="reviewForm" enctype="multipart/form-data" method="post" onsubmit="return false;">
								<table class="reviewWrite">
									<tr class="reviewWriteTitle">
										<th>
											제목
										</th>
										<td>
											<input type="text" placeholder="제목을 입력해주세요."/>
										</td>
									</tr>
									<tr class="userId">
										<th>
											사용자 아이디
										</th>
										<td>
											${userId }
										</td>
									</tr>
									<tr class="prodImg" colspan="2">
										<td>
											<input type="file" id="fileName" name="fileName">
										</td>
									</tr>
									<tr class="content">
										<th>
											후기작성
										</th>
										<td>
											<textarea placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,&#13;&#10;일반식품의 효능이나 효과 등에 오해의 소지가 있는 내용을 작성 시 검토 후 비공개 조치될 수 있습니다.&#13;&#10;반품/환불 문의는 1:1문의로 가능합니다."></textarea>
										</td>
									</tr>
									<c:if test="${comCategory==1 }">
									<div class="writeBtn">
									<button type="button" onclick="javascript:UserReview();">글쓰기</button>
									</div>
									</c:if>
								
									<c:if test="${comCategory==2 }">
									<div class="writeBtn">
									<button type="button" onclick="javascript:UserInquiry();">글쓰기</button>
									</div>
									</c:if>
								</table>
							</form>
						</div>
			</div>
			<!-- review_main -->
		</div>
		<!-- content -->
		
		<script type="text/javascript">
			function CommentList(){
				var commentNum = $("#commentNum").val();
				if(comment_idx != 0 && comm_category != 0){
					$.ajax({
						url : "/commentList",
						data : $("#comment_idx").serialize()+"&"+$("#comm_category")+"&"+$("#commentNum").serialize(),
						dataType : "JSON",
						cache : false,
						async : true,
						type : "POST",
						success : function(obj){
							CommentListCallback(obj);
						},
						error : function(xhr, status, error){}
					});
				}else{
					alert("오류가 발생했습니다.\n 관리자에게 문의하세요.");
				}
			}
			
			function CommentListCallback(obj){
				
				var num = $("commentNum").val();
				var NowUserID = $("#userID").val();
				var isAdmin = $("#isAdmin").val();
				var comCategory = $("#comm_category").val();
				
				var list = obj;
				var listLen = obj.length;
				var str = "";
				
				if(listLen > 0){
					for(var a=0; a<listLen; a++){
						var comment_code = list[a].comment_code;
						var comment_idx = list[a].comment_idx;
						var userID = list[a].userID;
						var content = list[a].content;
						var subcomm_code = list[a].subcomm_code;
						var comm_category = list[a].comm_category;
						
						var filePath = "";
						
						//답글은 작성자 본인 or 관리자 이외에는 비밀글로 보이도록 설정
						if(comm_category != 2 || NowUserID == userID || isAdmin == 1 || (a>0 && comment_code == list[a-1].comment_code && NowUserID == list[a-1].userID)){
							//답글이 아닐 경우
							if(subcomm_code == 0){
								str += "<div class=\"container\">";
								str += "<table>";
								str += "<tr>";
								str += "<td align=\"left\">"+userID+님의 ";
								
								if(comCategory ==1){
									str += "후기입니다."
								}else{
									str += "질문입니다."
								}
								
								str += "</td><td colspan=2></td>";
								str += "<td colspan=2 align=\"right\">";
								
								if(NowUserID == userID){
									str += "<button type=\"button\" onclick=\"javascript:nwindow("+comment_idx+","+comment_code+","+subcomm_code+",'"+userID+"');\">수정</button>";
						            str += "&emsp;<button type=\"button\" onclick=\"javascript:CommentDelete("+comment_idx+","+subcomm_code+");\">삭제</button>";
						            }
						            
						            if(isManager == 1){
							            str += "&emsp;<button type=\"button\" onclick=\"subWindow("+comment_idx+","+comment_code+","+comm_category+")\">답글</button>";
						            }
						            str += "</td>";
						            str += "</tr>";
						            str += "<tr>";
						            str += "<td colspan=5 align=\"left\">";
						            str += "<img src=\""+filePath+"\" onerror=\"this.style.display='none'\" width=\"200\" height=\"200\" alt=\"\" /><br><br>"+content+"<br><br></td>";
						            str += "</tr>";
						            str += "</table>";
						            str += "</div>";
						            str += "</div>";
								}
							
								//답글일 경우
								 else{
						        	str = str.slice(0,str.length-20);
						            str += "<tr>";
						            str += "<td bgcolor=\"white\"  colspan=4 align=\"left\">└─&emsp;"+content+"</td>"
					            	str += "<td bgcolor=\"white\" align=\"right\">";
						            
						            //관리자
						            if(isManager == 1){
							            str += "<button type=\"button\" onclick=\"javascript:nwindow("+comment_idx+","+comment_code+","+subcomm_code+",'"+userID+"');\">수정</button>";
							            str += "&emsp;<button type=\"button\" onclick=\"javascript:CommentDelete("+comment_code+","+subcomm_code+");\">삭제</button>";
						            }        
						            
						            str += "</td>";
						            str += "</tr>";			      
						            str += "</table>";
						            str += "</div>";
						            str += "</div>";
						        }else{
						        	//비밀Q&A
						            if(subcomm_code == 0){
						            	str += "<div class=\"container\">";
							            str += "<div class=\"row\">";
							            str += "<table  class=\"table\" style=\"text-align:center; border: 1px solid #dddddd\">";
							            str += "<tr>";
							            str += "<td colspan=6 align=\"left\">비밀글 입니다♥</td>"
						           
						            }else{
							        	str = str.slice(0,str.length-20);
							        	str += "<tr><td colspan=6 align=\"left\">└─&emsp;비밀글 입니다♥</td>"
						            }
						        
						            str += "</tr>";			      
						            str += "</table>";
						            str += "</div>";
						            str += "</div>";
							}
						}
						
					}else{
						return;
					}
					
					$("#tcomment").html(str);
				}
			}
			
			//게시글 삭제
			function commentDelete(){
				var yn = confirm("게시글을 삭제하시겠습니까?");
				if(yn){
					$.ajax({
						url : "/commDelete",
						data : $("#commentForm").serialize(),
						dataType : "JSON",
						cache : false,
						async : true,
						type : "POST",
						success : function(obj){
							DeleteCallback(obj);
						},
						error : function(xhr, status, error){}
					});
				}
			}
			
			function DeleteCallback(obj){
				if(obj != null){
					var result = obj.result;
					
					if(result == "SUCCESS"){
						alert("게시글이 삭제되었습니다.");
					}else{
						alert("게시글 삭제를 실패하였습니다.");
						return;
					}
				}
			}
			
			//상품을 구매한 사람만 후기 작성 가능
			function UserReview(){
				$.ajax({
					url : "/UserReview",
					data    : $("#userID").serialize()+"&"+$("#comment_idx").serialize(),
			          dataType: "JSON",
			          cache   : false,
			          async   : true,
			          type    : "POST",    
			          success : function(count) {
			        	  if(count == 0){
			        		  alert("상품을 구매, 배송완료되신분만 후기작성이 가능합니다.");
			        		  return;
			        	  }
			        	  CommentWrite();
			          },           
			          error     : function(xhr, status, error) {
			          	alert("상품을 구매, 배송완료되신분만 후기작성이 가능합니다.");
			          	return;
			          }
				});
			}
			
			//문의 작성
			function UserInquiry()(){
				  
				var yn = confirm("문의를 등록하시겠습니까?");        
			       
				if(yn){
					
					var userID = $("#userID").val();
					var comCategory = $("#comm_category").val();
						
					var content = $("#content").val();   

					if (userID == ""){            
						alert("로그인을 해주세요.");
						$("#userID").focus();
						return;
					}
			        
			  		 if (content == ""){            
			 	        alert("내용을 입력해주세요.");
			 	        $("#content").focus();
			 	        return;
			 	    }
			  		
			       	var form = $('#commentForm')[0];
			       	var data = new FormData(form);
			       	
			       	if($('#fileName').val()==""){
			       		data.delete('fileName');
			       	}

			       	data.append("comment_idx",$("#comment_idx").val());
			       	data.append("comm_category",comCategory);
			       	data.append("userID",userID);
			       	
			       	$.ajax({    
			               type    : "POST",    
			               enctype: "multpart/form-data",
			               url     : "/InquiryWrite",
			               data    : data,
			               cache   : false,
			               processData: false,
			               contentType: false,
			               success : function(obj) {
			            	   InquiryWriteCallback(obj);                
			               },           
			               error     : function(xhr, status, error) {}
			               
			       	});
				}
			}

			//댓글 작성 함수
			function InquiryWriteCallback(obj){
				
				var comment_idx = $("#comment_idx").val();
				var comCategory = $("#comm_category").val();
				var comment_code = $("#comment_code").val();
			   
				if(obj != null){        
			       
					var result = obj.result;
			       
					if(result == "SUCCESS"){                
						alert("댓글 등록을 성공하였습니다.");                
						location.href = "/comment/commentView?comment_idx="+encodeURI(comment_idx)+"&comm_category="+comCategory+"&comment_code="+encodeURI(comment_code);
					} else {                
						alert("댓글 등록을 실패하였습니다.");    
						return;
					}
				}
			}
				 
			//댓글 삭제
			function CommentDelete(comment_idx,subcomm_code){
				
				var comment_idx = $("#comment_idx").val();		   
				var yn = confirm("댓글을 삭제하시겠습니까?");        
				       
				if(yn){
				           
					$.ajax({    
				               
						url     : "/comment/CommentDelete",
						data    : "comment_code="+#comment_code+"&comment_idx="+comment_idx+"&subcomm_code="+subcomm_code,
						dataType: "JSON",
						cache   : false,
						async   : true,
						type    : "POST",    
						success : function(obj) {
							CommentDeleteCallback(obj);                
						},           
						error     : function(xhr, status, error) {}
						
					});
				}        
			}
				   
			function CommentDeleteCallback(obj){
				
				var comment_idx = $("#comment_idx").val();
				var comCategory = $("#comCategory").val();
				var comment_code = $("#comment_code").val();
				
				if(obj != null){        
					
					var result = obj.result;
					
					if(result == "SUCCESS"){                
						alert("댓글 삭제를 성공하였습니다.");                
						location.href = "/comment/commentView?comment_idx="+encodeURI(comment_idx)+"&comm_category="+comCategory+"&comment_code="+encodeURI(comment_code);
					} else {                
						alert("댓글 삭제를 실패하였습니다.");    
						return;
					}
				}
			}
		</script>

</body>
</html>






















