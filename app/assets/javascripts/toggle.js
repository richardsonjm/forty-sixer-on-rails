$(document).ready(function(){
  $('#mountains-link').click(function(){
      $('#mountains').toggle();
  });

  $('#hikes-link').click(function(){
      $('#hikes').toggle();
  });

  $('#mountains-link').on('mouseover', function(){
     $(this).css( 'cursor', 'pointer' );
  });

  $('#hikes-link').on('mouseover', function(){
     $(this).css( 'cursor', 'pointer' );
  });

   $('#new-hike-link').click(function(){
      $('#new-hike').toggle();
      $('#hikes').toggle();
  });

  $('#new-hike-link').on('mouseover', function(){
     $(this).css( 'cursor', 'pointer' );
  });

});
