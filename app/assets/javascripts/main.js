$(function() {

  $('#about-us').click(scrollToAboutUs)
  $('#email-form').submit(saveEmail)
  $('#dismiss').click(hideAlert)
  $('.filter').click(handleFilterClick)

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

  function handleFilterClick() {
    event.preventDefault()
    $('.result').fadeOut()

    var filter = $(this).text()
    $("." + filter).fadeIn()
  }
})