<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>사용자 정보수정</h1>
		<form method="post">
			<div>
				<label>이름</label>
				<input name="userName" type="text" value="${item.userName}">
			</div>
			<div>
				<label>이메일</label>
				<input name="userEmail" type="text" value="${item.userEmail}">
			</div>
			<div>
				<label>전화번호</label>
				<input name="userPhone" type="text" value="${item.userPhone}">
			</div>
			<div>
				<label>주소</label>
				<input name="userAddress" type="text" value="${item.userAddress}">
			</div>
			<div>
				<button>정보 수정</button>
			</div>
		</form>
	</div>
</body>
</html>