# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".date_select").datepicker({
    changeMonth: true,
    changeYear: true,
    yearRange: "-100:+0"
  })