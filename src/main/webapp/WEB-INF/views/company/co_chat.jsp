<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
<script>
	login_user = "${sessionScope.company.coName}"
</script>
<div id="chat_modal">
  <div id="chatbox">
    <div id="chatview" class="p1" style="display: block;">
      <div id="profile">
        <p class="animate">고객</p>
      </div>

      <div id="chat-messages">
      </div>

      <div id="send-message">
      </div>
</div>
    <img src="../../img/basic_profile.jpg" class="floatingImg" >
    <div id="chatclose"><i class="fa-solid fa-xmark"></i></div>
  </div>
 </div>
</body>