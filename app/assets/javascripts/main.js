$(function() {

  $('#about-us').click(scrollToAboutUs)
  $('#email-form').submit(saveEmail)
  $('#dismiss').click(hideAlert)
  $('.filter').click(filterResults)
  $('#search-form').submit(search)

  function scrollToAboutUs() {
    event.preventDefault()
    var footerY = $('footer').offset().top

    $('body').animate({scrollTop: footerY}, 500);
  }

  function saveEmail() {
    event.preventDefault()
    $.post('/pre_launch_sign_up_email', { email: $('#email').val() } )
  }

  function hideAlert() {
    $('#success').fadeOut()
  }

  function filterResults() {
    event.preventDefault()
    $('.result').fadeOut()

    if ($(this).hasClass('all')) {
      $('.result').fadeIn()
    }
    else {
      var filter = $(this).text()
      $("." + filter).fadeIn()
    }
  }

  function search() {
    event.preventDefault()
    console.log('search')
    var $allResults = $('.result')
    var query = $('#query').val()
    $searchResults = $allResults.filter(function(index, result) {
      return $(result).text().match(query) !== null
    })

    $allResults.fadeOut()
    $searchResults.fadeIn()
  }
})