let contractCode = null;

$(function() {

	console.dir($('#chatbtn'))
	$("#chatbtn").click(function() {
		$("#chatbtn").toggle('scale');
		$("#chatbox").toggle('scale');

		getColist()
		
	});
	
	$("#inqury_btn").click(function(){
      $("#chatbtn").toggle('scale');
      
      
		const item = {
			coCode : co_code,
			userCode : user_code
		}
		
		$.ajax('../../co_inqury/add',{
			method : "POST",
			contentType : "application/json",
			data : JSON.stringify(item)
		})
      
      $.ajax(`../../chat/${co_code}`,{
		method : "POST",
		dataType : "json",
		success : result => {
			$("#chatbtn").toggle('scale');
			$("#chatbox").toggle('scale');
			getColist(result)
		}
	})

   })

	$("#chatclose").click(function() {
		$("#chatbtn").toggle('scale');
		$("#chatbox").toggle('scale');
		$('#chatlist').empty()
		$('#profile').empty()
	})


	var preloadbg = document.createElement("img");
	preloadbg.src = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/timeline1.png";

	$("#searchfield").focus(function() {
		if ($(this).val() == "Search") {
			$(this).val("");
		}
	});
	$("#searchfield").focusout(function() {
		if ($(this).val() == "") {
			$(this).val("Search");

		}
	});

	$("#sendmessage input").focus(function() {
		if ($(this).val() == "Send message") {
			$(this).val("");
		}
	});
	$("#sendmessage input").focusout(function() {
		if ($(this).val() == "") {
			$(this).val("Send message");

		}
	});

	$(document).on('click', '#viewContract', function() {
		if($('#contractCode').length > 0){
			const contractCode_socket = $.trim($('#contractCode').val())
			console.log(contractCode_socket)
			$(location).attr('href', `../../contract/view/${contractCode_socket}`)
		} else {
			$(location).attr('href', `../../contract/view/${contractCode}`)
		}
		
	})

});


function getColist() {
	$.ajax("/chat/", {
		method: "GET",
		contentType: "application/json",
		dataType: "json",
		success: result => {
			console.log(result);


			for (let i = 0; i < result.length; i++) {

				const { messageContent, coName, roomCode } = result[i];
				console.log(messageContent)
				if (messageContent != null) {
					if (messageContent.indexOf('계약서') != -1) {
						let message = messageContent.split(':');
						let html = `<div class="chat">
						        	<img src="../../img/basic_profile.jpg" />
							        <p>
							          <strong>${coName}</strong>
							          <br>
							          <span>${message[0]}</sapn>
							        </p>
						        	<div class="status available"></div>
						        	<input type="hidden" id="roomCode" value=${roomCode}>
						      	</div>`
						$('#chatlist').append(html)
					} else {
						let html = `<div class="chat">
						        	<img src="../../img/basic_profile.jpg" />
							        <p>
							          <strong>${coName}</strong>
							          <br>
							          <span>${messageContent}</sapn>
							        </p>
						        	<div class="status available"></div>
						        	<input type="hidden" id="roomCode" value=${roomCode}>
						      	</div>`
						$('#chatlist').append(html)
					}

				} else {
					let html = `<div class="chat">
					        	<img src="../../img/basic_profile.jpg" />
						        <p>
						          <strong>${coName}</strong>
						          <br>`
						          if(messageContent != null){
									html += `<span>${messageContent}</sapn>`
								}
						html += `</p>
					        	<div class="status available"></div>
					        	<input type="hidden" id="roomCode" value=${roomCode}>
					      	</div>`
					$('#chatlist').append(html)
					
				}
				
				
			}
			$('.chat').click(function(){
				const roomCode = $(this).children('#roomCode').val()
				const name = $(this).find("p").children("strong").html()
				createRoom(roomCode,name)
			})
		}
	})
}

