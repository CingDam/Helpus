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
		<h1>사업자 정보수정</h1>
		<form method="post">
			<div>
				<label>이름</label>
				<input name="coName" type="text" value="${item.coName}">
			</div>
			<div>
				<label>이메일</label>
				<input name="coEmail" type="text" value="${item.coEmail}">
			</div>
			<div>
				<label>전화번호</label>
				<input name="coPhone" type="text" value="${item.coPhone}">
			</div>
			<div>
				<label>주소</label>
				<input name="coAddress" type="text" value="${item.coAddress}">
			</div>
			<div>
				<button>정보 수정</button>
			</div>
		</form>
	</div>
</body>
</html>