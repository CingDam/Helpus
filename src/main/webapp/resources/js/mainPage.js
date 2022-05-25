let swiper = new Swiper('.day_key',{
	
  	loop: true,
  	speed : 1500,
  	spaceBetween: 30,
    effect: "fade",
	   pagination: {
          el: ".swiper-pagination",
        },
	autoplay: {
    delay: 3000,
  },
  observer: true,
  observeParents: true,
})

let swiper_useful = new Swiper('.useful_func',{
	
  	loop: false,
  	slidesPerView:2,
  	speed : 1500,
  	spaceBetween: 30,
    effect: "fade",
	   scrollbar: {
          el: ".swiper-scrollbar",
          dragSize : 220,
  
        },
	autoplay: {
    delay: 3000,
    
  },
  observer: true,
  observeParents: true,
})

let swiper_review = new Swiper('.content_box',{
		slidesPerView: 5,
		centeredSlidesBounds: true,
		centeredSlides: true,
    	loop : true,
    	speed : 950,
    	autoplay: {
    		delay: 2500,
  		},
        observer: true,
        observeParents: true,
        spaceBetween : 76,
})