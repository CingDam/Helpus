let html;
$(function(){
	let org_val = null;
    $('#category').on('click',function(){}).on('mouseup',function(){
		const cur_val = $('#category').val()
	    if(org_val != cur_val){
			keywordAdd(cur_val);
			org_val=cur_val;
			console.log(org_val)
		}  
    })
    if(window.location.pathname == "/company/coDetailUpdate"){
		$.ajax("../detail/co_key",{
			method : "GET",
			contentType : "application/json",
			success : result => {
					const cur_val = $('#category').val()
					console.log("성공")
					$.each(result,function(index,item){
						keywordAdd(cur_val,item);
					})	
			}
		})
	};
    
})
function keywordAdd(val,coKey){
	$.ajax("../detail/keyword",{
            method:"POST",
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify({cateCode:val}),
            success: (result) => {
	                if(result != null && result.length > 0){
							console.log("생성")
							html = `<div class=keyword${coKey}>`
			                html += '<label>키워드</label>'
			                html += '<select name="keyCode">'
			                for(let i=0; i<result.length; i++){
								const {keyCode,keyName} = result[i];
									
			                    html+=`<option value="${keyCode}" ${coKey == keyCode  ? 'selected' : ''}>${keyName}</option>`
			                 }
			                html += '</select>'
			                html += `<button type="button" class="keyword_add">+</button>`
			                html += '</div>'
								
	                }
	                else {
						html = '<div class="keyword"><label>키워드</label><select name="keyCode"><option>키워드가없습니다</option></select></div>'
					}
					$(`.keyword`).remove();
					$('#submit').before(html);
					$(`.keyword${coKey}`).on('click',`.keyword_add`,function(){
							console.log("추가생성")
							html = '<div class="keyword">'
		                    html += '<label>키워드</label>'
		                    html += '<select name="keyCode">'
		                    for(let i=0; i<result.length; i++){
								const {keyCode,keyName} = result[i];
		                        html+=`<option value="${keyCode}">${keyName}</option>`
		                    }
		                    html += '</select>'
		                    html += '<button type="button" class="keyword_remove">-</button>'
		                    html += '</div>'
							$('#submit').before(html);
					})
					
				 $(document).on('click','.keyword_remove',function(){
							$(this).parent().remove();
							$(this).parent().off('click');
						}) 
            		}
        })
}