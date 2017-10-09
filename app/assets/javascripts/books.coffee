$(document).ready ->
  if (document.getElementById("books/show"))
    $('#read-link').click (event) ->
      event.preventDefault()
      $('#full-desc').toggle(true)
      $('#short-desc').toggle(false)

    $('#hide-link').click (event) ->
      event.preventDefault()
      $('#full-desc').toggle(false)
      $('#short-desc').toggle(true)

    $('#add-button').click (event) ->
      $('#add-button').addClass('disabled')
      $('#buttons').toggle(false)

  if (document.getElementById("books/show") || document.getElementById("carts/show"))
    $('.quantity-plus').click (event) ->
      event.preventDefault()
      old_value = parseInt($('.quantity-input').val())
      $('.quantity-input').val(old_value + 1)

    $('.quantity-minus').click (event) ->
      event.preventDefault()
      old_value = parseInt($('.quantity-input').val())
      if old_value > 1
        $('.quantity-input').val(old_value - 1)
