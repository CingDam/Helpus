let user_val = 0;

$(function() {

	$('#login_put').on('click', function() {
		openLoginModal();
	})
	$('#closeBtn_login').on('click', function() {
		console.log('눌림')
		closeLoginModal();
	})

	$(document).mouseup(function(e) {

		const target = $('#modal_login')

		if (target.has(e.target).length == 0) {
			closeLoginModal();
		}
	});

	$('#co_btn').on('click', function() {
		
		btnCoCssChange()

	})

	$('#user_btn').on('click', function() {
		btnUserCssChange()
	})

	$('#login_submit').click(function() {
		if ($('.id_input > input').val() != "" && $('.pw_input > input').val() != "") {

			let item = null;

			login_ajax(item);

		} else if ($('.id_input > input').val() == "") {
			alert('아이디를 입력해주세요');
			$('.id_input > input').focus();
		} else if ($('.pw_input > input').val() == "") {
			alert('비밀번호를 입력해주세요');
			$('.pw_input > input').focus();
		} else {
			alert('아이디와 비밀번호를 입력해주세요')
			$('.id_input > input').focus();
		}
	})
	$('#signin').click(function() {
		$('#modal_login').hide()
		$('#modal_signup').show()
	})

	$('#findid').click(function() {
		$('.login_box').hide()
		findidShow()
	})
	$('#findpw').click(function() {
		$('.login_box').hide()
		findpwShow()
	})

	$('#findid_submit').click(function() {
		if ($('.name_input > input').val() != "" && $('.email_input > input').val() != "") {

			const name = $('.name_input > input').val()
			const email = $('.email_input > input').val()

			findId(name, email)
		} else if ($('.name_input > input').val() == "") {
			alert('이름을 입력해주세요');
			$('.name_input > input').focus();
		} else if ($('.email_input > input').val() == "") {
			alert('이메일을 입력해주세요');
			$('.email_input > input').focus();
		}
	})
	$('#findpw_submit').click(function() {
		if ($('#findpw_input_box > .id_input > input').val() != "" && $('#findpw_input_box > .email_input > input').val() != "") {

			const id = $('#findpw_input_box > .id_input > input').val()
			const email = $('#findpw_input_box > .email_input > input').val()

			findPw(id, email)
		} else if ($('#findpw_input_box > .id_input > input').val() == "") {
			alert('아이디를 입력해주세요');
			$('.name_input > input').focus();
		} else if ($('#findpw_input_box > .email_input > input').val() == "") {
			alert('이메일을 입력해주세요');
			$('.email_input > input').focus();
		}
	})
})

function login_ajax(item) {

	if (user_val == 0) {
		item = {
			userId: $('.id_input > input').val(),
			userPw: $('.pw_input > input').val()
		}

		$.ajax(`/login/user`, {
			method: "POST",
			contentType: 'application/json',
			data: JSON.stringify(item),
			success: result => {
				if (result == 'OK') {
					alert("환형합니다")
					location.reload();
				}
				if (result == 'FAIL') {
					$('.pw_input > input').val("");
					alert("아이디와 비밀번호를 확인해주세요")
				}
				
				if (result == 'EMAIL') {
					location.href = "/email";
				}
			}

		})
	};

	if (user_val == 1) {
		item = {
			coId: $('.id_input > input').val(),
			coPw: $('.pw_input > input').val()
		}

		$.ajax(`/login/company`, {
			method: "POST",
			contentType: 'application/json',
			data: JSON.stringify(item),
			success: result => {
				if (result == 'OK') {
					location.href = `company/${item.coId}`;
				}
				if (result == 'FAIL') {
					$('.pw_input > input').val("");
					alert("아이디와 비밀번호를 확인해주세요")
				}
				if (result == 'EMAIL') {
					location.href = "/email";
				}
			}

		})
	};
}

function findPw(id, email) {

	if (user_val == 0) {
		const item = {
			userId: id,
			userEmail: email
		}

		$.ajax('/find_pw_user', {
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify(item),
			success: (result) => {
				let html ='<div class="change_pw">';
				
				
				
				if(result == false){
					alert('등록된 계정이 없습니다');
					$('input').val("");
				} else {
					$('.findpw_box').hide()
					html += `<div class="input_box">
								<div class="pw_input">
									<input type="text" placeholder="비밀번호">
								</div>
								<div class="pw_ck_input">
									<input type="text" placeholder="비밀번호 확인">
								</div>
							</div>`
					html += '<div class="button_box"><button id="change">변경</button></div>'
					html += '</div>'
				}
				
					
				$('.login_modal').append(html);
				
				$('#co_btn').on('click', function() {
					btnUserCssChange()
					$('.change_pw').remove()
					$('.findpw_box').show()
					$('input').val("")
				})
				
				$('#change').click(function(){
					
					console.log(user_val)
					
					const pw = $('#change_pw').val()
					
					if($('#change_pw').val() == $('#change_ck_pw').val()){
						changePw(id,pw)
					} else {
						alert("비밀번호가 일치하지 않습니다")
						$('#change_pw').val("")
						$('#change_ck_pw').val("")
					}
				})
			}
		})
	}
	
	if (user_val == 1) {
		const item = {
			coId: id,
			coEmail: email
		}

		$.ajax('/find_pw_co', {
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify(item),
			success: (result) => {
				
				let html ='<div class="change_pw">';
				
				if(result==false){
					alert('등록된 계정이 없습니다')
					$('input').val("")
				} else {
					$('.findpw_box').hide()
					html += `<div class="input_box">
								<div class="pw_input">
									<input type="password" id="change_pw" placeholder="비밀번호">
								</div>
								<div class="pw_ck_input">
									<input type="password" id="change_ck_pw" placeholder="비밀번호 확인">
								</div>
							</div>`
					html += '<div class="button_box"><button id="change">변경</button></div>'
					html += '</div>'
				}
				
					
				$('.login_modal').append(html);
				
				$('#user_btn').on('click', function() {
					btnUserCssChange()
					$('.change_pw').remove()
					$('.findpw_box').show()
					$('input').val("")
				})
				
				$('#change').click(function(){
					
					console.log(user_val)
					
					const pw = $('#change_pw').val()
					if($('#change_pw').val() == $('#change_ck_pw').val()){
						changePw(id,pw)
					} else {
						alert("비밀번호가 일치하지 않습니다")
						$('#change_pw').val("")
						$('#change_ck_pw').val("")
					}
					
				})
			}
		})
	}


}

