/*
slick slider documentation:   https://github.com/kenwheeler/slick
or                            http://kenwheeler.github.io/slick/
*/

// слайдер
$('.js-slider').each(function(idx){
  var nameS = 'slider';
  var pref = 'sl-';
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'js-' + pref + '-' + idx;
    $(this).attr('id', sId);
  }

  $(this).find('.' + nameS + '__list').slick({
    dots: false,
    appendArrows: '#' + sId + ' .' + nameS + '__arrows',
    prevArrow: '#' + sId + ' .' + nameS + '__arrow--prev',
    nextArrow: '#' + sId + ' .' + nameS + '__arrow--next',
    slidesToShow: 3,
    slidesToScroll: 1,
    // autoplay: true,
    autoplaySpeed: 2000,
  });
});



// слайдер для отзывов. Стрелки (prev/next) над слайдером
$('.js-reviews-slider').each(function(idx){
  var nameS = 'reviews-slider';
  var pref = 'revs-';
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'js-' + pref + '-' + idx;
    $(this).attr('id', sId);
  }

  $(this).find('.' + nameS + '__list').slick({
    dots: false,
    appendArrows: '#' + sId + ' .' + nameS + '__arrows',
    prevArrow: '#' + sId + ' .' + nameS + '__arrow--prev',
    nextArrow: '#' + sId + ' .' + nameS + '__arrow--next',
    slidesToShow: 1,
    slidesToScroll: 1,
    // autoplay: true,
    autoplaySpeed: 2000,
  });
});

// слайдер для рекомендуемого оборудования.
$('.js-recommend-slider').each(function(idx){
  var nameS = 'recommend-slider';
  var pref = 'recs-';
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'js-' + pref + '-' + idx;
    $(this).attr('id', sId);
  }

  $(this).find('.' + nameS + '__foto-list').slick({
    dots: false,
    arrows: false,
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: '.' + nameS + '__text-list',
  });

  $(this).find('.' + nameS + '__text-list').slick({
    appendArrows: '#' + sId + ' .' + nameS + '__arrows',
    prevArrow: '#' + sId + ' .' + nameS + '__arrow--prev',
    nextArrow: '#' + sId + ' .' + nameS + '__arrow--next',
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: '.' + nameS + '__foto-list',
    focusOnSelect: true,

    dots: true,
    appendDots: $('#' + sId + ' .' + nameS + '__nav'),
    customPaging: function(slider, index) {
      return $(slider.$slides[index]).data('nav-label');
    }
  });
});

