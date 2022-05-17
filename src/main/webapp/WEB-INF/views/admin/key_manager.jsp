<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>키워드 관리</h1>
		<h3>카테고리:${cate.cateName}</h3>
		<table border="1">
			<thead>
				<tr>
					<th>키워드 번호</th>
					<th>키워드 이름</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${key}">
					<tr>
						<td>${item.keyCode}</td>
						<td>${item.keyName}</td>
						<td><a href="#">수정</a><a href="#">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>