# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  modal_selector = '#myModal'
  modal_header = '.modalClass'

  $(document).on 'click', 'a[data-modal]', ->
    location = $(this).attr('href')

    false
