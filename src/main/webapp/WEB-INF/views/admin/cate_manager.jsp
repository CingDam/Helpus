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
		<h1>카테고리 관리</h1>
		<table border="1">
			<thead>
				<tr>
					<th>카테고리 번호</th>
					<th>카테고리 이름</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${cate}">
					<tr>
						<td>${item.cateCode}</td>
						<td><a href="key_manager/${item.cateCode}">${item.cateName}</a></td>
						<td><a href="#">수정</a><a href="#">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>