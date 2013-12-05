$('.show_list').show(); //show buttons
$('.readme').hide(); // hide all readmes
 
$('.show_list').click(function(){

    var readme_id = $(this).data('id');
    if ($('#p'+readme_id).css('display')!='none'){
      $('.readme').hide();
    } 
    else{
      $('.readme').hide();
      $('#p'+readme_id).fadeToggle(200, "linear");
    }  
});