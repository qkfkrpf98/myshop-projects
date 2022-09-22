<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin_ReviewList.css">
    <script src="http://localhost:9000/myshop/resources/js/jquery-3.6.0.min.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/sidebarMenu.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/admin_ReviewList.js"></script>
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
   <!--폰트어썸 최신 CDN-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>회원 관리페이지</title> 

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
					<h3 class="search_title">리뷰 상세 조회</h3>
				</div>
				<div class="review_content">
					<form name="reviewListForm" action="conditional_search.do" method="post">
						<div class="list_content">
							<table class="review_search">
								<tr>
									<th>리뷰 작성일</th>
									<td colspan="3">
										<button type="button" class="period_search" id="p1">오늘</button>
										<button type="button" class="period_search" id="p2">1주일</button>
										<button type="button" class="period_search" id="p3">1개월</button>
										<button type="button" class="period_search" id="p4">3개월</button>
										<button type="button" class="period_search" id="p5">6개월</button>
										<button type="button"class="period_search" id="p6">1년</button>
										<button type="button" class="period_search" id="p7">전체</button> <input
										type="date" class="first-date">~ <input type="date"
										class="last-date">
									</td>
								</tr>
								<tr>
									<th>구매자 평점</th>
									<td><input type="checkbox" id="review_check1"> <label
										for="review_check1"></label> <span>1점</span> <input
										type="checkbox" id="review_check2"> <label
										for="review_check2"></label> <span>2점</span> <input
										type="checkbox" id="review_check3"> <label
										for="review_check3"></label> <span>3점</span> <input
										type="checkbox" id="review_check4"> <label
										for="review_check4"></label> <span>4점</span> <input
										type="checkbox" id="review_check5"> <label
										for="review_check5"></label> <span>5점</span></td>
									<th>답글 여부</th>
									<td><select class="answer_search_class">
											<option value="defalt">선택 안함</option>
											<option value="unanswered">미 답글</option>
											<option value="answer">답글</option>
									</select></td>
								</tr>
								<tr>
									<th>전시상태</th>
									<td><input type="radio" id="review_radio1"
										name="exhibition_status" checked="checked"> <label
										for="review_radio1"></label> <span>전체</span> <input
										type="radio" id="review_radio2" name="exhibition_status">
										<label for="review_radio2"></label> <span>정상</span> <input
										type="radio" id="review_radio3" name="exhibition_status">
										<label for="review_radio3"></label> <span>블라인드</span></td>
								</tr>
								<tr>
									<th>검색</th>
									<td><select class="search_class">
											<option value="defalt">분류</option>
											<option value="review_title">리뷰 게시판 제목</option>
											<option value="product_title">상품 제목</option>
											<option value="review_num">리뷰 번호</option>
											<option value="product_id">상품 아이디</option>
									</select> <input type="text" class="search_bar"></td>
									<th>카테고리</th>
									<td><select class="search_class_main">
											<option value="defalt">대분류</option>
											<option value="x">준비 중</option>
									</select> <select class="search_class_sub">
											<option value="defalt">소분류</option>
											<option value="x">준비 중</option>
									</select></td>
								</tr>
							</table>
							<div class="review_search_btns">
								<button class="search_btn" type="submit">검색</button>
								<button class="search_btn" type="reset" id="btnReset">초기화</button>
							</div>
						</div>
					</form>

				</div>
				<div class="review_list">
					<div class="list_heading">
						<div class="heading_left">
							<h3>상품 목록(총 200개)</h3>
						</div>
						<div class="heading_right">
							<select>
								<option value="defalt">정렬</option>
								<option value="registration">상품 등록일 순</option>
								<option value="popularity">인기도 순</option>
								<option value="stock">남은 재고 수량순</option>
							</select>
							<button type="button" class="btn_delete">선택 삭제</button>
						</div>
					</div>
					<div class="list_content">
						<div class="table_flame">
							<table class="list_table">
								<tr>
									<th><input type="checkbox" class="review_check" name="checkAll"></th>
									<th>리뷰 제목</th>
									<th>리뷰 등록자</th>
									<th>구매 상품명</th>
									<th>상품 카테고리</th>
									<th>구매자 평점</th>
									<th>리뷰 조회수</th>
									<th>리뷰 등록일</th>
									<th>전시상태</th>
									<th>답글 여부</th>
								</tr>
								<tr>
									<td><input type="checkbox" class="review_check" name="check"></td>
									<td>굿</td>
									<td>강**</td>
									<td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
									<td>셔츠</td>
									<td>5.0</td>
									<td>20 회</td>
									<td>2022/09/17</td>
									<td>블라인드</td>
									<td>미 답글</td>
								</tr>
								<tr>
									<td><input type="checkbox" class="review_check" name="check"></td>
									<td>굿</td>
									<td>강**</td>
									<td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
									<td>셔츠</td>
									<td>5.0</td>
									<td>20 회</td>
									<td>2022/09/17</td>
									<td>블라인드</td>
									<td>미 답글</td>
								</tr>
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>

    </div>
</body>
</html>