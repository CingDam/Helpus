$(function(){
	
	$(document).on('click','.chat',function(){
		$('#chat_modal').fadeIn();
		const roomCode = $(this).parent().find('#roomCode').val();
		const name = $(this).parent().parent().find('.userName').text();
		createRoom(roomCode,name)
	})
	
	$('#chatclose').click(function(){
		$('#chat_modal').fadeOut();
		$('#chat-messages').empty();
		$('#profile').empty();
	})
})

function createRoom(roomCode,name){
		console.log(name)
		const roomBox = `<p class="animate"></p>
						<input id = "roomCode" type="hidden" value="${roomCode}"></div>
	              				<input id = "sendVal" type="hidden" value="1"></div>`
	              				
	   $('#profile').append(roomBox)
	   	$("#profile p").html(name); 
	   getMsg(roomCode)
}

function getMsg(roomCode){
	$.ajax(`/chat/get_msg/${roomCode}`,{
		method : "GET",
		dataType : "json",
		success : result => {
			let putDate = null;
			console.log(result);
			console.dir($('#roomCode'))
			for(let i = 0;i < result.length; i++){
				const {sendVal,messageContents,messageDate,roomCode} = result[i];
				const week =['일', '월', '화', '수', '목', '금', '토'];
				let day = week[new Date(messageDate).getDay()];
				let getDate = messageDate.split('-')
				if(putDate != messageDate){
					let date = `<label>${getDate[1]}월 ${getDate[2]}일 ${day}요일</label>
								<div id="date" style="display:none">${messageDate}</div>`
					$('#chat-messages').append(date)
					putDate = messageDate;
				}
				if(sendVal == 1){
						const message = messageContents.split(':')
						let userMsg = `<div class="message right">
								          <div class="bubble">
									           ${message[0]}
									           <div class="corner"></div>
								          </div>
								        </div>`
								        
						$('#chat-messages').append(userMsg)
						
					}
				if(sendVal == 0){
						let coMsg = `<div class="message">
								          <img src="./../img/basic_profile.jpg" />
								          <div class="bubble">
									       	${messageContents}
											<div class="corner"></div>
								          </div>
							        </div>`
						  
						$('#chat-messages').append(coMsg)
				}
			}
			const iframe = `<iframe src="../chat/chat_input_co" id="chat_frame" style="border: none; height: 60px;width: 400px;"></iframe>`
			$('#chat-messages').scrollTop($('#chat-messages')[0].scrollHeight);
			$('#send-message').append(iframe);
		}
	})
}