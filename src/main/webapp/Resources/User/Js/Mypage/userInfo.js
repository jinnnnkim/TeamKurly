/**
 * 
 */
 
function fn_emailChk(){
	$.ajax({
      url : "/recipetoyou/mypageUserInfo/emailChk.do",
      type : "post",
      dataType : "json",
      data : {"email" : $(".email").val()},
      success : function(data){
        if(data == 1){
          alert("중복된 이메일입니다.");
        }else if(data == 0){
          $("#emailChk").attr("value", "Y");
          alert("사용가능한 이메일입니다.");
        }else {
          alert("이메일을 입력해주세요.");
        }
      }
    })
}