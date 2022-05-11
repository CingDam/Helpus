<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/detail_add.js"></script>
</head>
<body>
	<form method="post" id="detail_content">
		<div>
			<label>내용</label>
			<textarea></textarea>
		</div>
		<div>
			<label>카테고리</label>
			<select name="cateCode" id="category">
				<option>카테고리를 선택해주세요</option>
				<c:forEach var="cate" items="${cateList}" >
					<option value="${cate.cateCode }">${cate.cateName}</option>
				</c:forEach>
			</select>
		</div>
	</form>
	<div>
		<button>등록하기</button>
	</div>
</body>
</html>