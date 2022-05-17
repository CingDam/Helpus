<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<c:if test="${msg != null}">
	<script>
		window.onload = function(){
			alert("${msg}")
		}
	</script>
</c:if>
<jsp:include page="include/header.jsp"></jsp:include>
<link rel="stylesheet" href="/css/mainpage.css">
</head>
<body>
<jsp:include page="include/header_body.jsp"></jsp:include>
	<div class="banner">
		<div class="banner_write">
			<p class="frist_line">무엇을 도와드릴까요?</p>
			<p class="second_line">믿을 수 있는 당신 근처의 전문가</p>
		</div>
		<form  method="post" action="/list">
			<input class="search_bar" type="text" name="keyword" placeholder="검색어를 입력하세요">
		</form>
	</div>
	<div class="cate_list_box">
		<ul>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
		</ul>
	</div>
	<div class="day_key">
		<div class="text_box">
			<p class="subhead">오늘은 대청소 하는 날</p>
			<p class="text">
				침대는 주기적으로 청소청소 대청소 대청소<br>
				매트리스에는 수많은 세균세균<br>
				청소청소 미세먼지 진드기 청소청소
			</p>
			<button class="day_key_submit">신청하기</button>
		</div>
		<div class="img_box">
			<p class="subhead">침대/매트리스 청소</p>
			<div class="img"></div>
		</div>
	</div>
	<div class="local_popul_service">
		<p>우리 지역 인기 서비스</p>
		<div class="contents">
			<ul>
				<li></li>
			</ul>
		</div>
	</div>
</body>
</html>
