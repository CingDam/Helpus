$(function(){
	
	const path = window.location.pathname
	const roomCode = path.split('/')[2]
	
	$.ajax(`/msg/get_msg/${roomCode}`,{
		method : "Get",
		contentType : "application/json",
		success : (result) => {
			const chat = document.getElementById("chat");

			for(let i = 0; i<result.length; i++){
				const { userId, msgContents } = result[i];
				
				chat.innerHTML += `<li>${userId}: ${msgContents}</li>`
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