<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/chat.js"></script>
</head>
<body>
	<c:if test="${sessionScope.user == null} && ${sessionScope.company == null}">
		<div>
			<a href="/">로그인</a>
		</div>
	</c:if>
	<c:if test="${sessionScope.user != null}">
		<div>
			<h3>사업자 목록</h3>
			<table border="1">
				<thead>
					<th>업체명</th>
					<th>관리</th>					
				</thead>
				<tbody>
					<c:if test="${company.size() < 1}">
						<tr>
							<td colspan="2">등록 된 업체가 없습니다</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${company}">
						<tr>
							<td>${item.coName}</td>
							<td><button value="${item.coCode}" type="button" class="chat">대화하기</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<h3>채팅방 목록</h3>
			<table border="1">
				<thead>
					<th>업체명</th>
					<th>관리</th>
				</thead>
				<tbody>
					<c:forEach var="item" items="${roomList}">
						<tr>
							<td>${item.coName}</td>
							<td><a href="/chat/room/${item.roomCode}"><button type="button">방 들어가기</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
</body>
</html>