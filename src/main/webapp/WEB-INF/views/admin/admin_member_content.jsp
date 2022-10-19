<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.member_content{
		width:500px;
		border: 1px solid black;
		height:800px;
	}
	.header{
		padding: 0px 10px;
		height:40px;
		line-height:40px;
		background: #323232;
	}
	.title{
		display:inline-block;
		color:#fff;
	}
	.mcontent{
		margin: 10px;
	}
</style>
</head>
<body>
	<div class="member_content">
		<div class="header">
			<div class="title">test(홍길동)님의 회원정보입니다.</div>
		</div>
		<div class="mcontent">
			<div class="subtitle">■ 회원 기본 정보</div>
			<table>
				<tr>
					<th>아이디</th>
					<td>test</td>
				</tr>
				<tr>	
					<th>이름</th>
					<td>홍길동</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>qkfkrpf98@naver.com</td>
				</tr>
				<tr>
					<th>회원 등급</th>
					<td>VIP</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td>2022-10-19</td>
				</tr>
				<tr>
					<th>최근 접속일</th>
					<td>2022-10-19</td>
				</tr>
			</table>
			<button type="button" class="btn_update">정보수정</button>
			<div class="subtitle">■ 사이트 가입 정보</div>
			<table>
				<tr>
					<th>주소</th>
					<td>02354 서울시 울진구 방범아파트</td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td>01045622546</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>1910-10-25</td>
				</tr>
				<tr>
					<th>이메일 수신여부</th>
					<td>동의</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>남</td>
				</tr>
			</table>
			<button type="button" class="btn_close">닫기</button>
		</div>
		
	</div>

</body>
</html>