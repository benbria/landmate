# 1. READY
$ ->
  console.log "ok"

  $('.goto-request').click (e) ->
    $('#landing-page').addClass('hidden')
    $('#request-page').removeClass('hidden')
    return false

  $('.goto-compliment').click (e) ->
    $('#landing-page').addClass('hidden')
    $('#compliment-page').removeClass('hidden')
    return false

  $('.goto-complaint').click (e) ->
    $('#landing-page').addClass('hidden')
    $('#complaint-page').removeClass('hidden')
    return false

  $('.dropdown-button').click (e) ->
    $(e.currentTarget).next('.dropdown-list').removeClass('hidden')

  $('.list-item').click (e) ->
    $(this).parent().find('.list-item').removeClass('activated')
    $('.icon-check').addClass('hidden')
    textReplace = $(this).find('.item-label').text()
    $(this).addClass('activated')
    $(this).find('.icon-check').removeClass('hidden')
    setTimeout ( ->
      $(this).removeClass('activated')
      $(this).addClass('hidden')
      $('.dropdown-list').addClass('hidden')
      $(e.currentTarget).closest('.dropdown-group').find('.button-label').text(textReplace)
    ), 500
    e.preventDefault()

  $('.close-button').click (e) ->
    $(this).parent().addClass('hidden')

  $('.close-page').click (e) ->
    $('#landing-page').removeClass('hidden')
    $(this).parent().parent().addClass('hidden')

  $('.logo').click (e) ->
    $(this).addClass('activated')
    setTimeout ( ->
      $('.logo').removeClass('activated')
    ), 600
    e.preventDefault()
