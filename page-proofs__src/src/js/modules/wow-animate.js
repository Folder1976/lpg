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
