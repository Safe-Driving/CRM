// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() {
       $.noConflict();

    $('#formation_date').datetimepicker();
    $('#formation_datefin').datetimepicker();
    $('#tests_score_date').datepicker();

    jQuery('.menu_container').click(function(){
        jQuery(this).children('.menu_list').slideDown('500') ;
    });
});

jQuery(function($) {
  // when the #country field changes
  $("#score_client").change(function() {
    // make a POST call and replace the content
    var client = $('select#score_client :selected').val();
    if(client == "") client="0";
    jQuery.get('/profiles/update_client_select/' + client, function(data){
        $("#forma").html(data);
    })
    return false;
  });

})
