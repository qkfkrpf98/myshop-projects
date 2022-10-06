<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
</head>
<style>
.bg {
	text-align: center;
	background: #fff;
}


.listArea {
	width: 100%;
	height: 498px;
	text-align: center;
	margin-top: 50px;
	margin-bottom: 20px;
}

.listTab {
	margin: 0;
	padding: 0;
	width: 1080px;
	height: 86px;
	border-bottom: 1px solid #222;
	list-style: none;
	text-align: center;
	display: inline-block;
}

.li01 {
	text-align: center;
	display: inline-blokc;
	width: 20%;
	height: 86px;
	float: left;
	box-sizing: border-box;
	position: relative;
}

.label01 {
	text-align: center;
	position: absolute;
	display: inline-block;
	left: 40%;
}

.span01 {
	padding: 30px 0;
	text-align: center;
	color: #a0a0a0;
	font-size: 20px;
	line-height: 26px;
	display: inline-block;
}

.span01:hover {
	color: black;
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+.span01 {
	display: inline-block;
	cursor: pointer;
}

input[type="radio"]:checked+.span01 {
	color: black;
	font-weight: bold;
}

.keyword {
	width: 1080px;
	background-color: lightgray;
	display: inline-block;
	padding: 50px 0;
	margin: 0;
}

.keywordTitle {
	margin-bottom: 30px;
	color: black;
	font-size: 30px;
}

.wordArea {
	width: 780px;
	margin-bottom: 30px;
	margin: auto;
}

.word {
	padding: 9px 10px;
	cursor: pointer;
	margin-left: 5px;
	margin-right: 5px;
	margin-bottom: 10px;
	font-size: 12px;
	line-height: 18px;
	border-radius: 2em;
	display: inline-block;
	background-color: #fff;
}

.word:hover {
	background-color: #d01f3c;
	color: white;
}
.search{
	display:flex;
	justify-content: center;
  	align-items: center;
}
.search_keyword{
	margin-top: 20px;
	width: 600px;
	height: 50px;
	padding: 5px;
}

.search_btn{
	margin-top: 20px;
	padding: 5px;
}


	/** 댓글 탭메뉴 **/ 
.nav {
	width:1080px;
	margin-top:10px;
}

.tabmenu input[type="radio"] {
	display: none;
}

.tabmenu label {
	display: inline-block;
	width: 10%;
	padding: 10px 0;
	font-size: 13px;
	cursor: pointer;
	text-align: center;
}

.tabmenu>div {
	display: none;
}

.tabmenu #tab1:checked ~ #cont1, .tabmenu #tab2:checked ~ #cont2,
	.tabmenu #tab3:checked ~ #cont3 {
	display: block;
}

/** 글쓰기 **/
.tabmenu button[type="button"] {
	margin-top: 1rem;
	margin-left: 34.41rem;
	cursor: pointer;
	border: #d01f3c;
	background: #d01f3c;
	color: #fff;
	font-weight: 600;
	width: 120px;
	padding: .63rem 0;
	border: none;
}

/** 평점 댓글 **/
.review {
	border-top: 1px solid #000000;
	margin-top: 10px;
}

.review_content ul {
	padding-left: 0;
}

.review_content ul li {
	list-style-type: none;
	padding: 18px 0;
	border-bottom: 1px solid #F5F5F5;
}

.review_content ul li:last-child {
	border-bottom: none;
}

.review_list {
	display: inline-flex;
}

.review_list_header_rating {
	margin-bottom: 9px;
	width: 150px;
}

.review_list_header .title {
	font-family: 'SF UI Display Semibold';
	font-size: 15px;
	font-weight: 600;
}

.review_list_header .size {
	font-size: 12px;
	color: #9B9B9B;
}

.review_list_content_header {
	display: flex;
}

.review_list_content_header div, span {
	margin-right: 4px;
}

.review_list_content_header span {
	color: #ebebeb;
}

.review_list_content_header .link {
	color: #a0a0a0;
}

.review_list_content_header a:visited {
	color: #a0a0a0;
}

.review_list_content p {
	margin: 15px 0;
	word-break: normal;
}

