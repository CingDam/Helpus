let signup_user_val=0;

$(function(){
	
	$('#signup_put').on('click',function(){
		openSignupModal();
		console.log('클릭')
	})
	$('#closeBtn_signup').on('click',function(){
		closeSingupModal();
	})
	
	$('#signup_user').click(function(){
		userSignup(signup_user_val);
	})
	$('#signup_co').click(function(){
		
		signup_user_val = 1;
		
		coSignup(signup_user_val);
	})
	
	$('#button_box_user').click(function(){
		const userId = $('#userId');
		const user_checkId = $('#user_checkId');
		const userPw = $('#userPw');
		const userPw_ck = $('#userPw_ck');
		const userName = $('#userName');
		const userAddress = $('#userAddress');
		const userPhone = $('#userPhone');
		const userEmail = $('#userEmail');
		
		if(userId.val() == ""){
			userId.addClass('warning');
			setTimeout(function() {
                userId.removeClass('warning');
            },1500);
            userId.focus();
            return false;
		} else if(userPw.val() == ""){
			userPw.addClass('warning');
			setTimeout(function() {
                userPw.removeClass('warning');
            },1500);
            userPw.focus();
            return false;
		} else if(userName.val() == ""){
			userName.addClass('warning');
			setTimeout(function(){
				userName.removeClass('warning');
			},1500);
			userName.focus();
			return false;
		} else if(userAddress.val() == ""){
			userAddress.addClass('warning');
			setTimeout(function(){
				userAddress.removeClass('warning');
			},1500);
			userAddress.focus();
			return false;
		} else if(userPhone.val() == ""){
			userPhone.addClass('warning');
			setTimeout(function(){
				userPhone.removeClass('warning');
			},1500);
			userPhone.focus();
			return false;
		} else if(userEmail.val() == ""){
			userEmail.addClass('warning');
			setTimeout(function(){
				userEmail.removeClass('warning');
			},1500);
			userEmail.focus();
			return false;
		} else if(user_checkId.val() == "fail"){
			alert("사용할 수 없는 아이디입니다");
			$('#userId').val("");
			userId.focus();
			return false;
		} else if(userPw.val() != userPw_ck.val()){
			alert("비밀번호 확인이 일치하지 않습니다");
			userPw.val("");
			userPw_ck.val("");
			userPw.focus();
			return false;
		}
		
		$.ajax(`/signup/user`,{
			method : "POST",
			contentType : "application/json",
			dataType : "json",
			data : JSON.stringify({
				userId : userId.val(),
				userPw : userPw.val(),
				userName : userName.val(),
				userAddress : userAddress.val(),
				userPhone : userPhone.val(),
				userEmail : userEmail.val()
			}),
			success : (result) => {
				console.log(result);
			}
		})
		
		closeSingupModal();
	})
	
	$('#userId').on("propertychange change keyup paste input", function(){
		$.ajax(`/checkId`, {
			method : "GET",
			data : {
				id : $('#userId').val()
			},
			success : (result) => {
				
				if(result == "OK"){
					if($('#userId').val() == "") {
						$('.check_msg1').css("display","none")
						$('.check_msg2').css("display","none")
					} else {
						$('.check_msg1').css("display","inline-block")
						$('.check_msg2').css("display","none")
						$('#user_checkId').val('success')
					}
				} else if (result == "FAIL") {
					$('.check_msg2').css("display","inline-block")
					$('.check_msg1').css("display","none")
					$('#user_checkId').val('fail')
				}
			}
		})
	})
	
	$('#button_box_co').click(function(){
		const coId = $('#coId');
		const co_checkId = $('#co_checkId');
		const coPw = $('#coPw');
		const coPw_ck = $('#coPw_ck');
		const coName = $('#coName');
		const coAddress = $('#coAddress');
		const coPhone = $('#coPhone');
		const coEmail = $('#coEmail');
		const coRegNum = $('#coRegNum');
		
		if(coId.val() == ""){
			coId.addClass('warning');
			setTimeout(function() {
                coId.removeClass('warning');
            },1500);
            coId.focus();
            return false;
		} else if(coPw.val() == ""){
			coPw.addClass('warning');
			setTimeout(function() {
                coPw.removeClass('warning');
            },1500);
            coPw.focus();
            return false;
		} else if(coName.val() == ""){
			coName.addClass('warning');
			setTimeout(function(){
				coName.removeClass('warning');
			},1500);
			coName.focus();
			return false;
		} else if(coAddress.val() == ""){
			coAddress.addClass('warning');
			setTimeout(function(){
				coAddress.removeClass('warning');
			},1500);
			coAddress.focus();
			return false;
		} else if(coPhone.val() == ""){
			coPhone.addClass('warning');
			setTimeout(function(){
				coPhone.removeClass('warning');
			},1500);
			coPhone.focus();
			return false;
		} else if(coEmail.val() == ""){
			coEmail.addClass('warning');
			setTimeout(function(){
				coEmail.removeClass('warning');
			},1500);
			coEmail.focus();
			return false;
		} else if(coRegNum.val() == ""){
			coRegNum.addClass('warning');
			setTimeout(function(){
				coRegNum.removeClass('warning');
			},1500);
			coRegNum.focus();
			return false;
		} else if(co_checkId.val() == "fail"){
			alert("사용할 수 없는 아이디입니다");
			$('#coId').val("");
			coId.focus();
			return false;
		} else if(coPw.val() != coPw_ck.val()){
			alert("비밀번호 확인이 일치하지 않습니다");
			coPw.val("");
			coPw_ck.val("");
			coPw.focus();
			return false;
		}
		
		$.ajax(`/signup/company`,{
			method : "POST",
			contentType : "application/json",
			dataType : "json",
			data : JSON.stringify({
				coId : coId.val(),
				coPw : coPw.val(),
				coName : coName.val(),
				coAddress : coAddress.val(),
				coPhone : coPhone.val(),
				coEmail : coEmail.val(),
				coRegNum : coRegNum.val()
			}),
			success : (result) => {
				
			}
		})
		closeSingupModal();
	})
	
	$('#coId').on("propertychange change keyup paste input", function(){
		$.ajax(`/checkId`, {
			method : "GET",
			data : {
				id : $('#coId').val()
			},
			success : (result) => {
				
				if(result == "OK"){
					if($('#coId').val() == "") {
						$('.check_msg1').css("display","none")
						$('.check_msg2').css("display","none")
					} else {
						$('.check_msg1').css("display","inline-block")
						$('.check_msg2').css("display","none")
						$('#co_checkId').val('success')
					}
				} else if (result == "FAIL") {
					$('.check_msg2').css("display","inline-block")
					$('.check_msg1').css("display","none")
					$('#co_checkId').val('fail')
				}
			}
		})
	})
})

function openSignupModal(){
	console.log("작동")
	$('#modal_signup').css("display","block")
}

function closeSingupModal(){
	console.log("작동")
	$('#modal_signup').fadeOut(200)
	$('.signup_modal > .division').fadeIn(200)
	$('.user_input').hide();
	$('.co_input').hide();
	$('.signup_modal').css({
		'top' : '390px',
		'height': '300px'
	})
	$('input').val("")
	$('.check_msg1').css("display","none");
	$('.check_msg2').css("display","none");
}

function userSignup(){
	$('.signup_modal').css({
		'top' : '57.5px',
		'height' : '750px',
		'transition' : '1s',
	})
	
	$('.signup_modal > .division').hide()
	$('.user_input').delay(500).fadeIn()
}

function coSignup(){
	$('.signup_modal').css({
		'top' : '57.5px',
		'height' : '820px',
		'transition' : '1s',
	})
	
	$('.signup_modal > .division').hide()
	$('.co_input').delay(500).fadeIn()
}


