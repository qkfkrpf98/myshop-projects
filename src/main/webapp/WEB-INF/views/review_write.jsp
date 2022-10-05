<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단 리뷰 작성</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style>
	.review_write{
		border:1px solid black;
		width:500px;
		text-align:center;
		padding: 20px;
	}
	.flame{
		border:1px solid red;
	}
	span{
		padding:10px; 5px;
		display:block;
		font-size:20px;
		font-weight:bold;
	}
	.product_info{
		border:1px solid gray;
		border-radius:5px;
		width:100%;
		height:200px;
		display: inline-block;
	}
	
	/*  별점주기 */
	.score_star{
		direction: rtl;
	}
	.score_star input[type=radio]{
		display:none;
	}
	.score_star input[type=radio]:checked ~ label{
		text-shadow: 0 0 0 #a00;
	}
	.score_star label{
		font-size:3em;
		color:transparent;
		text-shadow: 0 0 0 #f0f0f0;
	}
	.score_star label:hover{
		text-shadow: 0 0 0 #a00;
	}
	.score_star label:hover ~ label{
		text-shadow: 0 0 0 #a00;
	}
	
	/* 내용 */
	.rcontent{
		width:95%;
		height:150px;
		
	}
	
	/* 첨부파일 */
	.filebox input[type="file"] {
		border:1px solid red;
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	
	.filebox label {
	    display: inline-block;
	    color: #a00;
	    vertical-align: middle;
	    cursor: pointer;
	    width:80%;
	    border:1px solid #a00;
	    margin-bottom:10px;
	}
	
	
	/* 버튼 */
	.btn_style{
		width:100%;
		background-color:#a00;
		color:#fff;
		border-radius:5px;
		border:none;
	}
	
</style>
</head>
<body>
	<form name="reviewwriteForm" action="review_write_check.do" method="post" enctype="multipart/form-data">
		<div class="review_write">
			<div class="flame">
				<span>상품정보</span>
				<div class="product_info">
				</div>
				<span>상품에 만족하셨나요?</span>
				<div class="score_star">
					<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
			        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
			        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
			        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
			        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
				</div>
				<span>간단하게 리뷰를 작성해 주세요!</span>
				<input type="text" class="rcontent">
				<span>사진 업로드</span>
				<div class="filebox">
					<label for="file1"><span class="material-symbols-outlined">add_a_photo</span><a>사진 추가하기(0/1)</a></label> 
					<input type="file" id="file1" name="file1">
				</div>
				<button type="button" class="btn_style"><span>리뷰 남기기</span></button>
			</div>
		</div>
	</form>
</body>
</html>