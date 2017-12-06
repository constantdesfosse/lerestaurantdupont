
function FaireClignoterImage (){
   $("#icon_scroll").fadeOut(2200).delay(10).fadeIn(2200);
}
$(document).ready(function(){
    setInterval('FaireClignoterImage()',2000);
});

$(window).scroll(function() {
  var pc = $(this).scrollTop() / 700 ;
    $('.navbar-wagon').css('opacity', 1 - pc);
});


$(window).scroll(function() {

    if ($(this).scrollTop()>800)
     {
        $('.navbar-wagon').css({display:'none'});
     }
    else
     {
      $('.navbar-wagon').css({display:'inline-flex'});
     }
 });
