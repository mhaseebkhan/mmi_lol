# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  callback = ->
    $('#jobs').dataTable
      bJQueryUI: true
      bPaginate: false
      bLengthChange: true
      bFilter: false
      bSort: true
      bInfo: true
      bAutoWidth: true
      bRetrive: false
      bDestroy: true
  setTimeout(callback, 3000)








