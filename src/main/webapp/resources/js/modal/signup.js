let signup_user_val=0;

$(function(){
	
	$('#signup_put').on('click',function(){
		openSignupModal();
		console.log('클릭')
	})
	$('#closeBtn_signup').on('click',function(){
		closeSingupModal();
	})
	
	$('#signup_user').click(function(e){
		userSignup(e,signup_user_val);
	})
})

function openSignupModal(){
	$('#modal_signup').css("display","block")
}

function closeSingupModal(){
	$('#modal_signup').css("display","none")
	$('.signup_modal > .division').show()
	$('.user_input').hide();
	$('.signup_modal').css({
		'top' : '390px',
		'height': '300px'
	})
}

function userSignup(){
	$('.signup_modal').css({
		'top' : '57.5px',
		'height' : '850px',
		'transition' : '1s',
	})
	
	$('.signup_modal > .division').hide()
	$('.user_input').delay(500).fadeIn()
}


