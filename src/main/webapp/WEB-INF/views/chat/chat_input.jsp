<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/js/postmsg.js"></script>
<script src="/js/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
<script>
</script>
</head>
<body>
	<div>
		<div>
			<input type="hidden" id="nickname" value="${sessionScope.user.userId}">
			<label>메세지</label>
			<input id="msg" type="text">
			<button onclick="send()">보내기</button>
		</div>
	</div>
</body>
</html>