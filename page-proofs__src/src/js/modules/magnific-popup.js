// github:         https://github.com/dimsemenov/Magnific-Popup
// site:           http://dimsemenov.com/plugins/magnific-popup/
// documentation:  http://dimsemenov.com/plugins/magnific-popup/documentation.html


$('.mf-popup').magnificPopup({
  type: 'inline',
  preloader: true,
  removalDelay: 100,

  closeMarkup: '<button title="%title%" type="button" class="mf-close"><svg class="icon mf-close__icon"><use xlink:href="/catalog/view/theme/default/img/sprite/symbol/sprite.svg#close"></use></svg></button>',

  callbacks: {
    beforeOpen: function() {
       this.st.mainClass = this.st.el.attr('data-effect');
    }
  },

});

$('body').on('click', '.mf-close', function(){
  $.magnificPopup.close();
});


$('.js-zoom-foto-bf').magnificPopup({
  type: 'image',
});

$('.js-zoom-foto-bf').magnificPopup({
  type: 'image',
  callbacks: {
    elementParse: function(item) {
      // Function will fire for each target element
      // "item.el" is a target DOM element (if present)
      // "item.src" is a source that you may modify
      item.src = $(item.el[0]).data('big-foto');
    }
  }
});
