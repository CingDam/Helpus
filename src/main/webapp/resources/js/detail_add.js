let html;

$(function(){
	let org_val = $('#category').val();
    $('#category').on('click',function(){}).on('mouseup',function(){selectCate(org_val)})
    if(window.location.pathname == "/company/coDetailUpdate"){
		keywordAdd(org_val);
		console.log(keyNum)
	};
    
})

function selectCate(org_val){
	const cur_val = $('#category').val()
	
		if(org_val != cur_val){
			org_val=cur_val;
			keywordAdd(org_val);
		}  
}
function keywordAdd(val){
	$.ajax("../detail/keyword",{
            method:"POST",
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify({cateCode:val}),
            success: (result) => {
                let itemCode = null;
                
                if(result != null && result.length > 0){
					itemCode = keyNum;
                    html = '<div class="keyword">'
                    html += '<label>키워드</label>'
                    html += '<select name="keyCode">'
                    for(let i=0; i<result.length; i++){
						const {keyCode,keyName} = result[i];
						
                        html+=`<option value="${keyCode}" ${itemCode == keyCode  ? 'selected' : ''}>${keyName}</option>`
                    }
                    html += '</select>'
                    html += '<button type="button" class="keyword_add">+</button>'
                    html += '</div>'
                }
                else {
					html = '<div class="keyword"><label>키워드</label><select name="keyCode"><option>키워드가없습니다</option></select></div>'
				}
					
				$('.keyword').remove();
                $('#submit').before(html);
				$(document).on('click','.keyword_add',function(){
					
					html = '<div class="keyword">'
                    html += '<label>키워드</label>'
                    html += '<select name="keyCode">'
                    for(let i=0; i<result.length; i++){
						const {keyCode,keyName} = result[i];
                        html+=`<option value="${keyCode}" ${itemCode == keyCode  ? 'selected' : ''}>${keyName}</option>`
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