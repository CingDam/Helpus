let swiper = new Swiper('.day_key',{
	
  	loop: true,
	   pagination: {
          el: ".swiper-pagination",
        },
	autoplay: {
    delay: 2000,
  },
  observer: true,
  observeParents: true,
})