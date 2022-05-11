let html;

$(function(){
	let org_val = $('#category').val();
    $('#category').on('click',function(){}).on('mouseup',function(){selectCate(org_val)})
})

function selectCate(org_val){
	const cur_val = $('#category').val()
	
		if(org_val != cur_val){
			org_val=cur_val;
			$.ajax("../detail/keyword",{
            method:"POST",
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify({cateCode:$('#category').val()}),
            success: (result) => {
                
                console.log(result)
                const form = $('#detail_content')
                
                if(result != null && result.length >0){
                    html = '<div class="keyword">'
                    html += '<label>키워드</label>'
                    html += '<select name="keyCode">'
                    for(let i=0; i<result.length; i++){
						
							const {keyCode,keyName} = result[i];
                        console.log(keyName)
                        html+=`<option value="${keyCode}">${keyName}</option>`
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
                        console.log(keyName)
                        html+=`<option value="${keyCode}">${keyName}</option>`
                    }
                    html += '</select>'
                    html += '<button type="button" class="keyword_add">+</button><button type="button" class="keyword_remove">-</button>'
                    html += '</div>'
					
					$('#submit').before(html);
				})
				 $(document).on('click','.keyword_remove',function(){
					console.log("삭제")
					$(this).parent().remove();
				})
				
            } 
        })
		}  
}