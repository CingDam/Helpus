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
		<h1>개인 회원가입</h1>
		<form method="post" action="/signup/0">
			<div>
				<label>id</label>
				<input name="userId" type="text">
			</div>
			<div>
				<label>password</label>
				<input name="userPw" type="PASSWORD">
			</div>
			<div>
				<label>이름</label>
				<input name="userName" type="text">
			</div>
			<div>
				<label>이메일</label>
				<input name="userEmail" type="text">
			</div>
			<div>
				<label>주소</label>
				<input name="userAddress" type="text">
			</div>
			<div>
				<label>전화번호</label>
				<input name="userPhone" type="text">
			</div>
			<div>
				<button>회원가입</button>
			</div>
		</form>
	</div>
	<div>
		<h1>사업자 회원가입</h1>
		<form method="post" action="/signup/1">
			<div>
				<label>id</label>
				<input name="coId" type="text">
			</div>
			<div>
				<label>password</label>
				<input name="coPw" type="PASSWORD">
			</div>
			<div>
				<label>이름</label>
				<input name="coName" type="text">
			</div>
			<div>
				<label>이메일</label>
				<input name="coEmail" type="text">
			</div>
			<div>
				<label>전화번호</label>
				<input name="coPhone" type="text">
			</div>
			<div>
				<label>사업자번호</label>
				<input name="coRegNum" type="number">
			</div>
			<div>
				<label>주소</label>
				<input name="coAddress" type="text">
			</div>
			<div>
				<button>회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>