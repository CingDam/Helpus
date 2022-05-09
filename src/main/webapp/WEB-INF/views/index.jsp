<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery.3.6.0.min.js"></script>
</head>
<body>
	<form method="post" action="/list">
		<input type="text" name="keyword">
	</form>
	<c:if test="${sessionScope.user == null && sessionScope.company == null}">
		<div><a href="login">로그인</a></div>
		<div><a href="signup">회원가입</a></div>	
	</c:if>
	
	<c:if test="${sessionScope.user != null || sessionScope.company != null}">
		<div>${sessionScope.user.userId}님</div>
		<div>${sessionScope.company.coId}님</div>
		
		<div><a href="logout">로그아웃</a></div>
		<div><a href="mypage">마이페이지</a></div>	
	</c:if>
	
	<div>
		<div><a href="checkId">중복검사</a></div>
	</div>
	<div>
		<div><a href="/company/get_co">사업자 정보 수정</a></div>
	</div>
</body>
</html>