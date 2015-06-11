// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require plugins-min
//= require_self

(function($, document, window){

  $(document).ready(function(){
    $(".slider").flexslider({
      animation: "fade",
      controlNav: true,
      directionNav: false,
    });

    $(".menu-toggle").click(function(){
      $(".main-navigation .menu").slideToggle();
    });

    $("[data-bg-color]").each(function(){
      var color = $(this).data("bg-color");
      $(this).css("background-color",color);
    });

    new WOW().init();
  });

  $(window).ready(function(){

  });

})(jQuery, document, window);
