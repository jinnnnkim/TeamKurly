/**
 * 
 */
 
 

 //체크박스 전체선택 기능
 $(function(){
			$('#checkboxAllChoice').click(function () {
				var checked = $('#checkboxAllChoice').is(':checked');
				
				if(checked)
					$('input.chChoice:checkbox').prop('checked',true);
				else 
					$('input.chChoice:checkbox').prop('checked',false);
	})
});

//처리버튼 클릭시 나타나는 alert창		
$(document).ready(function() {
	
	$('#goodsList_batch').click(function(){
		alert('처리할 상품을 선택하세요.');
	});
			
	//옵션등록버튼을 클릭하면 보이는 alert창의 닫기버튼 누르면 alert창이 사라짐
	$('#orderChange_frameClose').click(function() {
		$('#orderChange_frame').hide();
	});  
		 	
		//순서변경 버튼을 클릭하면 alert창 나타남
	$('#goodsListPopup').click(function() {
		$('#orderChange_frame').show();
		//$("#is_required_frame").attr("style","display:table-row");
	}); 
});

//$(document).ready(function(){
	//console.log('${cateList}');
//});


 
		  		


//상품명 검색
$("#searchBtn").on("click", function(e){
	e.preventDefault();
	let val = $("input[name='keyword']").val();
	let val2 = searchForm.find("input[name='keyword']").val(val);
	let val3 = searchForm.find("input[name='page']").val(1);
	
	alert(val);
	alert(val2);
	alert(val3);
	
    searchForm.submit();
    
   
});    						

