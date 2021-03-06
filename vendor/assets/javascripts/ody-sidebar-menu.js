$(function(){
	/* CALCULATES THE HEIGHT OF ODY MAIN MENU FOR RESPONSIVE COMPATIBILITY */
	function rs() {
		var NavUlHeight = $('.ody-menu').height() - $('.ody-user').height() - $('.ody-social').height();
		$('ul.ody-main-menu').css({'height': NavUlHeight});
	} setInterval(rs, 100);

	/* ON TRIGGER BTN CLICK SHOW MENU */
	var NavStart = 'false';
	$('.ody-trigger').click(function(){
		if(NavStart == 'false') {
			$('.ody-menu').animate({
				'right': '0px'
			}, 500);
			$('.ody-content').animate({
				'right': '280px'
			}, 500);

			NavStart = 'true';
		} else {
			$('.ody-menu').animate({
				'right': '-280px'
			}, 500);
			$('.ody-content').animate({
				'right': '0px'
			}, 500);

			NavStart = 'false';
		}
	});

	/* DETECT IF LI HAS CHILDREN */
	$('.ody-main-menu li').has('ul').children('a').append('<i class="fa fa-plus dropdown-trigger">');
	$('li').has('ul').children('a').addClass('dropdown');

	/* ON LI WITH CHILDREN CLICK CHILDREN SHOW - HIDE */
	$('#dropdown').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(500);
		$(this).toggleClass('active');
	});
	$('#dropdown2').click(function(dropdown) {
		dropdown.preventDefault();

		$(this).next('ul').slideToggle(500);
		$(this).toggleClass('active');
	});

	/* ENABLE SCROLL FOR MAIN MENU */
	$(".ody-main-menu").mCustomScrollbar({
	      updateOnContentResize: true,
	      contentTouchScroll: true,
	      autoExpandHorizontalScroll: true,
	      mouseWheel:{ preventDefault: true},
	      updateOnSelectorChange: ".ody-main-menu"
    });
});
