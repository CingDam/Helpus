<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script scr="jqeury"></script>
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
				<c:if test="${list.size() < 1}">
					<tr>
						<td colspan="6">업체가 없습니다</td>
					</tr>
				</c:if>
				<c:forEach var="item" items="${list }">
					<tr>
						<td>${item.coName }</td>
						<td class="keywordlist"></td>
						<c:if test="${item.reviewScore == 0 }">
							<td>0</td>
						</c:if>
						<c:if test="${item.reviewScore > 0 }">
							<td>${item.reviewScore}</td>
						</c:if>
					</tr>
				</c:forEach>
		</tbody>
	</table>
</body>
</html>