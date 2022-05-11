$(function(){
	const org_val = $('#category').val();
	console.log(org_val);
    $('#category').on('click',function(){}).on('mouseup',function(){
		
		const cur_val = $('#category').val()
		console.log(cur_val)
		if(org_val != cur_val){
			$.ajax("../detail/keyword",{
            method:"POST",
            contentType:"application/json",
            dataType:"json",
            data:JSON.stringify({cateCode:$('#category').val()}),
            success: (result) => {
                
                console.log(result)

                let html;
                const form = $('#detail_content')
                
                if(result != null){
                    html = '<div>'
                    html += '<label>키워드</label><select name="keyCode" id="keyword">'
                    for(let i=0; i<result.length; i++){
                        const {keyCode,keyName} = result;
                        html+=`<option value="${keyCode}">${keyName}</option>`
                    }
                    html += '</select>'
                    html += '</div>'
                } else if(result == null){
                    html = '<div>'
                    html += '<label>키워드</label><select name="keyCode" id="keyword"><option>키워드가 없습니다</option></select>'
                    html += '</div>'
                }
                
                form.append(html);
                
            }
        })
		}
        
})
})