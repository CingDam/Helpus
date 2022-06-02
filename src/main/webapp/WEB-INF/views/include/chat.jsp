<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<body>
	<c:if test="${sessionScope.user != null && sessionScope.company == null}">
		<div id="chatbtn">
    <i class="fa-solid fa-message"></i>
  </div>

  <div id="chatbox">
    <div id="topmenu">
      <div id="chatclose"><i class="fa-solid fa-xmark"></i></div>
    </div>

    <div id="chatlist" >
      
      <div class="chat">
        <img src="img/avatar.png" />
        <p>
          <strong>클린앤클리어</strong>
        </p>
        <div class="status available"></div>
      </div>


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
        <span>키워드</span>
      </div>

      <div id="chat-messages">
        <label>6월 14일 금요일</label>

        <div class="message right">
          <div class="bubble">
            안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요
            <div class="corner"></div>
          </div>
        </div>

        <div class="message">
          <img src="img" />
          <div class="bubble">
            안녕하세요안녕하세요안녕하세요안녕하세요
            <div class="corner"></div>
          </div>
        </div>

        <div class="message">
          <img src="img" />
          <div class="bubble">
            안녕하세요안녕하세요안녕하세요안녕하세요
            <div class="corner"></div>
          </div>
        </div>

        <div class="message">
          <img src="img" />
          <div class="bubble">
            안녕하세요안녕하세요안녕하세요안녕하세요
            <div class="corner"></div>
          </div>
        </div>

      </div>

      <div id="sendmessage">
        <input type="text" value="Send message" />
        <button id="send"></button>
      </div>

    </div>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	</c:if>
</body>
