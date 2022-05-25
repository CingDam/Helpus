let user_val=0;

$(function(){
	
	$('#login_put').on('click',function(){
		openLoginModal();
	})
	$('#closeBtn_login').on('click',function(){
		console.log('눌림')
		closeLoginModal();
	})
	$('.login_modal > .division > .co_btn').on('click',function(){
		$('.login_modal >  .division > .user_btn').css({
			"background-color" : "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('.login_modal > .division > .user_btn > p').css({
			"color":"#fff"
		})
		
		$('.login_modal >  .division > .co_btn').css({
			"background-color" : "#fff",
			"box-shadow": "none"
		})
		$('.login_modal >  .division > .co_btn > p').css({
			"color":"black"
		})
		
		user_val=1;
		
	})
	
	$('.login_modal >  .division > .user_btn').on('click',function(){

		$('.login_modal >  .division > .user_btn').css({
			"background-color" : "#fff",
			"box-shadow": "none"
		})
		$('.login_modal >  .division > .user_btn > p').css({
			"color":"black"
		})
		
		$('.login_modal >  .division > .co_btn').css({
			"background-color" : "#2E407B",
			"box-shadow": "inset 1px 1px 15px rgba(0, 0, 0, 0.25)"
		})
		$('.login_modal >  .division > .co_btn > p').css({
			"color":"#fff"
		})
		
		user_val=0;
	})
	
	$('.login_modal > .button_box > button').click(function(){
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
	$('.login_modal > .option_box > p:nth-child(5)').click(function(){
		$('#modal_login').hide()
		$('#modal_signup').show()
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
							location.reload();
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
}


