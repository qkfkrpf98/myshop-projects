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
	
	span{
		padding:10px; 5px;
		display:block;
		font-size:20px;
		font-weight:bold;
	}
	/* 상품정보 */
	.product_info{
		/* border:1px solid gray; */
		border-radius:5px;
		width:100%;
		display: inline-block;
	}
	.pro_flame{
		margin:20px;
		border:1px solid gray;
	}
	
	 .pro_img{
		border:1px solid black;
		width:150px;
		height:140px;
		float:left;
		border-radius:5px;
		margin-right:10px;
	}
	.pro_text{
		text-align:left;
	}
	.pro_text ul{
		list-style:none;
	}
	.pro_text li{
		margin-bottom:20px;
	}
	.pro_text li a{
		color:gray;
	}
	.pro_text li:nth-child(2){
		font-size:15px;
		font-weight:bold;
	}
	.pro_text li:last-child{
		color:#a00;
		font-size:20px;
		font-weight:bold;
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
		margin-bottom:20px;
		border:1px solid #878787;
	}
	
	/* 첨부파일 */
	.filebox input[type="file"] {
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
	    margin:20px 0 10px 0;
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
		<div class="review_write">
			<form name="reviewwriteForm" action="review_write_check.do" method="post" enctype="multipart/form-data">
			<div class="flame">
				<div class="product_info">
					<div class="pro_flame">
						<div class="pro_img">
						</div>
						<div class="pro_text">
							<ul>
								<li>상품제목/<a>옵션</a></li>
								<li>브랜드</li>
								<li>가격</li>
							</ul>
						</div>
					</div>
				</div>
				<span>상품에 만족하셨나요?</span>
				<div class="score_star">
					<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
			        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
			        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
			        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
			        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
				</div>
				<div class="filebox">
					<label for="file1"><span class="material-symbols-outlined">add_a_photo</span><a>사진 추가하기(0/1)</a></label> 
					<input type="file" id="file1" name="file1">
				</div>
				<span>간단하게 리뷰를 작성해 주세요!</span>
				<input type="text" class="rcontent">
				<button type="button" class="btn_style"><span>리뷰 남기기</span></button>
			</div>
			</form>
		</div>
</body>
</html>