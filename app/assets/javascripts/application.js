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
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require fancybox
//= require jquery.turbolinks

$(document).ready(function() {
  
  // if(window.location.href !== "/homepage"){
  //   $('.navbar.navbar-inverse.navbar-fixed-top').css('background-color', 'rgb(58, 58, 58)')

  //   $('.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus').css('text-shadow', '1px 1px 1px rgb(197, 197, 197)')
  // }
  
  $("a.fancybox").fancybox();


  $('a.navbar-brand').on('click', function(){
    location.href = location.origin + '/homepage'
  })

});