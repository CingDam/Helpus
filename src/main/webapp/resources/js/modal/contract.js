$(function(){
    $(document).on('click','button[name="contract"]',function(){
        $('#modal_contract').show();
        console.log($(this).closest('tr.item').data("code"))
        loadContents()
    })
    $('#closeBtn_contract').click(function(){
        closeLoginModal();
    })
})


function closeLoginModal() {
	$('#modal_contract').fadeOut(200);
	$('input').val("");
}

function loadContents(){
	$.ajax('load_contents',{
		method : "GET",
		contentType : "application/json",
		dataType : "json",
		data : {
			userId = $(this).closest('tr.item').data("code")
		},
		success : (result) => {
			
			console.log(result);
			
			let content1 = '<div>'
		}
	})
}
