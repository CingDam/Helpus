let date = new Date();

$(function(){
    $(document).on('click','button[name="contract"]',function(){
        $('#modal_contract').show();
       const userId = $(this).closest('tr.item').data("code")
        loadContents(userId)
        console.dir($('#sdate'));
        console.dir($('#edate'));
    })
    $('#closeBtn_contract').click(function(){
        closeLoginModal();
    })
    
    datepicker();
})


function closeLoginModal() {
	$('#modal_contract').fadeOut(200);
	$('input').val("");
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
					content2 += `<input class="form-check-input" type="radio" id="${i+1}" name="keyCode">`
					content2 += `<label class="form-check-label stop-dragging" for="${i+1}">${cokey[i].keyName}</label>`
					content2 += '</div>'
					
				$('#checkbox').append(content2)
			}
				let content3 = `<div class="append">
			                    <div>동</div>
			                    <div>고객명 : ${user.userName}</div>
			                    <div>연락처 : ${user.userPhone}</div>
			                    <div class="row">
			                        <label class="col-md-2">주소 :</label>
			                        <div class="col-md-5">
			                          <input class="form-control" type="text"/>
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