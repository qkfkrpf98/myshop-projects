<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin.css">
    <title>관리자페이지</title> 
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
                    <a href="" class="active"><span class="las la-igloo"></span><span>Home</span></a>
                </li>
                <li>
                    <a href=""><span class="las la-users"></span><span>회원관리</span></a>
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
                <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="30px" height="30px" display="inline">
                <div>
                    <h4>고범규</h4>
                    <small>사이트 관리 전용</small>
                </div>
            </div>
        </header>

        <main>

            <div class="cards">
                <div class="card-single">
                    <div>
                        <h1>54</h1>
                        <span>회원수</span>
                    </div>
                    <div>
                        <span class="las la-users"></span>
                    </div>
                </div>

                <div class="card-single">
                    <div>
                        <h1>79</h1>
                        <span>상품수</span>
                    </div>
                    <div>
                        <span class="las la-clipboard"></span>
                    </div>
                </div>

                <div class="card-single">
                    <div>
                        <h1>124</h1>
                        <span>주문수</span>
                    </div>
                    <div>
                        <span class="las la-shopping-bag"></span>
                    </div>
                </div>

                <div class="card-single">
                    <div>
                        <h1>$6k</h1>
                        <span>방문자수</span>
                    </div>
                    <div>
                        <span class="las la-door-open"></span>
                    </div>
                </div>
            </div>
            
            <div class="recent-grid">
                <div class="projects">
                    <div class="card">
                        <div class="card-header">
                            <h3>최근 주문</h3>

                            <button>자세히보기<span class="las la-arrow-right">
                            </span></button>
                        </div>

                        <div class="card-body">
                            <table width="100%">
                                <thead>
                                    <tr>
                                        <td>구매자</td>
                                        <td>상품정보</td>
                                        <td>결제금액</td>
                                        <td>상태</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>김범수</td>
                                        <td>22SS 톰브라운 셔츠 히든 옥스퍼트 White</td>
                                        <td>455,000</td>
                                        <td>
                                            <span class="status"></span>
                                            주문취소
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="customers">
                    <div class="card">
                        <div class="card-header">
                            <h3>New customer</h3>

                            <button>자세히 보기<span class="las la-arrow-right">
                            </span></button>
                        </div>

                        <div class="card-body">
                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>

                            <div class="customer">
                                <div class="info">
                                    <img src="http://localhost:9000/myshop/resources/images/4dda8b6ed915b478044d8db587d11da7.jpeg" alt="" width="40px" height="40px">
                                    <div>
                                        <h4>Lewis S. Cunningham</h4>
                                        <small>CEO Excerpt</small>
                                    </div>
                                </div>
                                <div class="contact">
                                    <span class="las la-user-circle"></span>
                                    <span class="las la-comment"></span>
                                    <span class="las la-phone"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
            
        </main>

    </div>
</body>
</html>