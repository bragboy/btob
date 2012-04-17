// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require .//btob
//= require_tree ../templates/
//= require_tree .//models
//= require_tree .//collections
//= require_tree .//views
//= require_tree .//routers
//= require_tree .

//this functions takes two arguments which will blink
function blinkTitle(m1,m2) {
  document.title = m1;
  //this command calls the function again after 1 second
  //with arguments swapped for calling blinkTitle(m2,m1)
  notificationTimer = setTimeout("blinkTitle(' "+m2+" ',' "+m1+" ')", 1500);
}

//this function stops the blinking of title bar
function stopBlinkTitle() {
  //here we use the variable defined above
  clearTimeout(notificationTimer);
}