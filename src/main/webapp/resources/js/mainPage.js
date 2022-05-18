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
  on: {
        resize: function () {
          swiper.changeDirection(getDirection());
        },
      },
  observer: true,
  observeParents: true,
})