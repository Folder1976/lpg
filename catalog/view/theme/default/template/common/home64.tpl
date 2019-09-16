<section class="section s-registration" id="registration">
  <div class="container">
    <div class="row">
      <div class="col-6 wow fadeInUp">
        <div class="s-registration__info s-registration-info">
          <h2 class="s-registration-info__title"><?php echo $product['name']; ?></h2>
		  <?php echo $product['description']; ?>
        </div>
      </div>
      <div class="col-6 wow fadeInUp">
        <h2 class="section-title"><?php echo $product['category_name']; ?></h2>
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