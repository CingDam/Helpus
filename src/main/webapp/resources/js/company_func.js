
const state = {
    page : 1
};

$(function(){

	let page=$('#index')
	
	let page_name = index
	
	$('.index').click(function(){
       	page.fadeOut();
        $('#index').fadeIn();
        page=$('#index')
        page_name = index
    })
	
    $('.inquery').click(function(){
       	page.fadeOut();
        $('#inquery').fadeIn();
        
        $('.menu-item.active').removeClass('active')
        
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        
        page=$('#inquery')
        page_name = inquery

        movePage(state.page,page_name);
    })
    
    $('.reservation').click(function(){
       	page.fadeOut();
        $('#reservation').fadeIn(1000);
        
        $('.menu-item.active').removeClass('active')
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        page= $('#reservation')
        page_name =  reservation
    })
    
    $('.complete').click(function(){
       	page.fadeOut();
        
        $('#complete').fadeIn(1000);
        
         $('.menu-item.active').removeClass('active')
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        
        page = $('#complete')
        page_name =  complete
    })
})

const header = [];
function makeItem(item){
	/*
	const {code, name, spec, manufacture, category,price,barcode} = item;
	*/
		let html = `<tr class="item" data-code="${item['code']}">`;
		
		html += `<th><input type="checkbox" class="form-check-input item-check" value="${item[pager_key]}"></th>`;
		for(let i = 0; i < header.length;i++){

		let value_ = "";
    	if(item[header[i]])
        value_ = item[header[i]];

		html += `<td class="${header[i]}">${value_}</td>`
		
		}
		 //`<td class = "code">${code}</td><td class = "name">${name}</td><td class = "spec">${spec}</td><td class = "category">${category}</td><td class = "manufacture">${manufacture}</td><td class = "price">${price}</td><td class = "barcode">${barcode_}</td>`;
		html += `<td><div class="btn btn-sm btn-danger delete">삭제</div> <div class="btn btn-sm btn-warning update">변경</div></td>`;
		html += `</tr>`
		
		return html;
}

function movePage(page,page_name){
	
	 const url = location.pathname
        
     
     const item = {
		coName : url.split('/')[2],
		page : state
	} 
	if(page_name == inquery){
		$.ajax('get_coinqury',{
		method : "POST",
		contentType : "application/json",
		dataType : "json",
		data:JSON.stringify(item),
		success : result => {
			const {list, pager} = result;
			
			
			state.total = pager.total
			
			console.log(pager.total)
			console.log(inquery_root)
			$("#total").text(state.total);
			if(list && list.length > 0){
					const tbody =  $(`${inquery_root} tbody`);
		            let html = "";
		            for(let i = 0; i< list.length; i++){
		               html += makeItem(list[i]);
		            }
		            
		            console.log(html);
		
		            

                    $(`${inquery_root} tr.item`).remove();
                    //$(`${pager_root}`).append(tbody);
					tbody.append(html);


                 
		        } else{
			
					$(`${inquery_root} .long .empty_msg`).show();
					$(`${inquery_root} tr.item`).remove();

				}
				
					$(`${inquery_root} .page-prev`).data("page", pager.prev);
                    $(`${inquery_root} .page-next`).data("page", pager.next);
                    $(`${inquery_root} .page-last`).data("page", pager.last);

                    $(`${inquery_root} .page-list`).remove();

					const pageList = pager.list;
					
					console.log(pageList.length )

                    for(let i =0; i < pageList.length ; i++){
                        const page_item = $("<li>").addClass("page-item");
						console.log(pager.page == pageList[i])
                        if(pager.page == pageList[i])
                            page_item.addClass("active");

                            const page_link = $("<div>").addClass("page-link");
                            page_link.text(pageList[i]);
                            page_link.attr("data-page", pageList[i]);

                            page_item.append(page_link);
                            
                            console.log(page_item)

                            $(`${inquery_root} .page-next`).parent().before(page_item);
                         
                    }
			}
        ,
        error : xhr => {
            alert(`오류 발생 : ${xhr.statusText}`);
        }
	})
	}
	
}