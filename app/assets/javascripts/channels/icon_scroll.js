
function FaireClignoterImage (){
   $("#icon_scroll").fadeOut(2200).delay(10).fadeIn(2200);
}
$(document).ready(function(){
    setInterval('FaireClignoterImage()',3000);
});
