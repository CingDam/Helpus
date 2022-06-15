	const url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver"
	const parent = window.parent
	
	const socket = new WebSocket(url);
	
	let connect
	
	socket.onopen = () => {
		
		console.dir(parent.$('#chatview').find('#roomCode'))
		console.log(parent.$('#chatview').find('#roomCode').val())
		const room = parent.$('#chatview').find('#roomCode');
		const roomCode = room.val();
		const cur_user = login_user;
		const sendVal = parent.$('#chatview').find('#sendVal').val();
		
		console.log(roomCode, cur_user, sendVal);
		
		console.dir(parent.$('#chat-messages'))
		
		connect = true;
		console.log(connect)
		$.ajax("/chat/msg_ck",{
						method : "POST",
						contentType : "application/json",
						dataType : "json",
						data : JSON.stringify(
							{	roomCode : roomCode,
								sendVal : sendVal
						}),
						success : () => {
							
						}
					})
	}
	
	socket.onmessage = onMessage = msg => {
		
		const room = parent.$('#roomCode');
		const roomCode = room.value;
		const sendVal = parent.$('#sendVal').val();
		
		let data = msg.data;
		let message = null;
		let arr = data.split(":");
		message = arr[1];
		
		
			for(var i=0; i<arr.length; i++){
		            console.log('arr[' + i + ']: ' + arr[i]);
		          }
				session_user = arr[0];
         		message = arr[1];
         		cur_user = login_user
         		console.log(session_user,$.trim(cur_user))
         		console.log(session_user.length)
         		console.log(cur_user.length)
         		console.log(cur_user == session_user)
         		console.log(message)
				console.log(login_user + ": " + $('#msg').val())
				
		
		const chat= parent.$('#chat-messages');
		
		const today = new Date()
		const week = ['일', '월', '화', '수', '목', '금', '토'];
		let day = week[new Date().getDay()];
		
		console.log(today.getDate())
		console.dir(parent.$('#date'))
		
		let year = today.getFullYear();
		let month = today.getMonth() + 1;
		let date = today.getDate();
		
		let fullDate = `${year}-0${month}-${date}`

		console.log(fullDate ==  parent.$('#date').text() )
		if(fullDate != parent.$('#date').text()){
			let html = `<label>0${today.getMonth()+1}월 ${today.getDate()}일 ${day}요일</label>`
			chat.append(html);
		}
		
		if(cur_user == session_user){
			let coMsg = `<div class="message right">
								          <div class="bubble">
									           ${message}
									           <div class="corner"></div>
								          </div>
								        </div>`
								        
			chat.append(coMsg)
			chat.scrollTop(chat[0].scrollHeight);
		}
		if(cur_user != session_user){
			let userMsg = `<div class="message">
								          <img src="img" />
								          <div class="bubble">
									       	${message}
											<div class="corner"></div>
								          </div>
							        </div>`
						  
			chat.append(userMsg)
			chat.scrollTop(chat[0].scrollHeight);
		}
	
		
		$.ajax("/chat/msg_ck",{
						method : "POST",
						contentType : "application/json",
						dataType : "json",
						data : JSON.stringify(
							{	roomCode : roomCode,
								sendVal : sendVal
						}),
						success : () => {
							
						}
					})
		
	}
	
	socket.onclose = () =>{
		connect = false;
	}
	function post_msg(messageContents){
		
		const room = parent.$('#chatview').find('#roomCode');
		const roomCode = room.val();
		const sendVal = parent.$('#chatview').find('#sendVal').val()
		
		const item = {
			sendVal : sendVal,
			roomCode : roomCode,
			messageContents : messageContents
		}
		$.ajax("/chat/post_msg",{
			method : "POST",
			contentType : "application/json",
			data : JSON.stringify(item),
			success : () => {
			}
			
		})
	}
	
	$(function(){
		$("#msg").on("keypress", function(event) {
			if(event.keyCode == 13) {
				send();
			}
		});
		$('#send').click(function(){
			send()
		})
		parent.$('#chatclose').click(function(){
				parent.$('#chat-messages').empty();

				parent.$('#profile').empty()
				setTimeout(function() {
					parent.$("#send-message").empty();
				})
				socket.close();
				
		})
	})
	
	function send(){
		
		console.log(connect)
		const messageContents =  $('#msg').val()
		if(connect) {
			socket.send(login_user + ": " + $('#msg').val());
			console.log(login_user + ": " + $('#msg').val())
			post_msg(messageContents)
			$('#msg').val("");
			
		}
	}