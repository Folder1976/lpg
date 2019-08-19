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