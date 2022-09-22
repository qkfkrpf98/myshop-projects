<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="http://localhost:9000/myshop/resources/css/admin_message.css">
    <script src="http://localhost:9000/myshop/resources/js/jquery-3.6.0.min.js"></script>
    <script src="http://localhost:9000/myshop/resources/js/sidebarMenu.js"></script>
    <title>관리자 메세지 보내지 페이지</title> 
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
                    <a href=""><span class="las la-igloo"></span><span>Home</span></a>
                </li>

                <li class="menu">
                    <a class="active"><span class="las la-users"></span><span>사용자 관리</span></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="http://127.0.0.1:5500/adminCustomerCare.html"><span>사용자 목록</span></a>
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

                <div class="admin-message">
                    <div class="card">
                        <div class="card-header">
                            <h3>메세지 보내기</h3>
                        </div>
                        <nav class="tabmenu">
                            <input type="radio" name="tab" id="tab1" checked>
                            <label for="tab1">알림</label>
                            <span>|</span>
                            <input type="radio" name="tab" id="tab2" checked>
                            <label for="tab2">SMS</label>
                            
                        <div class="card-body" id="cont1">
                            <h3>알림 보내기</h3>
                            <select name="" id="">
                                <option value="" selected>선택</option>
                                <option value="">전체회원</option>
                                <option value="">개인회원</option>
                            </select>
                            
                            <p>개별 회원에게 보내고 싶으시면 사용자 목록에서 사용자를 선택하여 발송하세요.<br>
                                iOS 또는 안드로이드 사용자에게 알림(푸시)은 100% 도달은 보장하지 않습니다.</p>
                            <ul>
                                <li class="messageTitle">
                                    <label type="text" for="">제목</label>
                                    <input type="text">
                                </li>
                                <li class="messageContent">
                                    <label>내용</label>
                                    <textarea name="content"></textarea>
                                </li>
                                <li>
                                    <div class="filebox">
                                        <label for="file1">
                                            <div class="btn-upload">이미지 첨부</div>
                                        </label>
                                        <input type="file" id="file1">
                                    </div>
                                </li>
                                <li class="messageReservation">
                                    <input type="checkbox">
                                    <label for="">발송예약</label>
                                    <input type="datetime-local">
                                </li>
                                <li>
                                    <button type="button">보내기</button>
                                </li>
                            </ul> 
                        </div>
    
                        <div class="card-body" id="cont2">
                            <h3>SMS보내기</h3>
                            <select name="" id="">
                                <option value="" selected>선택</option>
                                <option value="">전체회원</option>
                                <option value="">개인회원</option>
                            </select>
                            <p>개별 회원에게 보내고 싶으시면 사용자 목록에서 사용자를 선택하여 발송하세요.<br>
                                iOS 또는 안드로이드 사용자에게 알림(푸시)은 100% 도달은 보장하지 않습니다.</p>
                            <ul>
                                <li class="messageTitle">
                                    <label type="text" for="">제목</label>
                                    <input type="text">
                                </li>
                                <li class="messageContent">
                                    <label>내용</label>
                                    <textarea name="content"></textarea>
                                </li>
                                <li>
                                    <div class="filebox">
                                        <label for="file1">
                                            <div class="btn-upload">이미지 첨부</div>
                                        </label>
                                        <input type="file" id="file1">
                                    </div>
                                </li>
                                <li class="messageReservation">
                                    <input type="checkbox">
                                    <label for="">발송예약</label>
                                    <input type="datetime-local">
                                </li>
                                <li>
                                    <button type="button">보내기</button>
                                </li>
                            </ul> 
                            </div>
                    </nav>
                        
                    </div>
                </div>
                
            </div>
            
            <div class="cards">
                <div class="card-single">
                    <h3>최근 30일 발송 알림</h3>
                    <table>
                        <tr>
                            <th>제목</th>
                            <th>보낸사람</th>
                            <th>받는사람</th>
                            <th>발송일</th>
                        </tr>
                        <tr>
                            <td>2020년 신년 인사드립니다.</td>
                            <td class="title">고범규</td>
                            <td>전체회원</td>
                            <td>2022-03-01</td>
                        </tr>
                        <tr>
                            <td>2019년 배송,운영공지</td>
                            <td>김철수</td>
                            <td>전체회원</td>
                            <td>2022-01-13</td>
                        </tr>
                        <tr>
                            <td>2020년 신년 인사드립니다.</td>
                            <td class="title">고범규</td>
                            <td>전체회원</td>
                            <td>2022-03-01</td>
                        </tr>
                        <tr>
                            <td>2019년 배송,운영공지</td>
                            <td>전체회원</td>
                            <td>김철수</td>
                            <td>2022-01-13</td>
                        </tr>
                </table>
                </div>
            
                <div class="card-single">
                    <h3>예약된 알림</h3>
                    <table>
                        <tr>
                            <th>제목</th>
                            <th>보낸사람</th>
                            <th>받는사람</th>
                            <th>알림 예약시간</th>
                        </tr>
                        <tr>
                            <td>2020년 신년 인사드립니다.</td>
                            <td class="title">고범규</td>
                            <td>전체회원</td>
                            <td>2022-03-01</td>
                        </tr>
                        <tr>
                            <td>2019년 배송,운영공지</td>
                            <td>김철수</td>
                            <td>전체회원</td>
                            <td>2022-01-13</td>
                        </tr>
                        <tr>
                            <td>2020년 신년 인사드립니다.</td>
                            <td class="title">고범규</td>
                            <td>전체회원</td>
                            <td>2022-03-01</td>
                        </tr>
                        <tr>
                            <td>2019년 배송,운영공지</td>
                            <td>전체회원</td>
                            <td>김철수</td>
                            <td>2022-01-13</td>
                        </tr>
                </table>
                </div>
            
        </main>
        
    </div>
</body>

</html>