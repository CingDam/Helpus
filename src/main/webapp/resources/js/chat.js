$(function() {

	$(".chat").click(function() {

		const coCode = $(this).val();

		$.ajax(`chat/${coCode}`, {
			method: "POST",
			success: result => {
				let roomCode = result;
				console.log(roomCode)
				location.href=`/chat/room/${roomCode}`
				/*
				$.ajax(`chat/room/${roomCode}`, {
					method: "POST",
					success: result => {
						const chat = document.getElementById("chat");
						
						for (let i = 0; i < result.length; i++) {
							const {userName, coName, messageContents, sendVal} = result[i];
							if(result[i].sendVal == 0) {
								chat.innerHTML += `<li>${userName}: ${messageContents}</li>`;
							} else if(result[i].sendVal == 1) {
								chat.innerHTML += `<li>${coName}: ${messageContents}</li>`;
							}
						}
					}
				})*/
			},
			error: xhr => {
				alert(`오류 발생 : ${xhr.statusText}`);
			}

		
		})
	})
});