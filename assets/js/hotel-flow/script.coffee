# 1. READY
$ ->
  console.log "ok"

  $('.dropdown-button').click (e) ->
      $('.dropdown-list').removeClass('hidden')

  $('.list-item').click (e) ->
    $('.list-item').removeClass('activated')
    $('.icon-check').addClass('hidden')
    textReplace = $(this).find('.item-label').text()
    $(this).addClass('activated')
    $(this).find('.icon-check').removeClass('hidden')
    setTimeout ( ->
      $(this).removeClass('activated')
      $(this).addClass('hidden')
      $('.dropdown-list').addClass('hidden')
      $('.button-label').text(textReplace)
    ), 500
    e.preventDefault()

  $('.close-button').click (e) ->
    $(this).parent().addClass('hidden')
