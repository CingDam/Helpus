
	const url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver"
	const parent = window.parent
	
	const socket = new WebSocket(url);
	
	let connect = false;
	
	socket.onopen = () => {
		
		console.dir(parent.$("#profile").children('#roomCode').val())
		console.log(parent.$("#roomCode").val())
		const roomCode = parent.$("#profile").childeren('#roomCode').val();;
		const cur_user = login_user;
		const sendVal = parent.$('#sendVal').val();
		
		console.log(roomCode, cur_user, parent.$('#sendVal').val());
		
		connect = true;
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
		let contractCode = null;
		let arr = data.split(":");
		message = arr[1];
		contractCode = arr[2];
		console.log(data)
		
			for(var i=0; i<arr.length; i++){
		            console.log('arr[' + i + ']: ' + arr[i]);
		          }
				session_user = arr[0];
         		message = arr[1];
         		const cur_user = login_user
         		console.log(arr[0])
         		console.log(arr[2])
         		console.log(cur_user)
         		console.log(session_user.length)
         		console.log(cur_user.length)
         		console.log(cur_user == session_user)
         		console.log(message)
				
				
			
		
		const chat = parent.$('#chat-messages')
		
		if(cur_user == session_user){
			let userMsg = `<div class="message right">
								          <div class="bubble">
									           ${message}
									           <div class="corner"></div>
								          </div>
								        </div>`
								        
			chat.append(userMsg)
			chat.scrollTop(chat[0].scrollHeight);
		}
		if(cur_user != session_user){
			
			if(message.indexOf('계약서') != -1){
							let coMsg = `<div class="message">
								          <div id="img"/>
								          <div class="bubble">
									       	${message}
									       	<div><button id="viewContract">보기</button></div>
									       	<input id="contractCode" type="hidden" value="${contractCode}">
											<div class="corner"></div>
								          </div>
							        </div>`
					chat.append(coMsg)
				} else {
					let coMsg = `<div class="message">
								          <img src="img" />
								          <div class="bubble">
									       	${message}
											<div class="corner"></div>
								          </div>
							        </div>`
						  
					chat.append(coMsg)
			
				}
			
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
		alert("서버에 연결이 끊어졌습니다.")
	}
	function send(){
		
		const messageContents = document.getElementById("msg")
		
		let sendVal = parent.$('#sendVal').val()
		
		if(connect) {
			
			socket.send(login_user + ": " + $('#msg').val());
			console.log(login_user + ": " + $('#msg').val())
			post_msg(sendVal, messageContents.value)
			messageContents.value = "";
			
		}
	}
	function post_msg(sendVal, messageContents){
		
		const room = parent.$('#roomCode');
		const roomCode = room.val();
		
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
	})