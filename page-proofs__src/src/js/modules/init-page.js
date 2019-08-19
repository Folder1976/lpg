// init page

// скролим страницу к указаному в data-scroll блоку
$('.js-scroll-btn').on('click', function(e) {
  e.preventDefault();
  var s = $(this).data('scroll');
  $('html, body').animate({
    scrollTop: $(s).offset().top
  }, 1000);
  return false;
});


