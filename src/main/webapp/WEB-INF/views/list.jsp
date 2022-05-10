<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<td>업체명</td>
				<td>키워드명</td>
				<td>리뷰점수</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:if test="${list.size() < 1}">
					<td colspan="6">업체가 없습니다</td>
				</c:if>
				<c:forEach var="item" items="${list }">
					<td>${item.coName }</td>
					<td>
						${item.keyName }
					</td>
					<c:if test="${item.reviewScore == 0 }">
						<td>0</td>
					</c:if>
					<c:if test="${item.reviewScore > 0 }">
						<td>${item.reviewScore}</td>
					</c:if>
				</c:forEach>
			</tr>
		</tbody>
	</table>
</body>
</html>