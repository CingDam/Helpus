$(function(){
    $("#chatbtn").click(function() {
        $("#chatbtn").toggle('scale');
        $("#chatbox").toggle('scale');
        
        getColist()
    });

    $("#chatclose").click(function() {
        $("#chatbtn").toggle('scale');
        $("#chatbox").toggle('scale');
        getColist()
      })

   
    var preloadbg = document.createElement("img");
    preloadbg.src = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/timeline1.png";
    
      $("#searchfield").focus(function(){
          if($(this).val() == "Search"){
              $(this).val("");
          }
      });
      $("#searchfield").focusout(function(){
          if($(this).val() == ""){
              $(this).val("Search");
              
          }
      });
      
      $("#sendmessage input").focus(function(){
          if($(this).val() == "Send message"){
              $(this).val("");
          }
      });
      $("#sendmessage input").focusout(function(){
          if($(this).val() == ""){
              $(this).val("Send message");
              
          }
      });
      
      $(document).on('click','#viewContract',function(){
			$(location).attr('href','contract/view')
		})
      
  });
  
  
  function getColist(){
	$.ajax("/chat/",{
		method : "GET",
		contentType : "application/json",
		dataType : "json",
		success : result => {
			
			let roomNum;
			
			console.log(result);
			
			
			for(let i = 0; i<result.length; i++){
				const {messageContent,coName,roomCode} = result[i];
				
				let html = `<div class="chat">
					        	<img src="img/avatar.png" />
						        <p>
						          <strong>${coName}</strong>
						          <br>
						          <span>${messageContent}</sapn>
						        </p>
					        	<div class="status available"></div>
					      	</div>`
				$('#chatlist').append(html)
				roomNum = roomCode
			}
			
			
			createRoom(roomNum)		 
		}
	})
}

function createRoom(roomCode){
	 $(".chat").each(function(){      
          $(this).click(function(){
              var childOffset = $(this).offset();
              var parentOffset = $(this).parent().parent().offset();
              var childTop = childOffset.top - parentOffset.top;
              var clone = $(this).find('img').eq(0).clone();
              var top = childTop+12+"px";
              
              $(clone).css({'top': top}).addClass("floatingImg").appendTo("#chatbox");                           
              
              setTimeout(function(){$("#profile p").addClass("animate");$("#profile").addClass("animate");}, 100);
              setTimeout(function(){
                  $("#chat-messages").addClass("animate");
                  $('.cx, .cy').addClass('s1');
                  setTimeout(function(){$('.cx, .cy').addClass('s2');}, 100);
                  setTimeout(function(){$('.cx, .cy').addClass('s3');}, 200);         
              }, 150);                                          
              
              $('.floatingImg').animate({
                  'width': "50px",
                  'left':'118px',
                  'top':'20px'
              }, 200);
              
              const roomBox = `<input id = "roomCode" type="hidden" value="${roomCode}"></div>
              				<input id = "sendVal" type="hidden" value="0"></div>`
              
              var name = $(this).find("p strong").html();                                   
              $("#profile p").html(name); 
              $("#profile").append(roomBox) 
              
              $(".message").not(".right").find("img").attr("src", $(clone).attr("src"));                           
              $('#friendslist').fadeOut();
              $('#chatview').fadeIn();
              
              $('#close').unbind("click").click(function(){            
                  $("#chat-messages, #profile, #profile p").removeClass("animate");
                  $('.cx, .cy').removeClass("s1 s2 s3");
                  $('.floatingImg').animate({
                      'width': "40px",
                      'top':top,
                      'left': '12px'
                  }, 200, function(){$('.floatingImg').remove()});            
                  
                  setTimeout(function(){
                      $('#chatview').fadeOut();
                      $('#friendslist').fadeIn();            
                  }, 50);
                  
                  $('#chat-messages').empty();
              });
              getMessage(roomCode)        
          });
      });
      
      
}

function getMessage(roomCode){
	
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
					let date = `<label>${getDate[1]}월 ${getDate[2]}일 ${day}요일</label>`
					$('#chat-messages').append(date)
					putDate = messageDate;
				}
				if(sendVal == 0){
						let userMsg = `<div class="message right">
								          <div class="bubble">
									           ${messageContents}
									           <div class="corner"></div>
								          </div>
								        </div>`
								        
						$('#chat-messages').append(userMsg)
						
					}
				if(sendVal == 1){
						if(messageContents.indexOf('계약서') != -1){
							let coMsg = `<div class="message">
								          <div id="img"/>
								          <div class="bubble">
									       	${messageContents}
									       	<div><button id="viewContract">보기</button></div>
											<div class="corner"></div>
								          </div>
							        </div>`
							   $('#chat-messages').append(coMsg)
						}else{
							let coMsg = `<div class="message">
								          <div id="img"/>
								          <div class="bubble">
									       	${messageContents}
											<div class="corner"></div>
								          </div>
							        </div>`
							        
							   $('#chat-messages').append(coMsg)
						}
				}
			}
			const iframe = `<iframe src="chat/chat_input" style="border: none; height: 60px;width: 290px;"></iframe>`
			$('#chat-messages').scrollTop($('#chat-messages')[0].scrollHeight);
			$('#send-message').append(iframe);
		}
	})
}