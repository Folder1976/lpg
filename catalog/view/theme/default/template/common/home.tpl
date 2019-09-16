<?php echo $header; ?>

<<<<<<< HEAD
<?php foreach($products as $product){ 
=======
<section class="section s-top" id="top">
  <div class="container">
    <div class="row">
      <div class="col-12 s-top__content">
        <div class="s-top__title">
          <h1 class="site-title wow fadeInUp">ГБО на авто:</h1>
          <h2 class="site-subtitle wow fadeInUp">газовое оборудование<br>на автомобиль</h2>
        </div>
        <div class="s-top__info s-top-info wow fadeInUp">
          <div class="s-top-info__item">
            <div class="s-top-info__title">2 года</div>
            <div class="s-top-info__text">Гарантия на всю продукцию<br>с даты изготовления!</div>
          </div>
          <div class="s-top-info__item">
            <div class="s-top-info__title">20 лет</div>
            <div class="s-top-info__text">Опыта в важнейших направлениях<br>рынка газобаллонного оборудования</div>
          </div>
        </div>
        <div class="s-top__btn wow fadeInUp"><a class="bbtn" href="#calc">Рассчитать стоимость</a></div>
      </div>
    </div>
  </div>
  <div class="s-top__bottom s-top-bottom">
    <div class="container">
      <div class="copy"></div>
      <div class="s-top-bottom__inner">
        <div class="s-top-bottom__left">
          <div class="s-top__copy">Интергассервис, 2019</div>
        </div>
        <div class="s-top-bottom__right">
          <div class="s-top__social social"><a class="social__link" href="#">
              <svg class="icon icon-facebook social__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#facebook"></use>
              </svg></a><a class="social__link" href="#">
              <svg class="icon icon-instagram social__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#instagram"></use>
              </svg></a><a class="social__link" href="#">
              <svg class="icon icon-youtube social__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#youtube"></use>
              </svg></a></div>
          <div class="s-top__copy2">Разработано студией</div>
        </div>
      </div>
    </div>
  </div>
  <div class="s-top__scroll js-scroll-btn" data-scroll="#info">
    <svg class="icon icon-scroll-down s-top__scroll-icon">
      <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#scroll-down"></use>
    </svg>
  </div>
</section>
<section class="section s-info" id="info">
  <div class="container">
    <div class="container">
      <div class="row">
        <div class="col-6"></div>
        <div class="col-6">
          <h2 class="section-title wow fadeInUp"><span>Все об установке ГБО,</span><br> что может вас интересовать<br> в одной странице</h2>
          <div class="s-info__text wow fadeInUp">
            <p>На нашем сайте вы узнаете, почему ГБО на автомобиль является <u>экономичным и современным решением</u>.</p>
            <p>Газовое оборудование для машины учитывает все технологические особенности как российских, так и импортных автомобилей.</p>
          </div>
          <div class="s-info__btn wow fadeInUp"><a class="bbtn bbtn--icon" href="#">Смотреть видео
              <svg class="icon icon-video bbtn__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#video"></use>
              </svg></a></div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-calc" id="calc">
  <div class="container">
    <h2 class="section-title wow fadeInUp">Зачем Вам ГБО?</h2>
    <div class="section-subtitle wow fadeInUp">Начнем с рассчета окупаемости</div>
    <div class="s-calc__row wow fadeInUp">
      <div class="s-calc__col-left">
        <form class="form s-calc__form js-calc-form js-universalform" action="">
          <input type="hidden" name="subj" value="calc">
          <div class="form__row">
            <div class="form__row-title form-row-title">
              <div class="form-row-title__num">1</div>
              <div class="form-row-title__text">Введите данные</div>
            </div>
            <div class="form__group form__group--inline">
              <input class="form__control" type="text" name="gasoline-consumption" value="" placeholder="Расход бензина на 100 км" required>
              <input class="form__control" type="text" name="mileage" value="" placeholder="Пробег автомобиля за сутки" required>
            </div>
          </div>
          <div class="form__row">
            <div class="form__row-title form-row-title">
              <div class="form-row-title__num">2</div>
              <div class="form-row-title__text">Выберите кол-во цилиндров</div>
            </div>
            <div class="form__group form__group--inline">
              <select class="custom-select js-custom-select" name="cylinders" required>
                <option value="4">4 цилиндра</option>
                <option value="5">5 цилиндров</option>
                <option value="6">6 цилиндров</option>
                <option value="7">7 цилиндров</option>
                <option value="8">8 цилиндров</option>
              </select>
              <select class="custom-select js-custom-select" name="engine-power" required>
                <option value="0">Мощность двигателя</option>
                <option value="1000">1000</option>
                <option value="1100">1100</option>
                <option value="1200">1200</option>
                <option value="1300">1300</option>
                <option value="1400">1400</option>
                <option value="1500">1500</option>
                <option value="1600">1600</option>
              </select>
            </div>
          </div>
          <div class="form__row">
            <button class="bbtn js-calc">Рассчитать стоимость</button>
          </div>
        </form>
      </div>
      <div class="s-calc__col-right">
        <div class="s-calc__result s-calc-result">
          <div class="s-calc-result__econom-list">
            <div class="s-calc-result-econom">
              <div class="s-calc-result-econom__title">Экономия:</div>
              <div class="s-calc-result-econom__number">1296</div>
              <div class="s-calc-result-econom__unit">₽/мес</div>
            </div>
            <div class="s-calc-result-econom">
              <div class="s-calc-result-econom__title">Окупаемость:</div>
              <div class="s-calc-result-econom__number">10</div>
              <div class="s-calc-result-econom__unit">месяцев</div>
            </div>
          </div>
          <div class="s-calc-result__total s-calc-result-total">
            <div class="s-calc-result-total__title">Вам отлично подойдёт:</div>
            <div class="s-calc-result-total__text">Комплект Alpha M 4 цил. ( эл.к-т Alpha M-4 / AT09 Alaska / IG7 Alpha LP)</div>
            <div class="s-calc-result-total__sum">17 000 руб</div>
          </div>
          <form class="s-calc-result__form s-calc-result-form js-universalform" action="">
            <input type="hidden" name="subj" value="consultation-1">
            <div class="form__group form__group--inline">
              <input class="form__control form__control--white s-calc-result-form__input" type="text" placeholder="Ваш номер телефона" required>
              <button type="submit" class="s-calc-result-form__btn bbtn bbtn--white">Заказать консультацию</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-registration" id="registration">
  <div class="container">
    <div class="row">
      <div class="col-6 wow fadeInUp">
        <div class="s-registration__info s-registration-info">
          <h2 class="s-registration-info__title">Как зарегистрировать и установитьГБО?</h2>
          <ol class="s-registration-info__list">
            <li>Выбираем оборудование. Для этого обращаемся либо в отдел установки.</li>
            <li>Предоставляем данные на машину в отдел установки для формирования документов на получение разрешительной документации от ГИБДД.</li>
            <li>Относим документы и предоставляем автомобиль для осмотра в ГИБДД.</li>
            <li>Устанавливаем ГБО.</li>
            <li>Получаем разрешение в ГИБДД.</li>
            <li>Получаем список документов для регистрации ГБО.</li>
            <li>Регистрируем ГБО в ГИБДД.</li>
          </ol>
        </div>
      </div>
      <div class="col-6 wow fadeInUp">
        <h2 class="section-title">Выглядит сложно?</h2>
        <div class="section-subtitle">Сэкономьте массу времени и нервов при<br>регистрации ГБО с нами!</div>
        <form class="form s-registration__form s-registration-form js-universalform">
          <input type="hidden" name="subj" value="registeration-gbo">
          <div class="form__group form__group--inline">
            <input class="form__control" type="text" name="name" value="" placeholder="Ваше имя">
            <input class="form__control" type="text" name="phone" value="" placeholder="Ваш номер телефона" required>
          </div>
          <div class="form__group">
            <input class="form__control form__control--w100" type="text" name="model" value="" placeholder="Марка, модель, год выпуска, мощность двигателя">
          </div>
          <div class="form__group">
            <button type="submit" class="bbtn s-registration-form__submit" type="submit">Оставить заявку</button>
          </div>
        </form>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <div class="s-registration__info-bottom s-registration-info-bottom">
          <div class="s-registration-info-bottom__title wow fadeInUp">Регистрирую ГБО с нами, Вы получаете преимущемтва:</div>
          <div class="s-registration-info-bottom__list wow fadeInUp">
            <div class="s-registration-info-bottom-list-item">
              <svg class="icon icon-clock s-registration-info-bottom-list-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#clock"></use>
              </svg>
              <div class="s-registration-info-bottom-list-item__text">Экономия времени</div>
            </div>
            <div class="s-registration-info-bottom-list-item">
              <svg class="icon icon-checklist s-registration-info-bottom-list-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#checklist"></use>
              </svg>
              <div class="s-registration-info-bottom-list-item__text">Бумаги берем на себя</div>
            </div>
            <div class="s-registration-info-bottom-list-item">
              <svg class="icon icon-group s-registration-info-bottom-list-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#group"></use>
              </svg>
              <div class="s-registration-info-bottom-list-item__text">Никаких очередей</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-stages" id="stages">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title wow fadeInUp">Этапы работы</h2>
        <div class="s-stages__list s-stages-list wow fadeInUp">
          <div class="s-stages-list__item">
            <div class="s-stages-list__num">1</div>
            <div class="s-stages-list__text">Первичные документы</div>
          </div>
          <div class="s-stages-list__item s-stages-list__item--mob-hidden">
            <div class="s-stages-list__num">2</div>
            <div class="s-stages-list__text">Установка ГБО</div>
          </div>
          <div class="s-stages-list__item s-stages-list__item--mob-hidden">
            <div class="s-stages-list__num">3</div>
            <div class="s-stages-list__text">Оформление в ГИБДД</div>
          </div>
        </div>
        <div class="s-stages__title wow fadeInUp">В офисе партнёра Вы даёте для обработки<br>необходимые документы:</div>
        <p class="wow fadeInUp">
          - Паспорт транспортного средства;<br>
          - Паспорт собственника транспортного средства;<br>
          - Свидетельство о регистрации транспортного средства.
        </p><a class="link wow fadeInUp" href="#">Подробнее</a>
        <div class="s-stages-list s-stages-list--mob">
          <div class="s-stages-list__item">
            <div class="s-stages-list__num">2</div>
            <div class="s-stages-list__text">Установка ГБО</div>
          </div>
          <div class="s-stages-list__item">
            <div class="s-stages-list__num">3</div>
            <div class="s-stages-list__text">Оформление в ГИБДД</div>
          </div>
        </div>
        <div class="s-stages__docs wow fadeInUp">
          <div class="s-stages__title">Документы, которые Вы получаете на этом этапе:</div>
          <div class="s-stages__images">
            <div class="slider js-slider">
              <div class="slider__list">
                <picture>
                  <source type="image/webp" data-srcset="/catalog/view/theme/default/img/foto/doc-1.webp"><img class="lazyload js-zoom-foto-bf" data-src="/catalog/view/theme/default/img/foto/doc-1.png" data-big-foto="/catalog/view/theme/default/img/foto/doc-1.png" alt="doc-1">
                </picture>
                <picture>
                  <source type="image/webp" data-srcset="/catalog/view/theme/default/img/foto/doc-2.webp"><img class="lazyload js-zoom-foto-bf" data-src="/catalog/view/theme/default/img/foto/doc-2.png" data-big-foto="/catalog/view/theme/default/img/foto/doc-2.png" alt="doc-2">
                </picture>
              </div>
              <div class="slider__arrows">
                <div class="slider__arrow slider__arrow--prev">
                  <svg class="icon icon-arrow-left slider__arrow-icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-left"></use>
                  </svg>
                </div>
                <div class="slider__arrow slider__arrow--next">
                  <svg class="icon icon-arrow-right slider__arrow-icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-right"></use>
                  </svg>
                </div>
              </div>
            </div>
          </div>
          <div class="s-stages__btn-wrap wow fadeInUp"><a class="bbtn" href="#">Заказать установку</a></div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-reviews" id="reviews">
  <div class="container">
    <div class="s-reviews__content">
      <h2 class="section-title wow fadeInUp">Клиенты о нашей <br>работе по установке и регистрации ГБО</h2>
      <div class="s-reviews__slider reviews-slider js-reviews-slider wow fadeInUp">
        <div class="reviews-slider__arrows">
          <div class="reviews-slider__arrow reviews-slider__arrow--prev">
            <svg class="icon icon-arrow-left reviews-slider__arrow-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-left"></use>
            </svg>
          </div>
          <div class="reviews-slider__arrow reviews-slider__arrow--next">
            <svg class="icon icon-arrow-right reviews-slider__arrow-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-right"></use>
            </svg>
          </div>
        </div>
        <div class="reviews-slider__list">
          <div class="reviews-slide">
            <div class="reviews-slide__name">Александр Игоревич</div>
            <div class="reviews-slide__title">Отличный сервис. Профессионалы своего дела!</div>
            <div class="reviews-slide__text">
              <p>Приезжаю второй раз. Очень доволен сервисом подходом к владельцу авто. Все проделанные работы предельно ясно рассказаны и самое приятное, что лишних и совсем ненужных работ не предлагают совершать раньше времени.</p>
              <p>Обслуживался ранее на другом сервисе, так там постоянно считали такие суммы, что выходили в хорошую копеечку. Ребята молодцы, особенно спасибо Володе. Рекомендую!!!</p>
            </div>
          </div>
          <div class="reviews-slide">
            <div class="reviews-slide__name">Александр Игоревич</div>
            <div class="reviews-slide__title">Отличный сервис. Профессионалы своего дела!</div>
            <div class="reviews-slide__text">
              <p>Приезжаю второй раз. Очень доволен сервисом подходом к владельцу авто. Все проделанные работы предельно ясно рассказаны и самое приятное, что лишних и совсем ненужных работ не предлагают совершать раньше времени.</p>
              <p>Обслуживался ранее на другом сервисе, так там постоянно считали такие суммы, что выходили в хорошую копеечку. Ребята молодцы, особенно спасибо Володе. Рекомендую!!!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-recommend" id="recommend">
  <div class="container">
    <h2 class="section-title wow fadeInUp">Мы рекомендуем ГИС Alpha </h2>
    <div class="section-subtitle wow fadeInUp">Отечественная газовая инжекторная система мирового уровня</div>
    <div class="s-recommend__slider recommend-slider js-recommend-slider row">
      <div class="recommend-slider__nav col-12 wow fadeInUp"></div>
      <div class="recommend-slider__foto-list col-6 wow fadeInUp">
        <div class="recommend-slider__foto-slide recommend-slider-foto-slide">
          <picture>
            <source type="image/webp" media="(max-width: 1366px)" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3.webp">
            <source type="image/png" media="(max-width: 1366px)" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3.png">
            <source type="image/webp" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3_1920.webp"><img class="lazyload" data-src="./img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3_1920.png" alt="3-4 цилиндра">
          </picture>
        </div>
        <div class="recommend-slider__foto-slide recommend-slider-foto-slide">
          <picture>
            <source type="image/webp" media="(max-width: 1366px)" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3.webp">
            <source type="image/png" media="(max-width: 1366px)" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3.png">
            <source type="image/webp" data-srcset="catalog/view/theme/default/img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3_1920.webp"><img class="lazyload" data-src="./img/foto/d3d4a64c3a8fbe6b0b4e47e53e8823a3_1920.png" alt="3-4 цилиндра">
          </picture>
        </div>
      </div>
      <div class="recommend-slider__content col-6 wow fadeInUp">
        <div class="recommend-slider__text-list">
          <div class="recommend-slider__text-slide recommend-slider-text-slide" data-nav-label="3-4 цилиндра">
            <div class="recommend-slider-text-slide__title">ГИС Alpha комплеГИС Alpha комплектация "стандарт", автомобиль 3-4 цилиндрактация</div>
            <div class="recommend-slider-text-slide__text">ГИС Alpha в комплектации "премиум" идеально подходит для автомобилей: с минимальным временем впрыска, с попарно-параллельным впрыском, с впрыском переходящим из распределенного в попарно-параллельный. Фирменная программа Alpha в сочетании с высококачественными форсунками Barracuda превосходный комплект для тех, кто не ищет компромисов.</div>
          </div>
          <div class="recommend-slider__text-slide recommend-slider-text-slide" data-nav-label="6-8 цилиндров">
            <div class="recommend-slider-text-slide__title">2 ГИС Alpha комплеГИС Alpha комплектация "стандарт", автомобиль 3-4 цилиндрактация</div>
            <div class="recommend-slider-text-slide__text">2 ГИС Alpha в комплектации "премиум" идеально подходит для автомобилей: с минимальным временем впрыска, с попарно-параллельным впрыском, с впрыском переходящим из распределенного в попарно-параллельный. Фирменная программа Alpha в сочетании с высококачественными форсунками Barracuda превосходный комплект для тех, кто не ищет компромисов.</div>
          </div>
        </div>
        <div class="recommend-slider__arrows">
          <div class="recommend-slider__arrow recommend-slider__arrow--prev">
            <svg class="icon icon-arrow-left recommend-slider__arrow-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-left"></use>
            </svg>
          </div>
          <div class="recommend-slider__arrow recommend-slider__arrow--next">
            <svg class="icon icon-arrow-right recommend-slider__arrow-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#arrow-right"></use>
            </svg>
          </div><a class="recommend-slider__download-btn bbtn" href="#">Скачать прайс</a>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section s-contact" id="contact">
  <div class="container">
    <div class="s-contact__content">
      <h2 class="section-title wow fadeInUp">Интересует ГБО?</h2>
      <div class="section-subtitle wow fadeInUp">Не знаете как самостоятельно со всем разобраться?<br>Оставьте заявку и наш специалист позвонит Вам для консультации</div>
      <form class="form js-universalform s-contact__form s-contact-form wow fadeInUp">
        <input type="hidden" name="subj" value="consultation-2">
        <div class="form__row">
          <div class="form__group form__group--inline">
            <input class="form__control" type="text" name="city" value="" placeholder="Ваш город" required>
            <input class="form__control" type="text" name="phone" value="" placeholder="Ваш номер телефона" required>
          </div>
        </div>
        <div class="form__row s-contact-form__row-submit">
          <button type="submit" class="bbtn">Заказать консультацию</button>
        </div>
      </form>
      <div class="s-contact__info-row wow fadeInUp">
        <div class="s-contact__info s-contact-info">
          <div class="s-contact-info__title">Контактные данные</div>
          <div class="s-contact-info__content"><a href="tel:84959953121">8-495-995-31-21</a><br><a href="mailto:autogas2007@yandex.ru">autogas2007@yandex.ru</a></div>
        </div>
        <div class="s-contact__info s-contact-info">
          <div class="s-contact-info__title">Установочные центры</div>
          <div class="s-contact-info__content">
            <p><b>Москва, Варшавское шоссе, дом 37 корпус 4, Техцентр "Деалавто"</b></p>
            <p>Москва, Сельскохозяйственная улица, дом 43 строение 1</p>
            <p>г. Зеленоград, ул. Авторемонтная, строение 3. техцентр «ЗЕЛЕНОГРАД ЛАДА»</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="s-contact__map"><iframe data-src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2249.5660869427834!2d37.61758668605813!3d55.679145303205715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1565262340871!5m2!1sru!2sua" frameborder="0" style="border:0" allowfullscreen class="lazyload"></iframe></div>
  <div class="s-contact__bg"></div>
</section>

>>>>>>> 2625d76a26f8266fd361f77abdaa9567eccc020b

  //echo '<br>'.$product['category_id'];
    
  require_once DIR_TEMPLATE.'default/template/common/home'.$product['category_id'].'.tpl';

} ?>

<?php echo $footer; ?>

<?php /* ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php */ ?>


