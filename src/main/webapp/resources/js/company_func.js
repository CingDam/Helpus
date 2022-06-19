
const state = {
    page : 1
};
let page=$('#index')
let page_name = index
	
let header = [];

$(document).ready(function(){


	$('.index').click(function(){
       	page.fadeOut(300);
        $('#index').delay(300).fadeIn();
        
        $('.menu-item.active').removeClass('active')
        
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        
        $('.inquery').parent().parent().parent().parent().removeClass('open');
       
        
        page=$('#index')
        page_name = index
    })
	
    $('.inquery').click(function(){
       	page.fadeOut(300);
        $('#inquery').delay(300).fadeIn();
        
        $('.menu-item.active').removeClass('active')
        
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        
        page=$('#inquery')
        page_name = inquery
        pager_root= '#inquery_table'
        console.log(pager_root)
		
		$(`${pager_root} th.order`).each((index,item) => {
			header.push($(item).data("name"));
		})
		
        movePage(1,page_name);
        
      $(document).on("click", ".page-link", function() {
			const page = $(this).data("page");
			
			movePage(page,page_name);
		});
    })
    
    $('.reservation').click(function(){
	
       	page.fadeOut(300);
        $('#reservation').delay(300).fadeIn();
        
        $('.menu-item.active').removeClass('active')
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        page= $('#reservation')
        page_name =  reservation
        pager_root= '#pager_rez'
 
        $(`${pager_root} th.order_rez`).each((index,item) => {
			header.push($(item).data("name"));
		})
		
        movePage(1,page_name);
        
      $(document).on("click", ".page-link", function() {
			const page = $(this).data("page");
			
			movePage(page,page_name);
		});
        

    })
    
    $('.complete').click(function(){
       	page.fadeOut(300);
        $('#complete').delay(300).fadeIn();
        
         $('.menu-item.active').removeClass('active')
        $(this).closest(".menu-item").addClass('active');
        $(this).closest('.menu-item.open').addClass('active');
        
        page = $('#complete')
        page_name = complete
        
        $(`${pager_root} tr.item`).remove();
        $('.list').remove();
    })
    
    console.log( $(`.page-link`).data("page"))
    
})


function movePage(page,page_name){
	
	console.log(page)
	
	state.page = page;
    
	if(page_name == inquery){
		const url = 'get_coinqury'
		pagination(url)
	}
	if(page_name == reservation){
		const url = 'get_co_reservation'
		pagination(url)
	}
	
}

function pagination(url){
	
	
	$.ajax(`${url}`,{
		method : "GET",
		contentType : "application/json",
		dataType : "json",
		data:state,
		success : result => {
			const {list, pager,room,contractList} = result;
			
			console.log(result)
			
			state.total = pager.total
			
			$("#total").text(state.total);
			if(list && list.length > 0){
					const tbody =  $(`${pager_root} tbody`);
					console.dir($(`${pager_root} tbody`))
		            let html = "";
		            let state = null;
		            $(`.empty_msg`).hide();
		            for(let i = 0; i < list.length; i++){
						if(contractList.length > 0 & contractList[i] != null){
							state = contractList[i].contractState
						}
						console.log(state == 1)
						if(state == null || state == 0){
							console.log('테스트')
							html += makeItem(list[i],room[i],state);
							state = null
						} else if(state == 1){
							console.log('테스트')
							console.log(header)
							html += makeItem(contractList[i],room[i],state);
							state = null
						} else {
							console.log('테스트')
							$(`.empty_msg`).show();
							state = null
						}
		            } 
					
                    $(`${pager_root} tr.item`).remove();
                    console.log(html)
                   
                    
                    //$(`${pager_root}`).append(tbody);
					tbody.append(html);
					
					header = [];

                 
		        } else if(contractList && contractList.length > 0) {
			
										const tbody =  $(`${pager_root} tbody`);
					console.dir($(`${pager_root} tbody`))
		            let html = "";
		            let state = null;
		            $(`.empty_msg`).hide();
		            for(let i = 0; i < contractList.length; i++){
						if(contractList.length > 0 & contractList[i] != null){
							state = contractList[i].contractState
						}
						console.log(state == 1)
						if(state == null || state == 0){
							console.log('테스트')
							html += makeItem(list[i],room[i],state);
							state = null
						} else if(state == 1){
							console.log('테스트')
							console.log(header)
							html += makeItem(contractList[i],room[i],state);
							state = null
						} else {
							console.log('테스트')
							$(`.empty_msg`).show();
							state = null
						}
		            } 
					
                    $(`${pager_root} tr.item`).remove();
                    console.log(html)
                   
                    
                    //$(`${pager_root}`).append(tbody);
					tbody.append(html);
					
					header = [];
			
					} else{
			
					console.dir( $(`${pager_root} tr.item`));
					$(`${pager_root} tr.item`).remove();

				}
				
					$(`.prev`).data("page", pager.prev);
                    $(`.next`).data("page", pager.next);
                    $(`.last`).data("page", pager.last);

                    $(`.list`).remove();

					const pageList = pager.list;
					

                    for(let i =0; i < pageList.length ; i++){
                        const page_item = $("<li>").addClass("page-item list");
                        
                        if(pager.page == pageList[i])
                            page_item.addClass("active");

                            const page_link = $("<div>").addClass("page-link");
                            $('.page-link').hover(function(){
								 $(this).css({
									"cursor" : "pointer"
								})
							})
                            
                           
                            page_link.text(pageList[i]);
                            page_link.attr("data-page", pageList[i]);

                            page_item.append(page_link);

                            $(`.next`).before(page_item);
                         
                    }
			}
        ,
        error : xhr => {
            alert(`오류 발생 : ${xhr.statusText}`);
        }
	})
}

function makeItem(item,room,state){
	/*
	const {code, name, spec, manufacture, category,price,barcode} = item;
	*/	
		console.log(room)
		console.log(item)
		let html = `<tr class="item long" data-code="${item['userId']}">`;
		for(let i = 0; i < header.length;i++){
		
		let value_ = "";
		
    	if(item[header[i]]){
			 value_ = item[header[i]];
			 console.log(value_)
		}
		html += `<td class="${header[i]}">${value_}</td>`
		
		}
		 //`<td class = "code">${code}</td><td class = "name">${name}</td><td class = "spec">${spec}</td><td class = "category">${category}</td><td class = "manufacture">${manufacture}</td><td class = "price">${price}</td><td class = "barcode">${barcode_}</td>`;
		if(page_name == inquery){
			html += `<td><button type="button" class="btn btn-secondary chat"><i class="bx bx-comment-dots"></i></button>
					<input id="roomCode" type="hidden" value="${room.roomCode}"></td>`
			if(state == 0){
				html+=`<td class="wait"><span class="badge rounded-pill bg-label-secondary">계약 대기</span></td>`
			} else{
				html += `<td><button type="button" class="btn btn-primary" name="contract">계약</button>
					<button type="button" class="btn btn-outline-secondary">거절</button></td>
					<input id="InquryCode" type="hidden" value="${item.coInquryCode}"></td>`;
			}
			html += `</tr>`
		}
		if(page_name == reservation){
			html += `
					<td>${item.contractSdate} ~ ${item.contractEdate} </td>
					<td>
                        <button type="button" class="btn btn-secondary chat">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                        <input id="roomCode" type="hidden" value="${room.roomCode}"></td>
                      </td>`
			html += ` <td><button type="button" class="btn btn-primary"><i class="bx bx-task"></i></button><button type="button" class="btn btn-outline-secondary">취소</button></td>`
			html += `</tr>`
		}
		console.log(html)
		return html;
}