function changePw(id,pw){
	
	if(user_val==0){
		$.ajax("/change_pw_user",{
		method: "POST",
		contentType: "application/json",
		data: JSON.stringify({
				userId : id,
				userPw : pw
				
		}),
		success : result => {
				alert('변경이 되었습니다.')
				location.reload()
		}
	})
	}
	if(user_val=1){
		$.ajax("/change_pw_co",{
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify({
				coId : id,
				coPw : pw
			}),
			success : result => {
				alert('변경이 되었습니다.')
				location.reload()
			}
		})
	}

}

function findId(name, email) {

	if (user_val == 0) {
		const item = {
			userName: name,
			userEmail: email
		}

		$.ajax('/find_id_user', {
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify(item),
			success: (result) => {
				const {userId,userName} = result;
				let html ='<div class="find_id">';
				
				$('.findid_box').hide()
				if(userId == null){
					html += `<div class="text_box">등록된 아이디가 없습니다</div>`
					html += '<div class="button_box"><button id="close">닫기</button></div>'
					html += '</div>'
				} else {
					html += `<div class="text_box">${userName} 님의 아이디는<br> ${userId}입니다</div>`
					html += '<div class="button_box"><button id="close">닫기</button></div>'
					html += '</div>'
				}
				
					
				$('.login_modal').append(html);
				
				$('#close').click(function(){
					closeLoginModal()
				})
			}
		})
	}
	
	if (user_val == 1) {
		const item = {
			coName: name,
			coEmail: email
		}

		$.ajax('/find_id_co', {
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify(item),
			success: (result) => {
				const {coId,coName} = result;
				let html ='<div class="find_id">';
				
				$('.findid_box').hide()
				if(coId == null){
					html += `<div class="text_box">등록된 아이디가 없습니다</div>`
					html += '<div class="button_box"><button id="findpw_submit">찾기</button></div>'
					html += '</div>'
				} else {
					html += `<div class="text_box">${coName} 님의 아이디는<br> ${coId}입니다</div>`
					html += '<div class="button_box"><button id="close">닫기</button></div>'
					html += '</div>'
				}
				
					
				$('.login_modal').append(html);
			}
		})
	}


}



function openLoginModal() {
	$('#modal_login').css("display", "block")
}


function closeLoginModal() {
	$('#modal_login').fadeOut(200)
	$('.login_box').show()
	$('.login_modal').css({
		"height": '600px',
		"top": "200px",
	})
	$('#user_btn').css({
			"background-color": "#fff",
			"box-shadow": "none"
		})
		$('#user_btn > p').css({
			"color": "black"
		})

		$('#co_btn').css({
			"background-color": "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('#co_btn > p').css({
			"color": "#fff"
		})
	$('.findid_box').hide()
	$('.findpw_box').hide()
	$('.find_id').hide()
	$('.change_pw').hide()
	$('input').val("");
	user_val = 0;
}
function findidShow() {
	$('.login_modal').css({
		"height": '515px',
		"transition": '1s'
	})
	$('.findid_box').delay(500).fadeIn()
}
function findpwShow() {
	$('.login_modal').css({
		"height": '515px',
		"transition": '1s'
	})
	$('.findpw_box').delay(500).fadeIn()

}

function btnUserCssChange(){
	$('#user_btn').css({
			"background-color": "#fff",
			"box-shadow": "none"
		})
		$('#user_btn > p').css({
			"color": "black"
		})

		$('#co_btn').css({
			"background-color": "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('#co_btn > p').css({
			"color": "#fff"
		})

		user_val = 0;
}

function btnCoCssChange(){
	$('#user_btn').css({
			"background-color": "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('#user_btn > p').css({
			"color": "#fff"
		})

		$('#co_btn').css({
			"background-color": "#fff",
			"box-shadow": "none"
		})
		$('#co_btn > p').css({
			"color": "black"
		})

		user_val = 1;
}
