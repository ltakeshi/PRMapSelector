# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#

$ ->
  $("#masonry-container-check").masonry
    itemSelector: ".masonry-checkbox"
    isAnimated: true
$ ->
  $("#masonry-container-select").masonry
    itemSelector: ".masonry-selectbox"
    isAnimated: true
