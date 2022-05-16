<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>계약서 목록</h1>
		<table border="1">
			<thead>
				<tr>
					<th>고객명</th>
					<th>키워드</th>
					<th>시작날짜</th>
					<th>종료날짜</th>
					<th>주소</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="6">계약서가 없습니다</td>
					</tr>
				</c:if>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.userName}</td>
						<td>${item.keyName}</td>
						<td><fmt:formatDate value="${item.contractSdate}" pattern="YYYY/MM/dd hh:mm"></fmt:formatDate></td>
						<td><fmt:formatDate value="${item.contractEdate}" pattern="YYYY/MM/dd hh:mm"></fmt:formatDate></td>
						<td>${item.contractAddress}</td>
						<td><a href="update/${item.contractCode}">수정</a> <a href="delete/${item.contractCode}">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div><a href="..">처음으로</a></div>
	</div>
</body>
</html>