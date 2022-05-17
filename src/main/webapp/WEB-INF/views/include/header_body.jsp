<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${sessionScope.user == null && sessionScope.company == null}">
		<div class = "header">
			<div class="header_logo">
				<p>HELPUS</p>
			</div>
			<div class = "header_navi">
				<a class="login" href="login">로그인</a>
				<a class="signup" href="signup">회원가입</a>
			</div>	
		</div>
	</c:if>
	
	<c:if test="${sessionScope.user != null && sessionScope.company == null}">
		<div>
			<div>${sessionScope.user.userId}님</div>
			<div><a href="logout">로그아웃</a></div>
			<div><a href="/user/mypage">유저 마이페이지</a></div>	
		</div>
	</c:if>
	
	<c:if test="${sessionScope.user == null && sessionScope.company != null}">
		<div>${sessionScope.company.coId}님</div>
		
		<div><a href="logout">로그아웃</a></div>
		<div><a href="/company/mypage">사업자 마이페이지</a></div>
		<div><a href="/company/detail_add">세부 내용작성</a></div>
	</c:if>