function createRoom(roomCode,name) {
			var childOffset = $('.chat').offset();
			var parentOffset = $('.chat').parent().parent().offset();
			var childTop = childOffset.top - parentOffset.top;
			var clone = $('.chat').find('img').eq(0).clone();
			var top = childTop + 12 + "px";

			$(clone).css({ 'top': top }).addClass("floatingImg").appendTo("#chatbox");

			setTimeout(function() { $("#profile p").addClass("animate"); $("#profile").addClass("animate"); }, 100);
			setTimeout(function() {
				$("#chat-messages").addClass("animate");
				$('.cx, .cy').addClass('s1');
				setTimeout(function() { $('.cx, .cy').addClass('s2'); }, 100);
				setTimeout(function() { $('.cx, .cy').addClass('s3'); }, 200);
			}, 150);

			$('.floatingImg').animate({
				'width': "50px",
				'left': '118px',
				'top': '20px'
			}, 200);

			const roomBox = `
							<div id = "roomBox">
								<p class="animate"></p>
								<input id = "roomCode" type="hidden" value="${roomCode}">
	              				<input id = "sendVal" type="hidden" value="0">
              				</div>`

			
			$('#close').unbind('click').click(function(){
			
			$("#chat-messages, #profile, #profile p").removeClass("animate");
				$('.cx, .cy').removeClass("s1 s2 s3");
				$('.floatingImg').animate({
					'width': "40px",
					'top': top,
					'left': '12px'
				}, 200, function() { $('.floatingImg').remove() });

				setTimeout(function() {
					$('#chatview').fadeOut();
					p$('#friendslist').fadeIn();
				}, 50);

				$('#chat-messages').empty();
				$('#roomBox').remove()
				
				$('#send-message').empty();
		})
			console.log($('#chat-messages').find('label').length<0)
			if($('#chat-messages').find('label').length < 1){
				
				console.log('라벨생성')
				
				const today = new Date()
				
				const week = ['일', '월', '화', '수', '목', '금', '토'];
				let day = week[new Date().getDay()];
				
				let year = today.getFullYear();
				let month = today.getMonth() + 1;
				let date = today.getDate();
				
				let fullDate = `${year}-0${month}-${date}`

				
				let html = `<label>0${month}월 ${date}일 ${day}요일</label>
							<div id="date" style="display:none">${fullDate}</div>`
				$('#chat-messages').append(html);
			}
			
			$("#profile p").html(name);
			$("#profile").append(roomBox)

			$(".message").not(".right").find("img").attr("src", $(clone).attr("src"));
			$('#friendslist').fadeOut();
			$('#chatview').fadeIn();
			getMessage(roomCode)
}

function getMessage(roomCode) {

	$.ajax(`/chat/get_msg/${roomCode}`, {
		method: "GET",
		dataType: "json",
		success: result => {
			let putDate = $('#date').last().text();
			console.log(result);
			console.dir($('#roomCode'))
			for (let i = 0; i < result.length; i++) {
				const { sendVal, messageContents, messageDate, roomCode } = result[i];
				const week = ['일', '월', '화', '수', '목', '금', '토'];
				let day = week[new Date(messageDate).getDay()];
				let getDate = messageDate.split('-')

				if (putDate != messageDate) {
					let date = `<label>${getDate[1]}월 ${getDate[2]}일 ${day}요일</label>
								<div id="date" style="display:none">${messageDate}</div>`
					$('#chat-messages').append(date)
					putDate = messageDate;
				}
				if (sendVal == 0) {
					let userMsg = `<div class="message right">
								          <div class="bubble">
									           ${messageContents}
									           <div class="corner"></div>
								          </div>
								        </div>`

					$('#chat-messages').append(userMsg)

				}
				if (sendVal == 1) {
					if (messageContents.indexOf('계약서를 보내셨습니다') != -1) {
						let message = messageContents.split(':')
						contractCode = parseInt(message[1])
						let coMsg = `<div class="message">
								          <img src="../../img/basic_profile.jpg" />
								          <div class="bubble">
									       	${message[0]}
									       	<div><button id="viewContract">보기</button></div>
											<div class="corner"></div>
								          </div>
							        </div>`
						$('#chat-messages').append(coMsg)
						console.log(contractCode)
					} else {
						let coMsg = `<div class="message">
								           <img src="../../img/basic_profile.jpg" />
								          <div class="bubble">
									       	${messageContents}
											<div class="corner"></div>
								          </div>
							        </div>`

						$('#chat-messages').append(coMsg)
					}
				}
			}
			const iframe = `<iframe src="../../chat/chat_input" style="border: none; height: 60px;width: 290px;"></iframe>`
			$('#chat-messages').scrollTop($('#chat-messages')[0].scrollHeight);
			$('#send-message').append(iframe);
		}
	})
}