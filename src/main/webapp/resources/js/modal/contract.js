let date = new Date();
let keyCode;
let contractAddress;
let userCode;


$(function(){
	
    $(document).on('click','button[name="contract"]',function(){
        $('#modal_contract').show();
     
        const userId = $(this).closest('tr.item').data("code")
        loadContents(userId)
    })
    $(document).on('click','input[name="keyCode"]',function(){
		keyCode = $(this).val();
	})
    
    $(document).on('click','#addContract',function(){
		contractAddress = $('input[name="contractAddress"]').val();
		userCode = $('#userCode').attr('value');
		
		const sDate = $('input[name="contractSdate"]').val();
		const eDate = $('input[name="contractEdate"]').val();
		const price = $('input[name="contractPay"]').val();
		const contents = $('textarea[name="contractContents"]').val();
		
		const item = {
			keyCode : keyCode,
			userCode : userCode,
			contractSdate : sDate,
			contractEdate : eDate,
			contractPay : price,
			contractContents : contents,
			contractAddress : contractAddress
		}
		
		if(keyCode=="" && eDate == "" && price == "" && contents == ""){
			alert("계약서를 완성해주세요")
		} else if(sDate == "" && eDate == "" && price == "" && contents == "" && keyCode==""){
			alert("계약서를 완성해주세요")
		} else {
			addContract(item);
			closeContractModal();
		}
		
		
	})
    
    $('#closeBtn_contract').click(function(){
        closeContractModal();
    })
	
    datepicker();
})

function addContract(item){
		
		$.ajax('/contract/add',{
			method: "POST",
			contentType: "application/json",
			data: JSON.stringify(item),
			success: (result) => {
				console.log(result)
				console.log(result == "OK")
				if(result == "OK"){
					send()
					let html = `<td class="wait"><span class="badge rounded-pill bg-label-secondary">계약 대기</span></td>`
					$('button[name="contract"]').parent('td').html(html);
					 
				}
					
			}
		})
	
	
}
let connect = false;
const url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver"
const socket = new WebSocket(url);
socket.onopen = () => {
	console.log("연결")
	
	connect = true;
}				
function send(){
		
	const messageContents = `${login_user}께서 계약서를 보내셨습니다`
	console.log(messageContents,connect)
	let sendVal = "1"
	
	if(connect) {
		
		socket.send(login_user + ": " + $('#msg').val());
		console.log(login_user + ": " + $('#msg').val())
		post_msg(sendVal, messageContents)
		
	}
}			
				
function post_msg(sendVal, messageContents){
		
		const room = $('#roomCode');
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

function closeContractModal() {
	$('#modal_contract').fadeOut(200);
	$('#wrap').find('input').val("");
	$('textarea').val("");
	$('.append').remove();
}

function loadContents(userId){
	
	const item = {
			userId : userId
		}
	
	console.log(item)
	
	$.ajax('load_contents',{
		method : "GET",
		contentType :"application/json",
		dataType : "json",
		data : item,
		success : (result) => {
			
			console.log(result);
			
			const {user,company,cokey} = result;
		
			
			let content1 = '<div class="append">'
				content1 +=`${user.userName} (이하 “동”이라 한다)와 ${company.coName} (이하 “행”이라 한다)는 다음과 같이계약을 체결한다.`
				content1 += '</div>'
				
			$('#content1').append(content1)
			for(let i=0; i<cokey.length;i++){
				
				let content2 = '<div class="form-check append">'
					content2 += `<input class="form-check-input" type="radio" id="${i+1}" name="keyCode" value="${cokey[i].keyCode}">`
					content2 += `<label class="form-check-label stop-dragging" for="${i+1}">${cokey[i].keyName}</label>`
					content2 += '</div>'
					
				$('#checkbox').append(content2)
			}
				let content3 = `<div class="append">
			                    <div>동</div>
			                    <div id="userCode" value="${user.userCode}">고객명 : ${user.userName}</div>
			                    <div>연락처 : ${user.userPhone}</div>
			                    <div class="row">
			                        <label class="col-md-2">주소 :</label>
			                        <div class="col-md-5">
			                          <input class="form-control" type="text" name="contractAddress"/>
			                        </div>
			                    </div>
				                </div>
				               	<div class="append" style="margin : 0 0 0 20px;">
				                    <div>행</div>
				                    <div>회사명 : ${company.coName}</div>
				                    <div>연락처 : ${company.coPhone}</div>
				                    <div>주소 : ${company.coAddress}</div>
				                </div>`
				
				$('#content3').append(content3)
			
		}
	})
}

function datepicker() {

	var sdate = $('#sdate').datepicker({
		startDate: new Date(date.getFullYear, date.getMonth, date.getDate()),
		language: 'ko',
		autoClose: true,
		minDate: new Date(),
		onSelect: function(date) {
			var endNum = date;
			$('#edate').datepicker({
				minDate: new Date(endNum),
				
			})
		}
	}).data(`datepicker`).selectDate(new Date(date));

	var edate = $('#edate').datepicker({
		startDate: new Date(date.getFullYear(), date.getMonth(), date.getDate()),
		language: 'ko',
	
		
		autoClose: true,
		onSelect: function(date) {
			var startNum = date;
			$('#sdate').datepicker({
				maxDate: new Date(startNum),
			})

		}

	}).data('datepicker');

}