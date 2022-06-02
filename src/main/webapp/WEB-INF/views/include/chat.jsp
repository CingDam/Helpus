<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<body>
	<script>
		const login_user = "${sessionScope.user.userName}"
	</script>
	<c:if test="${sessionScope.user != null && sessionScope.company == null}">
		<div id="chatbtn">
    <i class="fa-solid fa-message"></i>
  </div>

  <div id="chatbox">
    <div id="topmenu">
      <div id="chatclose"><i class="fa-solid fa-xmark"></i></div>
    </div>

    <div id="chatlist" >
    </div>
    
    <div id="search">
      <input type="text" id="searchfield" value="Search" />
    </div>

    <div id="chatview" class="p1">
      <div id="profile">
        <div id="close">
          <div class="cy"></div>
          <div class="cx"></div>
        </div>
        <p>사업자</p>
      </div>

      <div id="chat-messages">
      </div>
		<iframe src="chat/chat_input" style="border: none; height: 60px;width: 290px;"></iframe>
    </div>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	</c:if>
</body>
