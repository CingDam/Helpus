let html;

$(function(){
	let org_val = $('#category').val();
    $('#category').on('click',function(){}).on('mouseup',function(){selectCate(org_val)})
    if(window.location.pathname == "/company/coDetailUpdate"){
		$.ajax("../detail/co_key",{
			method : "GET",
			contentType : "application/json",
			success : result => {
				const indexLength = result.length;
				$.each(result,function(index,item){
					keywordAdd(org_val,item,indexLength);
				})
			}
		})
		
	};
    
})

function selectCate(org_val){
	const cur_val = $('#category').val()
	
		if(org_val != cur_val){
			org_val=cur_val;
			keywordAdd(org_val);
		}  
}
function keywordAdd(val,coKey,length){
	$.ajax("../detail/keyword",{
            method:"POST",
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify({cateCode:val}),
            success: (result) => {
	                if(result != null && result.length > 0){
						if(!coKey){
							coKey='';
						}
								html = `<div class=keyword${coKey}>`
			                    html += '<label>키워드</label>'
			                    html += '<select name="keyCode">'
			                    for(let i=0; i<result.length; i++){
									const {keyCode,keyName} = result[i];
									
			                        html+=`<option value="${keyCode}" ${coKey == keyCode  ? 'selected' : ''}>${keyName}</option>`
			                    }
			                    html += '</select>'
			                    html += `<button type="button" class="keyword_add${coKey}">+</button>`
			                    html += '</div>'
	                }
	                else {
						html = '<div class="keyword"><label>키워드</label><select name="keyCode"><option>키워드가없습니다</option></select></div>'
					}
					$(`keyword${coKey}`).remove();
					console.log(`${coKey} 생성`)
					$('#submit').before(html);
				$(document).on('click',`.keyword_add${coKey}`,function(){
					console.log('클릭')
					html = '<div class="keyword">'
                    html += '<label>키워드</label>'
                    html += '<select name="keyCode">'
                    for(let i=0; i<result.length; i++){
						const {keyCode,keyName} = result[i];
                        html+=`<option value="${keyCode}">${keyName}</option>`
                    }
                    html += '</select>'
                    html += '<button type="button" class="keyword_add">+</button><button type="button" class="keyword_remove">-</button>'
                    html += '</div>'
					
					$('#submit').before(html);
				})
				 $(document).on('click','.keyword_remove',function(){
					$(this).parent().remove();
				})
				
            } 
        })
}