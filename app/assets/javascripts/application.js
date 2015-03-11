// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require bootstrap-sprockets
//= require_tree .
//= require freetile
//= require html5.js
//= require smoothscroll
//= require teamslider
//= require swiper
//= require isotope
//= require verticalslider
//= require ytplayer
//= require timelinr
//= require magnific-popup
//= require counterup
//= require cloudflare
//= require parallax
//= require fittext
//= require map.js
//= require function.js
//= require jquery.validate.min
//= require jquery.requestAnimationFrame
//= require jquery.mousewheel
//= require ilightbox.packed
//= require modernizr.custom
//= require infobtn
//= require uiMorphingButton_fixed
//= require jquery.counteverest.min

// Everything custom down here

// Scroll Function
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
