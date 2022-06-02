<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="../css/chat.css" />
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/postmsg.js"></script>
<script>
	const login_user = "${sessionScope.user.userName}"
</script>
</head>
<body>
	 <div id="sendmessage">
        <input type="text" placeholder ="Send message" />
        <button id="send"></button>
      </div>
</body>
</html>