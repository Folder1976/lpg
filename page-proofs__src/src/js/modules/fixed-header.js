// fixed header after scroll
$(window).on('scroll', function() {
  if ($(window).scrollTop() > 50) {
    $('.header').addClass('is-scroll');
  } else {
    $('.header').removeClass('is-scroll');
  }
});

