<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal_background_login" id="modal_login">
	<div class="login_modal">
		<div class="closeBtn" id="closeBtn_login">&times;</div>
				<div class="division">
					<div class="user_btn" id="user_btn">
						<p>사용자</p>
					</div>
					<div class="co_btn" id="co_btn">
						<p>사업자</p>
					</div>
				</div>
				<div class="logo_box">
					<img class="logo" src="./img/logo.svg">
				</div>
				<div class="login_box">
				<div class="input_box">
					<div class="id_input">
						<input type="text" placeholder="아이디">
					</div>
					<div class="pw_input">
						<input type="password" placeholder="비밀번호">
					</div>
				</div>
				<div class="button_box">
					<button id="login_submit">로그인</button>
				</div>
				<div class="option_box">
					<p id="findid">아이디 찾기</p> <p>|</p>
					<p id="findpw">비밀번호 찾기</p> <p>|</p>
					<p id="signin">회원가입</p>
				</div>
			</div>
			<jsp:include page="../modal/findidpw.jsp"/>
		</div>
		
</div>