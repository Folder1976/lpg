$('.js-mob-menu-btn').on('click', function(){
  $(this).toggleClass('is-open');
  $('body').toggleClass('mob-menu-is-open');
});