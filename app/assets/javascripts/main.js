$(function() {
  var footerY = $('footer').offset().top

  $('#about-us').click(scrollToAboutUs)

  function scrollToAboutUs() {
    event.preventDefault()
    console.log('sjfldkj')
    $('body').animate({scrollTop: footerY}, 500);
  }
})