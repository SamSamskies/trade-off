$(function() {

  $('#about-us').click(scrollToAboutUs)
  $('#email-form').submit(saveEmail)
  $('#dismiss').click(hideAlert)
  $('.filter').click(filterResults)
  $('#search-form').submit(search)
  $('#not-logged-in').click(promptLogin)
  $('#modal-login-link').click(login)
  $('#modal-signup-link').click(displaySignup)
  // $('.modal #form-signup').submit(signup)



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

  function promptLogin() {
    console.log('login prompt')
    $('#modal-login').modal('show')
  }

  function login() {
    event.preventDefault()
    console.log('login')
  }

  function displaySignup() {
    event.preventDefault()
    console.log('signup')
    $('#modal-links').hide()
    $('#form-signup').fadeIn()
  }

  // function signup() {
  //   event.preventDefault()
  //   console.log('signing up')
  //   var options = { data: $(this).serialize(),
  //                   dataType: "JSON" }
  //   $.post('/users', options)
  // }
})