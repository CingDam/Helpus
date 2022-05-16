<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>계약서</h1>
		<form method="post">
			<div>
				<label>키워드:</label>
				<select name="keyCode">
					<c:forEach var="item" items="${list}">
						<option value="${item.keyCode}">${item.keyName}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>고객번호:</label>
				<input type="number" name="userCode">
			</div>
			<div>
				<label>계약 내용:</label>
				<textarea name="contractContents"></textarea>
			</div>
			<div>
				<label>주소:</label>
				<input type="text" name="contractAddress">
			</div>
			<div>
				<label>계약 금액:</label>
				<input type="number" name="contractPay">
			</div>
			<div>
				<button>보내기</button>
			</div>
		</form>
	</div>
</body>
</html>