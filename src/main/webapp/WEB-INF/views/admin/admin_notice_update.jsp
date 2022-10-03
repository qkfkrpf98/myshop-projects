<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin_notice_list.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <title>회원 관리페이지</title>
    <script src="http://localhost:9000/myshop/resources/js/jquery-3.6.0.min.js"></script>
<script>
	 
	

	$(document).ready(function(){
		//중요 공지사항 체크여부
		if($("#ncrucial").val()=="1"){
			$("#ncrucial_check").attr("checked",true);
		}else{
			$("#ncrucial_check").attr("checked",false);
		}
		
		//파일 이름 변경처리
		$("#file1").on('change',function(){
			  var fileName = $("#file1").val();
			  $(".upload-name").val(fileName);
			});
		
		//전시기간 설정기능-게시글 수정
		$("#ex_check").click(function(){
			var chk =$(this).is(":checked");
			if(chk == true){
				$("#nsdate_fk").attr("disabled",false);
				$("#nedate_fk").attr("disabled",false);	
					
			}else{
				$("#nsdate_fk").attr("disabled",true);
				$("#nedate_fk").attr("disabled",true);	
			}
		});
		
		//유효성체크
		$("#btnUpdateNotice").click(function(){
			
			/* alert("선택") */
			if($("#ntitle").val()==""){
				alert("제목을 입력해주세요");
				return false;
			}else if($("#ncontent").val()==""){
				alert("내용을 입력해주세요");
				return false;
			}else{
				noticeupdateForm.submit();
			}
				
		});
		
		$("#ncrucial_check").click(function(){
			if($("#ncrucial_check").is(":checked")){
				$("#ncrucial").val("1");
				/* alert($("#ncrucial").val()); */
			}else{
				$("#ncrucial").val("0");
				/* alert($("#ncrucial").val()); */
			} 
		});
		
		$("#nsdate_fk").blur(function(){
			$("#nsdate").val($(this).val());
			/* alert($("#nsdate").val()); */
			
		});
		$("#nedate_fk").blur(function(){
			$("#nedate").val($(this).val());
			/* alert($("#nedate").val()); */
			
		});
		
		
		
	});



	
</script>
<style>
	.flame{
		border:1px solid #dbdde2;
		border-radius:5px;
		padding:30px;
	}
	
	.write_table{
		/* border-collapse: separate; */
		width:100%;
		margin-bottom:30px;
	}
	.write_table th, td{
		border-bottom:1px solid #dbdde2;
		padding:20px;
	}
	.write_table td:list-child{
		border:none;
	}
	.write_table th{
		background: var(--main-color);
		color:#fff;
	}
	.textbox{
		padding: 5px 10px;
	    width: 400px;
	    border-radius: 0px;
	}
	#ntitle{
		margin-right:30px;
	}
	#ncontent{
		width:600px;
		height:150px;
		display:block;
		margin-bottom:10px;
		
	}
	
	.filebox .upload-name {
	    display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	   /*  border: 1px solid #dddddd; */
	    width: 500px;
	    color: #999999;
	}
	
	.filebox label {
	    display: inline-block;
	    padding: 10px 20px;
	    color: #fff;
	    vertical-align: middle;
	    background-color: #999999;
	    cursor: pointer;
	    height: 40px;
	    margin-left: 10px;
	}
	.filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	
	input[type=checkbox]{
		display:none;
	}
	
	input#ex_check + label:before, input#ncrucial_check + label:before{
		content:"";
		display:inline-block;
		width:20px;
		height:20px;
		line-height:20px;
		border:2px solid var(--main-color);
		border-radius:5px;
		vertical-align: middle;
	}
	
	input#ex_check:checked + label:before, input#ncrucial_check:checked + label:before{
		content:"\f00c";/*폰트어썸 유니코드*/
		font-family:"Font Awesome 5 free"; /*폰트어썸 아이콘 사용*/
		font-weight:900;
		color:#fff;
		background: var(--main-color);
		vertical-align: middle;
		text-align:center;
		font-size:10px;
	}
	
	.write_table span{
		padding:0 8px 0 10px;
	}
	
	input[type=date]{
		width: 150px;
		padding: 4px 10px;
		margin:0 5px;
		
	}
	
	.seller_search_btns a .search_btn{
		background: #fff;
	    border-radius: 10px;
	    color: var(--main-color);
	    font-size: .8rem;
	    padding: 0.5rem 0rem;
	    width:100px;
	    border: 1px solid var(--main-color);
	    margin-right: 10px;
	}
	
</style>

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
				<label for="nav-toggle"> <span class="las la-bars"></span>
				</label>

			</h2>

			<div class="search-wrapper">
				<span class="las la-search"></span> <input type="search"
					placeholder="Search here">
			</div>

			<div class="user-wrapper">
				<img src="4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="30px"
					height="30px" display="inline">
				<div>
					<h4>고범규</h4>
					<small>사이트 관리 전용</small>
				</div>
			</div>
		</header>

		<main>


			<div class="recent-grid">
				<div class="seller_list">
					<div class="list_heading">
						<div class="heading_left">
							<h3>공지사항 수정</h3>
						</div>
					</div>
					<div class="list_content">
						<form name="noticeupdateForm" action="admin_notice_update_check.do" method="post" enctype="multipart/form-data">
						<input type="hidden" id="nid" name="nid" value="${vo.nid}">
						<input type="hidden" id="nfile" name="nfile" value="${vo.nfile}">
						<input type="hidden" id="nsfile" name="nsfile" value="${vo.nsfile}">
							<div class="flame">
								<table class="write_table">
									<tr>
										<th>제목</th>
										<td><input type="text" id="ntitle" name="ntitle" class="textbox"
											value="${vo.ntitle}"> <input type="checkbox"
											class="notice_check" id="ncrucial_check"><label
											for="ncrucial_check"></label><input type="hidden" id="ncrucial" name="ncrucial" value="${vo.ncrucial }">
											<span>중요 공지사항으로 등록</span></td>
									</tr>
									<tr>
										<th>공지 상세</th>
										<td><input type="text" id="ncontent" name="ncontent" class="textbox" value="${vo.ncontent}">
											<div class="filebox">
											<c:choose>
												<c:when test="${vo.nfile != null }">
											   		<input class="upload-name" value="${vo.nfile}"  disabled>
											   	</c:when>
											   	<c:otherwise>
											   		<input class="upload-name" value="선택된 파일이 없음"  disabled>
											   	</c:otherwise>
											</c:choose>
											    <label for="file1">파일찾기</label> 
											    <input type="file" id="file1" name="file1">
											</div>
										</td>
									</tr>
									<tr>
										<th>전시</th>
										<td><input type="checkbox" id="ex_check"><label
											for="ex_check"></label><span>전시 기간 설정</span><input
											type="date" id="nsdate_fk" value="${vo.nsdate}" disabled>~<input type="date" id="nedate_fk" value="${vo.nedate}" disabled>
											<input type="hidden" id="nsdate" name="nsdate" value="${vo.nsdate}"><input type="hidden" id="nedate" name="nedate" value="${vo.nedate}">
											</td>
									</tr>
								</table>
								<div class="seller_search_btns">
									<button class="search_btn" id="btnUpdateNotice" type="button">공지사항 변경</button>
									<a href="admin_notice_list.do">
									<button class="search_btn" type="button">취소하기</button></a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>

	</div>
</body>
</html>