.review_list_content_footer {
	display: flex;
}

.review_list_content_footer button, .review_list_content_footer div {
	margin-right: 14px;
}

.review_list_content_footer button {
	padding: .32rem 1.15rem;
	background: #ffffff;
	border: 1px solid #a0a0a0;
	color: #a0a0a0;
	border-radius: .1rem;
}

.review_list_content_footer div {
	padding: .32rem 0;
}
</style>
<body>
	<!-- 베스트 리뷰 -->
	<div class="bg">
		<!-- 추천키워드 -->
		<div class="listArea">
			<ul class="listTab">
				<li class="li01"><label class="label01"> <input
						type="radio" name="tabmenu" id="tabAll" checked> <span
						class="span01">전체</span>
				</label></li>
				<li class="li01"><label class="label01"> <input
						type="radio" name="tabmenu" id="tabW"> <span
						class="span01">여성</span>
				</label></li>
				<li class="li01"><label class="label01"> <input
						type="radio" name="tabmenu" id="tabM"> <span
						class="span01">남성</span>
				</label></li>
				<li class="li01"><label class="label01"> <input
						type="radio" name="tabmenu" id="tabK"> <span
						class="span01">키즈</span>
				</label></li>
				<li class="li01"><label class="label01"> <input
						type="radio" name="tabmenu" id="tabL"> <span
						class="span01">라이프</span>
				</label></li>

			</ul>
			<div class="keyword">
				<h2 class="keywordTitle">#추천 키워드</h2>
				<div class="wordArea">
					<span class="word">#골든구스</span> <span class="word">#구찌</span> <span
						class="word">#알렉산더맥퀸</span> <span class="word">#스톤아일랜드</span> <span
						class="word">#오프화이트</span> <span class="word">#메종키츠네</span> <span
						class="word">#메종 마르지엘라</span> <span class="word">#겐조</span> <span
						class="word">#톰브라운</span> <span class="word">#스니커즈</span> <span
						class="word">#가디건</span> <span class="word">#티셔츠</span> <span
						class="word">#가방</span> <span class="word">#지갑</span> <span
						class="word">#스피드러너</span> <span class="word">#볼캡</span>
				</div>
				<div class="search">
					<input type="text" class="search_keyword" placeholder="브랜드,카테고리,상품명으로 검색하세요.">
					<button class="search_btn"><img src="http://localhost:8080/shop/resources/img/icon.png" width="50px"height="50px"
					padding="5px"></button>
				</div>
			</div>
		</div>
		<nav class="tabmenu" style="width:1080px; display:inline-block;">
			<input type="radio" name="tab" id="tab3" checked> <label
				for="tab1">최신 등록순</label> <input type="radio" name="tab" id="tab2"
				checked> <label for="tab2">최고 평점순</label> <input
				type="radio" name="tab" id="tab1" checked> <label for="tab3">추천
				많은순</label>

			<button type="button">글쓰기</button>
			<div class="review" id="cont1">
				<div class="review_content" id="review_content">
					<ul>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">미니사이즈</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈아니에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="review" id="cont2">
				<div class="review_content" id="review_content">
					<ul>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">호아퀸</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="review" id="cont3">
				<div class="review_content" id="review_content">
					<ul>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="review_list">
								<div class="review_list_header">
									<div class="review_list_header_rating">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i>
										</div>
									</div>
									<div class="title">정사이즈에요</div>
									<div class="size">구매사이즈 : 260</div>
								</div>
								<div class="review_list_content">
									<div class="review_list_content_header">
										<div>자켓</div>
										<span>|</span>
										<div class="link">
											<a href="">2022년 꼼데가르송 반팔티 레드와펜 블랙와펜 남성 여성(상품링크)</a>
										</div>
									</div>
									<p>So we needed up ordering the deep fried salmon roll
										width Chinese hot mustard and wasabi noodleSo we needed up
										ordering the deep fried salmon roll width Chinese hot mustard
										and wasabi noodless</p>
									<div class="review_list_content_footer">
										<button>
											<i class="xi-thumbs-up"></i>0
										</button>
										<div>scd***</div>
										<div>2022-09-06 11:04</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>