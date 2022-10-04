<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin_notice_list.css">
    <script src="http://localhost:9000/myshop/resources/js/jquery-3.6.0.min.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/sidebarMenu.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/admin_ReviewList.js"></script>
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <title>회원 관리페이지</title>
<script>
$(document).ready(function(){
	
	$(".btn_delete").click(function(){
		 var cnt = $("input[name=check]:checked").length;
		 /*var delete_list = new Array();
		 var aJson = new Object();
		 var aJsonArray = new Array(); */
		 if($("input[name=check]:checked").length == 0){
			 alert("선택된 리스트가 없습니다.");
		 }else{
			
			 var delete_list = new Array();
			 
		 	 $("input[name=check]:checked").each(function(){
		 	 	delete_list.push($(this).val());
		 	 });
		 	 
		 	
		 	//var obj = JSON.stringify(delete_list);
		 	//alert(obj);
		 	
		 	 if(confirm("선택한 항목을 정말 삭제하시겠습니까?")==true){
		 		 /* alert(cnt); */
		 		 
			 	$.ajax({
			 		url:"admin_notice_list_delete.do",
			 		type: "POST",
			 		data: {clist: delete_list},
			 		dataType:"json",
			 		success:function(result){
			 			if(result != 1){
			 				alert("삭제 오류");
			 			}else{
			 				alert("삭제 성공");
			 			}
			 		}//success
			 	}); 
			 	 
		 	 }//if문 
		 	
		 }//if-else
		
	});
})

</script>
</head>
<body>
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
        <div class="sidebar-brand"> 
            <h2><span class="lab la-accusoft"></span><span>Myshop</span></h2>
        </div>
       
        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="" ><span class="las la-igloo"></span><span>Home</span></a>
                </li>
                
                <li class="menu">
                    <a class="active"><span class="las la-users"></span><span>사용자 관리</span></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="www.naver.com"><span>사용자 목록</span></a>
                        </li>
                        <li>
                            <a href="#None"><span>메시지 보내기</span></a>
                        </li>
                        <li>
                            <a href="#None"><span>메일 발송 설정</span></a>
                        </li>
                        <li>
                            <a href="#None"><span>SMS발송 설정</span></a>
                        </li>
                    </ul>
                </li>
 
                <li>
                    <a href=""><span class="las la-shopping-bag"></span><span>상품관리</span></a>
                </li>
                <li>
                    <a href=""><span class="las la-receipt"></span><span>주문관리</span></a>
                </li>
                <li>
                    <a href=""><span class="las la-user-circle"></span><span>관리자 정보수정</span></a>
                </li>
                <li>
                    <a href=""><span class="las la-sign-out-alt"></span><span>Logout</span></a>
                </li> 
            </ul>
        </div>
    </div>

    <div class="main-content">
        <header>
            <h2>
                <label for="nav-toggle">
                    <span class="las la-bars"></span>
                </label>
                
            </h2>
            
            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="Search here">
            </div>

            <div class="user-wrapper">
                <img src="4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="30px" height="30px" display="inline">
                <div>
                    <h4>고범규</h4>
                    <small>사이트 관리 전용</small>
                </div>
            </div>
        </header>

        <main>


			<div class="recent-grid">
				
				<div class="title_box">
					<h3 class="search_title">공지사항 조건 검색</h3>
				</div>
				<div class="seller_content">
					<form name="noticeListForm" action="notice_conditional_search.do"
						method="post">
						<div class="list_content">
							<table class="seller_search">
								<tr>
									<th>검색</th>
									<td><select class="search_class">
											<option value="notice_title">글 제목</option>
											<option value="noticeNum">게시글 번호</option>
									</select> <input type="text" class="search_bar"></td>
									<th>기간</th>
									<td><input type="date" class="first-date">~ <input
										type="date"></td>
								</tr>
							</table>
							<div class="seller_search_btns">
								<button class="search_btn" type="submit">검색</button>
								<button class="search_btn" type="reset">초기화</button>
							</div>
						</div>
					</form>
				</div>
				<div class="seller_list">
					<div class="list_heading">
						<div class="heading_left">
							<h3>공지사항 목록(총 ${totalcount}개)</h3>
						</div>
						<div class="heading_right">
							<button type="button" class="btn_delete">선택 삭제</button>
							<a href="admin_notice_write.do">
							<button type="button">공지사항 등록</button></a>
						</div>
					</div>
					<div class="list_content">
						<div class="table_flame">
							<table class="list_table">
								<tr>
									<th><input type="checkbox" class="notice_check" name="checkAll"></th>
									<th>번호</th>
									<th>분류</th>
									<th>제목</th>
									<th>중요 여부</th>
									<th>첨부 파일 유무</th>
									<th>게시 시작일</th>
									<th>게시 종료일</th>
								</tr>
							    <c:forEach var="vo" items="${list}">
								<tr>
									<td><input type="checkbox" class="notice_check" name="check" value="${vo.nid}"></td>
									<td>${vo.rno}</td>
									<td>${vo.ncode }</td>
									<td><a href="admin_notice_update.do?nid=${vo.nid}">${vo.ntitle}</a></td>
									<c:choose>
										<c:when test="${vo.ncrucial == 1 }">
											<td>설정</td>
										</c:when>
										<c:otherwise>
											<td>미 설정</td>
										</c:otherwise>
									</c:choose>
									<td>${vo.nfile}</td>
									<td>${vo.nsdate}</td>
									<td>${vo.nedate}</td>
									<%-- <c:choose>
										<c:when test="${vo.nedate == 9999-12-31 }">
											<td>-</td>
										</c:when>
										<c:otherwise>
											<td>${vo.nedate}</td>
										</c:otherwise>
									</c:choose> --%>
								<tr>
								</c:forEach>
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>

    </div>
</body>
</html>