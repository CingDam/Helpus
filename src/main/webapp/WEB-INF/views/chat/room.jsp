<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/getmsg.js"></script>
</head>
<body>
	<div style="height: 600px; overflow: scroll;">
		<ul id="chat"></ul>
	</div>
	
	<input type="hidden" id="roomCode" value="${roomCode}">
	<iframe id="msgBox" src="../chat_input" style="width: 600px; height: 40px; border: none"></iframe>
</body>
</html>