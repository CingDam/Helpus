$(function() {

	$('#updateContract').click(function() {
		if ($('#sign').val() == user_name) {
			updateContract()
		} else {
			alert('이름을 정확히 적어주세요')
			$('#sign').focus();
		}
	})


})

let connect = false;
const url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver"
const socket = new WebSocket(url);

socket.onopen = () => {
	console.log("연결")

	connect = true;
}
function send() {

	const messageContents = `계약을 체결하였습니다.`
	let sendVal = "0"

	if (connect) {
		socket.send(login_user + ": " + messageContents + ":" + contractCode);
		post_msg(sendVal, messageContents)

	}
}
function post_msg(sendVal, messageContents) {

	const room = $('#roomCode');
	const roomCode = room.val();

	const item = {
		sendVal: sendVal,
		roomCode: roomCode,
		messageContents: messageContents
	}
	$.ajax("/chat/post_msg", {
		method: "POST",
		contentType: "application/json",
		data: JSON.stringify(item),
		success: (result) => {
			console.log(result);
			alert('계약이 체결되었습니다.')
			location.href = '../../'

		}
	})
}

function updateContract() {
	console.log($('#day').text())
	const item = {
		coInquryCode : coInquryCode,
		contractCode : contractCode,
		contractState: parseInt(1),
	}

	$.ajax("../../contract/update", {
		method: "POST",
		contentType: "application/json",
		data: JSON.stringify(item),
		success: result => {
			send()
		},
		error: xhr => alert(`오류 발생 : ${xhr.statusText}`)
	})
}