$(document).ready(function() {
"use strict"; 
// debugger;


// init page
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

// wow animate
$(document).ready(function() {

var wow = new WOW(
  {
    // boxClass:     'wow',      // класс, скрывающий элемент до момента отображения на экране (по умолчанию, wow)
    // animateClass: 'animated', // класс для анимации элемента (по умолчанию, animated)
    offset:       50,          // расстояние в пикселях от нижнего края браузера до верхней границы элемента, необходимое для начала анимации (по умолчанию, 0)
    mobile:       false,       // включение/отключение WOW.js на мобильных устройствах (по умолчанию, включено)
    // live:         true,       // поддержка асинхронно загруженных элементов (по умолчанию, включена)
    // callback:     function(box) {
    //   // функция срабатывает каждый раз при старте анимации
    //   // аргумент box — элемент, для которого была запущена анимация
    // },
    // scrollContainer: null // селектор прокручивающегося контейнера (опционально, по умолчанию, window)
  }
);
wow.init();

});


// slicknav mobile menu
// modules/slicknav.js

// mob-menu
$('.js-mob-menu-btn').on('click', function(){
  $(this).toggleClass('is-open');
  $('body').toggleClass('mob-menu-is-open');
});

// fixed header after scroll
// fixed header after scroll
$(window).on('scroll', function() {
  if ($(window).scrollTop() > 50) {
    $('.header').addClass('is-scroll');
  } else {
    $('.header').removeClass('is-scroll');
  }
});


// back-to-top button
// back-to-top button
var offset = 200;
var duration = 500;
$(window).scroll(function() {
  if ($(this).scrollTop() > offset) {
    $('.back-to-top').addClass('is-active');
  } else {
    $('.back-to-top').removeClass('is-active');
  }
});

$('.back-to-top').on('click',function(event) {
  event.preventDefault();
  $('html, body').animate({
    scrollTop: 0
  }, duration);
  return false;
});


// маска для телефона
// modules/maskedinput.js


// Slick slider
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


// tabs
// modules/tabs.js


// accordion
// modules/accordion.js


// Magnific popup
// github:         https://github.com/dimsemenov/Magnific-Popup
// site:           http://dimsemenov.com/plugins/magnific-popup/
// documentation:  http://dimsemenov.com/plugins/magnific-popup/documentation.html


$('.mf-popup').magnificPopup({
  type: 'inline',
  preloader: true,
  removalDelay: 100,

  closeMarkup: '<button title="%title%" type="button" class="mf-close"><svg class="icon mf-close__icon"><use xlink:href="img/sprite/symbol/sprite.svg#close"></use></svg></button>',

  callbacks: {
    beforeOpen: function() {
       this.st.mainClass = this.st.el.attr('data-effect');
    }
  },

});

$('body').on('click', '.mf-close', function(){
  $.magnificPopup.close();
});

// custom-select.js
// custom-select
// стилизация select

$('.js-custom-select').customSelect();





// калькулятор
$('.js-calc').on('click', function(e){
  // отменяем отправку формы
  e.preventDefault();

  // переменные
  var form = $(this).closest('form');
  var vGC = form.find('[name=gasoline-consumption]').val();
  var vM = form.find('[name=mileage]').val();
  var vC = form.find('[name=cylinders]').val();
  var vEP = form.find('[name=engine-power]').val();
  // console.log(vGC, vM, vC, vEP);




  // рассчет...
  // ....



  // выводим результат
  $('.s-calc-result').show(300);

});

});