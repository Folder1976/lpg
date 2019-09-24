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
              <input class="form__control" type="text" name="gasoline-consumption" value="20" placeholder="Расход бензина на 100 км" required>
              <input class="form__control" type="text" name="mileage" value="5000" placeholder="Пробег автомобиля за год" required>
            </div>
          </div>
					
					<div class="form__row">
            <div class="form__row-title form-row-title">
              <div class="form-row-title__num">2</div>
              <div class="form-row-title__text">Выберите цену на топливо</div>
            </div>
						<div class="form__group form__group--inline">
              <input class="form__control" type="text" name="gas-price" value="12" placeholder="цена за 1л газа" required>
              <input class="form__control" type="text" name="gasoline-price" value="28" placeholder="цена 1л бензина" required>
            </div>
          </div>
					
          <div class="form__row">
            <div class="form__row-title form-row-title">
              <div class="form-row-title__num">3</div>
              <div class="form-row-title__text">Стоимость оборудования с установкой</div>
            </div>
            <div class="form__group form__group--inline">
              <select class="custom-select js-custom-select" name="cylinders" required>
								<?php foreach($product['attribute_groups'] as $attribute_groups){ ?>
								<?php foreach($attribute_groups['attribute'] as $attribute){ ?>
								<?php $text = explode(';', $attribute['text']); ?>
									<option value="<?php echo $text[0]; ?>"><?php echo str_replace('"', '\"', $text[1]); ?></option>
								<?php } ?>
								<?php } ?>
              </select>
            </div>
          </div>
          <div class="form__row">
            <button class="bbtn js-calc">Рассчитать стоимость</button>
          </div>
        </form>
      </div>
			<script>
				$(document).on('click', '.js-calc', function(){
					
					//debugger;
					
					var rashod_b = parseInt($('input[name="gasoline-consumption"]').val());	
					var mileage = parseInt($('input[name="mileage"]').val());	
				
					var gas_price = parseInt($('input[name="gas-price"]').val());	
					var gasoline_price = parseInt($('input[name="gasoline-price"]').val());
					
					var total = parseInt($('select[name="cylinders"]').val());
					var total_text = $('select[name="cylinders"] option:selected').text();
					
					var benzin = (mileage/100*rashod_b*gasoline_price);
					var gaz = (mileage/100*(rashod_b*1.15)*gas_price);
					
					var year = total / (benzin - gaz);
					var month = (benzin - gaz) / 12;
					
					year = year.toFixed(2);
					month = month.toFixed(0);
					
					$('.year').html(year);
					$('.month').html(month);
					$('.s-calc-result-total__sum').html(total+' руб');
					$('.s-calc-result-total__text').html(total_text);
					
					$('input[name="rashod_na_100"]').val(rashod_b);
					$('input[name="km_v_god"]').val(mileage);
					$('input[name="ustanovka"]').val(total_text);
					$('input[name="okupaemost_let"]').val(year);
					
					
					console.log(year);
					
				});
			</script>
      <div class="s-calc__col-right">
        <div class="s-calc__result s-calc-result">
          <div class="s-calc-result__econom-list">
            <div class="s-calc-result-econom">
              <div class="s-calc-result-econom__title">Экономия:</div>
              <div class="s-calc-result-econom__number month">1296</div>
              <div class="s-calc-result-econom__unit">₽/мес</div>
            </div>
            <div class="s-calc-result-econom">
              <div class="s-calc-result-econom__title">Окупаемость:</div>
              <div class="s-calc-result-econom__number year">10</div>
              <div class="s-calc-result-econom__unit">лет</div>
            </div>
          </div>
          <div class="s-calc-result__total s-calc-result-total">
            <div class="s-calc-result-total__title">Вам отлично подойдёт:</div>
            <div class="s-calc-result-total__text">Комплект Alpha M 4 цил. ( эл.к-т Alpha M-4 / AT09 Alaska / IG7 Alpha LP)</div>
            <div class="s-calc-result-total__sum">17 000 руб</div>
          </div>
          <form class="s-calc-result__form s-calc-result-form js-universalform" action="">
            <input type="hidden" name="subj" value="consultation-1">
            
						<input type="hidden" name="subj" value="consultation-1">
            <input type="hidden" name="rashod_na_100" value="consultation-1">
            <input type="hidden" name="km_v_god" value="consultation-1">
            <input type="hidden" name="ustanovka" value="consultation-1">
            <input type="hidden" name="okupaemost_let" value="consultation-1">
            
						
						<div class="form__group form__group--inline">
              <input class="form__control form__control--white s-calc-result-form__input" name="telephone" type="text" placeholder="Ваш номер телефона" required>
              <button type="submit" class="s-calc-result-form__btn bbtn bbtn--white">Заказать консультацию</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
