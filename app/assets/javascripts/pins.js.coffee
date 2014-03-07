# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      isFitWidth: true
  if $('.pagination').length
    $(window).scroll ->
      url = $("a[rel='next']").attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.pagination').html('<%= image_tag("http://i.imgur.com/6RMhx.gif") %>')
        $.getScript(url)
  $(window).scroll()
