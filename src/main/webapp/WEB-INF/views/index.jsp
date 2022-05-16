<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:if test="${msg != null}">
	<script>
		window.onload = function(){
			alert("${msg}")
		}
	</script>
</c:if>
<style>
body{

margin:0 auto;
position: absolute;
width: 1920px;
height: 4000px;

background: #FFFFFF;
	

}
.header{
	
	position: relative;
	width: 1200px;
	height: 38px;
	left: 360px;
	top: 26px;

}
.header_logo{
	position: absolute;
	width: 146px;
	height: 38px;
}
.header_navi{
	position: absolute;
	width: 147px;
	height: 20px;
	left: 907px;
	
}
.banner{
	position: relative;
	width: 1920px;
	height: 470px;
	top: 90px;
	
	background: #2E407B;
}
.search_bar{
	box-sizing: border-box;
	
	position: absolute;
	width: 600px;
	height: 60px;
	left: 660px;
	top: 320px;
	
	background: #FFFFFF;
	border: 2px solid #FFFFFF;
	border-radius: 20px;
	
	padding : 0 0 0 30px;
	
	/*검색창 폰트*/
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
}
.search_bar:focus{
	outline : none;
}
.banner_write > .frist_line {
	position: relative;
	width: 450px;
	height: 61px;
	left: 700px;
	top: 110px;
	
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 42px;
	line-height: 61px;
	/* identical to box height */
	text-align: center;
	
	color: #FFFFFF;
}
.banner_write > .second_line {
	position: absolute;
	width: 300px;
	height: 26px;
	left: 778px;
	top: 171px;
	
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	/* identical to box height */
	text-align: center;
	
	color: #CCCCCC;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.user == null && sessionScope.company == null}">
		<div class = "header">
			<div class="header_logo">
				<p>HELPUS</p>
			</div>
			<div class = "header_navi">
				<a href="login">로그인</a>
				<a href="signup">회원가입</a>
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
	<div class="banner">
		<div class="banner_write">
			<p class="frist_line">무엇을 도와드릴까요?</p>
			<p class="second_line">믿을 수 있는 당신 근처의 전문가</p>
		</div>
		<form  method="post" action="/list">
			<input class="search_bar" type="text" name="keyword" placeholder="검색어를 입력하세요">
		</form>
	</div>
	<div>
		<ul>
			<li>
		</ul>
	</div>
</body>
</html>