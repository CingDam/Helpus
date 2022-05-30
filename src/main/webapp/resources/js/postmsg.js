	const url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver"
	const parent = window.parent.document;
	
	const socket = new WebSocket(url);
	
	let connect = false;
	
	socket.onopen = () =>{
		const room = parent.getElementById("roomCode");
		const roomCode = room.value;
		const cur_user = $('#nickname').val();
		
		connect = true;
		alert("서버에 연결 되었습니다.")
		console.log("test")
		$.ajax("/msg/msg_ck",{
						method : "POST",
						contentType : "application/json",
						dataType : "json",
						data : JSON.stringify(
							{	roomCode : roomCode,
								userId : cur_user
						})
					})
	}
	
	socket.onmessage = onMessage = msg => {
		
		const room = parent.getElementById("roomCode");
		const roomCode = room.value;
		
		let data = msg.data;
		let message = null;
		let arr = data.split(":");
		message = arr[1];
		
		
			for(var i=0; i<arr.length; i++){
		            console.log('arr[' + i + ']: ' + arr[i]);
		          }
				sessionId = arr[0];
         		message = arr[1];
         		cur_user = $('#nickname').val()
         		console.log(sessionId)
         		console.log("sessionId Type : " + typeof sessionId);
         		console.log(sessionId.length)
         		console.log("cur_user : " + cur_user);
         		console.log("cur_user Type : " + typeof cur_user);
         		console.log(cur_user.length)
				console.log(cur_user!=sessionId)
				
				
			
		
		const chat = parent.getElementById("chat")
		
		console.dir(msg)
		
		const msg_contents = document.getElementById("msg");
		
		chat.innerHTML += "<li>" + msg.data + "</li>"
		
	}
	
	socket.onclose = () =>{
		connect = false;
		alert("서버에 연결이 끊어졌습니다.")
	}
	function send(){
		
		const msg_contents = document.getElementById("msg")
		
		if(connect) {
			socket.send($('#nickname').val() + ": " + $('#msg').val());
			post_msg($('#nickname').val(),msg_contents.value)
			msg_contents.value = "";
			
		}
	}
	function post_msg(nickname,msg_contents){
		
		const room = parent.getElementById("roomCode");
		const roomCode = room.value;
		
		const item = {
			userId : nickname,
			roomCode : roomCode,
			msgContents : msg_contents
		}
		$.ajax("/msg/post_msg",{
			method : "POST",
			contentType : "application/json",
			data : JSON.stringify(item),
			success : () => {
			}
			
		})
	}