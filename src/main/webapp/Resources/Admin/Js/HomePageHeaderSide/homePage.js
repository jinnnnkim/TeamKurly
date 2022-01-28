/**
 * 
 */


$(document).ready(function(){
        // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
       $(".menu>a").click(function(){
            //현재 클릭한 태그가 a 이기 때문에
            // a 옆의 태그중 ul 태그에 hide 클래스 태그를 숨겼다 펼쳤다 한다.
          $(this).next("ul").toggleClass("hide");
        });
 });

function dropMenu_btn(){
            let click = document.getElementById("drop_content");
            if(click.style.display === "none"){
                click.style.display = "block";
 
            }else{
                click.style.display = "none";
            }
        }


	
		