$(function() {



  // 모바일 네비게이션
  $(".m-menu-list").click(function(){
    $(".m-menu").fadeToggle(200);
  });

  $(".m-menu-bg").click(function(){
    $(".m-menu").fadeToggle(200);
  });

  $(window).resize(function(){
    if(window.innerWidth > 992){
      $(".m-menu").css({"display" : "none"});
    }
  }).resize();


});