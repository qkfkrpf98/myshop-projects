$(document).ready(function() {
	//레이드 팝업
    $(".openModalPop").click(function() {
    	var rid = $(this).val();
    	$.ajax({
	 		url:"admin_review_content.do?rid="+rid,
	 		success:function(rvo){
	 			/* alert(rvo.rcontent); */
	 			var score =parseInt(rvo.score);
	 			alert(score);
	 			
	 			let output = "<div id='modal'></div>";
	 			output += "<div class='lay_review_content'>";
	 			output += "<div class='header'>";
	 			output += "<div class='rtitle'>리뷰 상세보기</div>";
	 			output += "<div id='close_button' style='cursor: pointer;'><img src='http://localhost:9000/myshop/resources/images/close.png'></div>";
	 			output += "</div>";
	 			output += "<div class='content'>";
	 			output += "<div class='flame'>";
	 			output += "<div class='star'>";
	 			for(var i=0;i<score; i++){
		 			output +="<label>⭐</label>";
	 			}
	 			output +="<span>"+rvo.score+"</span>";
	 			output +="<div>"+rvo.rwriter+"  |  "+rvo.rdate+"</div>";
	 			output +="</div>";
	 			output +="<div class='rcontent'>"+rvo.rcontent+"</div>";
	 			if(rvo.rsfile != null){
	 				output +="<div class='rsfile'><img src='http://localhost:9000/myshop/resources/upload/"+rvo.psfile+"'></div>";
	 			}
	 			output += "<div class='order_info'>";
	 			output +="<span>"+rvo.pname+"  |  "+rvo.oid+"</span>";
	 			output +="</div>";
	 			output +="<div class='review_info'>";
	 			output +="<table>";
	 			output +="<tr>";
	 			output +="<th>리뷰 글 번호</th>";
	 			output +="<td>"+rvo.rid+"</td>";
	 			output +="<th>리뷰 공감수</th>";
	 			output +="<td>"+rvo.recom+"</td>";
	 			output +="</tr>";
	 			output +="</table>";
	 			output +="</div></div></div></div>";
	 			
	 			$("#modal").remove();
	 			$(".lay_review_content").remove();
				$("#nav-toggle").after(output);
		 		$(".lay_review_content").fadeIn();
		 		$("#modal").fadeIn();
	
			    $("#close_button").click(function(){
			        $(".lay_review_content").fadeOut();
			        $("#modal").fadeOut();
			    });
	 		}//success
	 	}); 
    });
	
    let period_search_count = 0;
	   let period_search_id = "";
	  
	   /* 작성일 형식은 하나만 선택 가능 */
	   $(".period_search").click(function(){
		   /* alert("선택"); */
		   if(period_search_count ==0){
			   $(this).css("background-color","black").css("color","#fff");
			   period_search_id = $(this).attr("id");
			   period_search_count = 1;
			   $(".first-date").val("");
			   $(".last-date").val("");
			   
		   }else if(period_search_count == 1){
			   if(period_search_id == $(this).attr("id")){
				   $(this).css("background-color","#fff").css("color","black");
				   period_search_count = 0;
			   }else{
			   		alert("하나만 선택이 가능합니다.");
				   
			   }   
		   }
	   });
	   
	   /* 리셋버튼 클릭시 선택해제 */
	   $("#btnReset").click(function(){
		   if(period_search_count == 1){
			   $(".period_search").css("background-color","#fff").css("color","black");
			   period_search_count = 0;
		   }
	   });
	   
	   
	   /* 리뷰 작성일 형식은 하나만 선택 가능 */
	   $(".first-date").click(function(){
		  /*  alert("선택"); */
		   if(period_search_count == 1){
			   $(".period_search").css("background-color","#fff").css("color","black");
			   period_search_count = 0;
		   }
	   });
	   /* 리뷰 작성일 형식은 하나만 선택 가능 */
	   $(".last-date").click(function(){
		  /*  alert("선택"); */
		   if(period_search_count == 1){
			   $(".period_search").css("background-color","#fff").css("color","black");
			   period_search_count = 0;
		   }
	   });
	   
	   
	  /*검색 분류 선택해야 텍스트박스 사용가능 */
	   $(".search_bar").click(function(){
		  if($(".search_class").val()=="defalt") {
			  alert("검색 분류를 선택해주십시오.");
			  $(".search_class").focus();
			  $(".search_bar").val("");
		  }
	   });

	  /*  카테고리 대분류 박스 선택해야 소분류 선택가능 */
	  $(".search_class_sub").click(function(){
		 if($(".search_class_main").val()=="defalt"){
			 alert("카테고리 대분류를 먼저 선택해주십시오.");
			 $(".search_class_main").focus();
			 $(".search_class_sub").val("defalt");
		 }
	  });
	  
	  /* 체크박스 전체 선택(리뷰)  */
	  $("input[name=checkAll]").click(function(){
		  if($("input[name=checkAll]").prop("checked")){
			  $(".review_check").prop("checked",true);
		  }else{
			  $(".review_check").prop("checked",false);
		  }
	  });
	
    /* 전체 선택 중 체크박스 하나를 풀었을 때, checkAll flase */
	 $("input[name=check]").click(function(){
		  if(!$("input[name=check]").prop("checked")){
			  $("input[name=checkAll]").prop("checked",false);
		  }
	 });
	 

    
});