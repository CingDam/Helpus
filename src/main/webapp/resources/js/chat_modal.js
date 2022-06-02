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
          
      
  });
  
  
  function getColist(){
	$.ajax("/chat/",{
		method : "GET",
		contentType : "application/json",
		dataType : "json",
		success : result => {
			
			
			console.log(result);
			
			
			for(let i = 0; i<result.length; i++){
				const {messageContent,coName} = result[i];
				
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
			}
			
			
			createRoom()		 
		}
	})
}

function createRoom(){
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
              
              var name = $(this).find("p strong").html();
              var email = $(this).find("p span").html();                                          
              $("#profile p").html(name);
              $("#profile span").html(email);         
              
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
              });
              
          });
      });         
}