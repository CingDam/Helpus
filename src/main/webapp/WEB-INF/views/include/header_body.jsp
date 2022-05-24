<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${sessionScope.user == null && sessionScope.company == null}">
		<div class = "header">
			<div class="header_logo">
				<img src="/img/logo.png">
			</div>
			<div class = "header_navi">
				<p class="login" id="login_put">로그인</p>
				<p class="signup" id="signup_put">회원가입</p>
			</div>	
		</div>
	</c:if>
	
	<c:if test="${sessionScope.user != null && sessionScope.company == null}">
		<div class = "header">
			<div>
				<div class="header_logo">
					<img src="/image/logo.png">
				</div>
				<div class = "header_navi">
					<a href="logout">로그아웃</a>
					<a href="/user/mypage">마이페이지</a>
				</div>	
			</div>
		</div>
	</c:if>
	
	<c:if test="${sessionScope.user == null && sessionScope.company != null}">
		<div>${sessionScope.company.coId}님</div>
		
		<div><a href="logout">로그아웃</a></div>
		<div><a href="/company/mypage">사업자 마이페이지</a></div>
		<div><a href="/company/detail_add">세부 내용작성</a></div>
	</c:if>