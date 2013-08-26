# 1. READY
$ ->
  console.log "ok"

  $('.dropdown-button').click (e) ->
    if $(this).parent().hasClass('activated')
      $(this).parent().removeClass('activated')
      $('.dropdown-list').addClass('hidden')
    else
      $(this).parent().addClass('activated')
      $('.dropdown-list').removeClass('hidden')

  $('.list-item').click (e) ->
    $('.icon-check').addClass('hidden')
    textReplace = $(this).find('.item-label').text()
    $(this).addClass('activated')
    $(this).find('.icon-check').removeClass('hidden')
    setTimeout ( ->
      $(this).removeClass('activated')
      $(this).addClass('hidden')
      $('.dropdown-group').removeClass('activated')
      $('.dropdown-list').addClass('hidden')
      $('.button-label').text(textReplace)
      console.log(textReplace)
    ), 500
    e.preventDefault()
