$(function(){
	
	$(".createRoom").click(function(){
		
		const btn = $(this)
		const tdArr = new Array();
		const tr = btn.parent().parent();
		const td = tr.children(); 
		
		const userId = td.eq(0).text();
		
		const item = {
			
			userId : userId
			
		}
		$.ajax("/createRoom",{
			method : "POST",
			contentsType : "json",
			data : item,
			success : result => {
				console.log(result)
					location.href= "chat/" + result;
			},
			error: xhr => {
						alert(`오류 발생 : ${xhr.statusText}`);
				}
			
		})
	})
	
	
})