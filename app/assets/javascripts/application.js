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
//= require jquery-ui
//= require jquery_ujs
//= require_tree .
//= require_self

$(document).ready(function() {
	$('#trip_start_date').datepicker({dateFormat: "yy-mm-dd"});
	$('#trip_start_time').timepicker({
		'minTime': '7:00am',
		'maxTime': '5:00pm',
	});
	$('#trip_end_time').timepicker({
		'minTime': '7:00am',
		'maxTime': '5:00pm',
	});
});  
