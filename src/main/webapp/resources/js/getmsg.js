$(function(){
	
	const path = window.location.pathname
	const roomCode = $("#roomCode").val()
	
	$.ajax(`/chat/get_msg/${roomCode}`,{
		method : "GET",
		contentType : "application/json",
		dataType : "json",
		success : (result) => {
			const chat = document.getElementById("chat");

			for(let i = 0; i<result.length; i++){
				const {userName,coName, messageContents, sendVal, messageDate} = result[i];
				
				if(sendVal == 0)
					chat.innerHTML += `<li>${userName}: ${messageContents}</li>`
					else if(sendVal == 1)
						chat.innerHTML += `<li>${coName}: ${messageContents}</li>`
			}
			/*
			$.ajax("/msg/msg_ck",{
					method : "POST",
					contentType : "application/json",
					dataType : "json",
					data : JSON.stringify({roomCode : roomCode})
				})*/
		}
	})
})