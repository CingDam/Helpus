<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
<div class="modal_background_signup" id="modal_signup">
	<div class="signup_modal">
		<div class="closeBtn" id="closeBtn_signup">&times;</div>
		<div>
			<img class="logo" src="/img/logo.png">
		</div>
		<div class="division">
			<div class="user_btn" id="signup_user">
				<i class="fa-solid fa-user"></i>
				<p>사용자</p>
			</div>
			<div class="co_btn" id="signup_co">
				<i class="fa-solid fa-user-tie"></i>
				<p>사업자</p>
			</div>
		</div>
		<div class="user_input">
	        <div class="input_box">
	            <div>
	                <input class="id" id="userId" type="text" placeholder="아이디">
	                <input id="user_checkId" type="hidden">
	            </div>
	            <span class="check_msg1">사용 가능한 아이디입니다</span>
	            <span class="check_msg2">이미 사용 중인 아이디입니다</span>
	            <div>
	                <input class="pw" id="userPw" type="password" placeholder="비밀번호">
	            </div>
	            <div>
	                <input class="pw_ck" id="userPw_ck" type="password" placeholder="비밀번호 확인">
	            </div>
	            <div>
	                <input class="name" id="userName" type="text" placeholder="이름">
	            </div>
	            <div>
	                <input class="address" id="userAddress" type="text" placeholder="주소">
	            </div>
	            <div>
	                <input class="phone" id="userPhone" type="text" placeholder="전화번호">
	            </div>
	            <div>
	                <input class="email" id="userEmail" type="text" placeholder="이메일">
	            </div>
	        </div>
	        <div class="button_box">
	        	<button id="button_box_user" type="button">회원가입</button>
	        </div>
    	</div>
    	<div class="co_input">
	        <div class="input_box">
	            <div>
	                <input class="id" id="coId" type="text" placeholder="아이디">
	                <input id="co_checkId" type="hidden">
	            </div>
	            <span class="check_msg1">사용 가능한 아이디입니다</span>
	            <span class="check_msg2">이미 사용 중인 아이디입니다</span>
	            <div>
	                <input class="pw" id="coPw" type="password" placeholder="비밀번호">
	            </div>
	            <div>
	                <input class="pw_ck" id="coPw_ck" type="password" placeholder="비밀번호 확인">
	            </div>
	            <div>
	                <input class="name" id="coName" type="text" placeholder="이름">
	            </div>
	            <div>
	                <input class="address" id="coAddress" type="text" placeholder="주소">
	            </div>
	            <div>
	                <input class="phone" id="coPhone" type="text" placeholder="전화번호">
	            </div>
	            <div>
	                <input class="email" id="coEmail" type="text" placeholder="이메일">
	            </div>
	            <div>
	                <input class="co_auth" id="coRegNum" type="text" placeholder="사업자등록번호">
	            </div>
	        </div>
	        <div class="button_box">
	        	<button id="button_box_co" type="button">회원가입</button>
	        </div>
    	</div>
	</div>
</div>
</body>
