<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin_product_list.css">
    <script src="http://localhost:9000/myshop/resources/js/jquery-3.6.0.min.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/sidebarMenu.js"></script>
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
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
					<h3 class="search_title">상품 현황</h3>
				</div>
				<div class="seller_content">
					<div class=search>
						<div class="form_status">
							<ul class="status_list">
								<li>
									<a class="link-area">
										<span class="material-symbols-outlined"> border_all </span>		
										<div class="status-text">
											<p>전체</p>
											<strong>200</strong>
											<em>건</em>
										</div>
									</a>
								</li>
								<li>
									<a class="link-area">
											<span class="material-symbols-outlined"> shopping_cart </span>
										<div class="status-text">
											<p>판매 중</p>
											<strong>198</strong>
											<em>건</em>
										</div>
									</a>
								</li>
								<li>
									<a class="link-area">
										<span class="material-symbols-outlined">
											remove_shopping_cart </span>
										<div class="status-text">
											<p>판매 종료</p>
											<strong>2</strong>
											<em>건</em>
										</div>
									</a>
								</li>
								<li>
									<a class="link-area">
										<span class="material-symbols-outlined">
											production_quantity_limits </span>
										<div class="status-text">
											<p>품절</p>
											<strong>2</strong>
											<em>건</em>
										</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="title_box">
					<h3 class="search_title">상품 상세 조회</h3>
				</div>
				<div class="seller_content">
					<div class="list_content">
						<table class="seller_search">
							<tr>
								<th>검색</th>
								<td>
									<select class="search_class">
										<option value="defalt">분류</option>
										<option value="registration">상품번호</option>
										<option value="popularity">상품명</option>
										<option value="stock">브랜드 명</option>
									</select>
									<input type="text" class="search_bar">
								</td>
								<th>카테고리</th>
								<td>
									<select class="search_class main">
										<option value="defalt">대분류</option>
										<option value="x">준비 중</option>
									</select>
									<select class="search_class sub">
										<option value="defalt">소분류</option>
										<option value="x">준비 중</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>기간</th>
								<td colspan="3">
									<button class="period_search">오늘</button>
									<button class="period_search">1주일</button>
									<button class="period_search">1개월</button>
									<button class="period_search">3개월</button>
									<button class="period_search">6개월</button>
									<button class="period_search">1년</button>
									<button class="period_search">전체</button>
									<input type="date" class="first-date">~
									<input type="date"> 
								</td>	
							</tr>
						</table>
						<div class="seller_search_btns">
							<button class="search_btn" type="submit">검색</button>
							<button class="search_btn" type="reset">초기화</button>
						</div>
					</div>
				
				</div>
				<div class="seller_list">
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
							<button type="button">선택 삭제</button>
							<button type="button">상품 등록</button>
						</div>
					</div>
					<div class="list_content">
						<div class="table_flame">
							<table class="list_table">
								<tr>
									<th><input type="checkbox"></th>
									<th>상품명</th>
									<th>브랜드</th>
									<th>카테고리</th>
									<th>재고수량</th>
									<th>판매가</th>
									<th>고정 할인가</th>
									<th>판매상태</th>
									<th>배송비</th>
									<th>상품 등록일</th>
									<th>최종 수정일</th>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
									<td>톰브라운</td>
									<td>셔츠</td>
									<td>2500</td>
									<td>200,000</td>
									<td>20,000</td>
									<td>판매 중단</td>
									<td>3,000</td>
									<td>2022/09/17</td>
									<td>2022/09/17</td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
									<td>톰브라운</td>
									<td>셔츠</td>
									<td>2500</td>
									<td>200,000</td>
									<td>20,000</td>
									<td>판매 중단</td>
									<td>3,000</td>
									<td>2022/09/17</td>
									<td>2022/09/17</td>
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