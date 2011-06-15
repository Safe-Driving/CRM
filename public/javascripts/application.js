// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function(){

 jQuery('.menu_container').toggle(function(){
       jQuery(this).children('.menu_list').slideToggle('500') ;
 }, function(){
     jQuery(this).children('.menu_list').slideToggle('500') ;
 });
});