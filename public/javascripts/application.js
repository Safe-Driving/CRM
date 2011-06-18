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