$(function() {
  var footerY = $('footer').offset().top

  $('#about-us').click(scrollToAboutUs)
  $('#email-form').submit(saveEmail)
  $('#dismiss').click(hideAlert)

  function scrollToAboutUs() {
    event.preventDefault()
    $('body').animate({scrollTop: footerY}, 500);
  }

  function saveEmail() {
    event.preventDefault()
    $.post('/pre_launch_sign_up_email', { email: $('#email').val() } )
  }

  function hideAlert() {
    $('#success').fadeOut()
  }
})