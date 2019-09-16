<style>
	.webp .s-calc {
		background-image: url(<?php echo $product['image']; ?>);
	}
</style>
<section class="section s-calc" id="calc">
  <div class="container">
    <h2 class="section-title wow fadeInUp"><?php echo $product['category_name']; ?></h2>
    <div class="section-subtitle wow fadeInUp"><?php echo $product['name']; ?></div>
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
