$(function(){
	
	$('#login_put').on('click',function(){
		openLoginModal();
	})
	$('#closeBtn').on('click',function(){
		closeModal();
	})
	$('.co_btn').on('click',function(){
		$('.user_btn').css({
			"background-color" : "#fff"
		})
		$('.user_btn > p').css({
			"color":"black"
		})
		
		$('.co_btn').css({
			"background-color" : "#2E407B"
		})
		$('.co_btn > p').css({
			"color":"#fff"
		})
	})
	
	$('.user_btn').on('click',function(){
		$('.user_btn').css({
			"background-color" : "#2E407B"
		})
		$('.user_btn > p').css({
			"color":"#fff"
		})
		
		$('.co_btn').css({
			"background-color" : "#fff"
		})
		$('.co_btn > p').css({
			"color":"black"
		})
	})
})



function openLoginModal(){
	$('#modal').css("display","block")
}

function closeModal(){
	$('#modal').css("display","none")
}


