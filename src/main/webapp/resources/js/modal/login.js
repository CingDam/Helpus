let user_val=0;

$(function(){
	
	$('#login_put').on('click',function(){
		openLoginModal();
	})
	$('#closeBtn_login').on('click',function(){
		console.log('눌림')
		closeLoginModal();
	})
	
	$(document).mouseup(function (e){
			
			const target = $('#modal_login')
		
            if(target.has(e.target).length==0) {
                closeLoginModal();
            } 
       });
	
	$('.login_modal > .login_box > .division > .co_btn').on('click',function(){
		$('.login_modal >  .login_box > .division > .user_btn').css({
			"background-color" : "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('.login_modal > .login_box >.division > .user_btn > p').css({
			"color":"#fff"
		})
		
		$('.login_modal > .login_box >.division > .co_btn').css({
			"background-color" : "#fff",
			"box-shadow": "none"
		})
		$('.login_modal > .login_box >.division > .co_btn > p').css({
			"color":"black"
		})
		
		user_val=1;
		
	})
	
	$('.login_modal >  .login_box > .division > .user_btn').on('click',function(){

		$('.login_modal > .login_box > .division > .user_btn').css({
			"background-color" : "#fff",
			"box-shadow": "none"
		})
		$('.login_modal > .login_box > .division > .user_btn > p').css({
			"color":"black"
		})
		
		$('.login_modal > .login_box > .division > .co_btn').css({
			"background-color" : "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('.login_modal > .login_box > .division > .co_btn > p').css({
			"color":"#fff"
		})
		
		user_val=0;
	})
	
	$('#login_submit').click(function(){
		if($('.id_input > input').val() != "" && $('.pw_input > input').val() != ""){
			
			let item = null;
			
			login_ajax(item);
			
		} else if($('.id_input > input').val() == ""){
			alert('아이디를 입력해주세요');
			$('.id_input > input').focus();
		} else if($('.pw_input > input').val() == ""){
			alert('비밀번호를 입력해주세요');
			$('.pw_input > input').focus();
		} else {
			alert('아이디와 비밀번호를 입력해주세요')
			$('.id_input > input').focus();
		}
	})
	$('.login_modal > .login_box > .option_box > #signin').click(function(){
		$('#modal_login').hide()
		$('#modal_signup').show()
	})
	
	$('.login_modal > .login_box > .option_box > #findid').click(function(){
		$('.login_box').hide()
		findidShow()
	})
	$('.login_modal > .login_box > .option_box > #findpw').click(function(){
		$('.login_box').hide()
		$('.findpw_box').show()
	})
})

function login_ajax(item){
	
			if(user_val == 0) {
				item = {
					userId : $('.id_input > input').val(),
					userPw : $('.pw_input > input').val()
				}
				
				$.ajax(`/login/user`,{
					method : "POST",
					contentType : 'application/json',
					data : JSON.stringify(item),
					success : result => {
						if(result == 'OK'){
							location.reload();
						}
						if(result == 'FAIL'){
							$('.pw_input > input').val("");
							alert("아이디와 비밀번호를 확인해주세요")
						}
					}
				
				})
			};
			
			if(user_val == 1) {
				item = {
					coId : $('.id_input > input').val(),
					coPw : $('.pw_input > input').val()
				}
				
				$.ajax(`/login/company`,{
					method : "POST",
					contentType : 'application/json',
					data : JSON.stringify(item),
					success : result => {
						if(result == 'OK'){
							location.href='company/';
						}
						if(result == 'FAIL'){
							$('.pw_input > input').val("");
							alert("아이디와 비밀번호를 확인해주세요")
						}
						if(result == 'EMAIL'){
							location.href="/email";
						}
					}
				
				})
			};
}

function openLoginModal(){
	$('#modal_login').css("display","block")
}

function closeLoginModal(){
	$('#modal_login').css("display","none")
	$('.login_box').show()
	$('.findid_box').hide()
	$('.findpw_box').hide()
	user_val=0;
}
function findidShow(){
	$('.login_modal').css({
		"height" : '515px',
		"transition" : '1s'
	})
	$('.findid_box').delay(500).fadeIn()
}


