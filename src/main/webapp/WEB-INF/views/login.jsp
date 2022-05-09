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
		<h1>로그인</h1>
		<form method="post" action="login/1">
			
			<div>
				<P>ID</P>
				<input type="text" name="coId" placeholder="ID를 입력해주세요">
			</div>
			<div>
				<P>PASSWORD</P>
				<input type="password" name="coPw" placeholder="비밀번호를 입력해주세요">
			</div>
			<div>
				<button>Log in</button>
			</div>
		</form>
	</div>
</body>
</html>