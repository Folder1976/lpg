<section class="section s-contact" id="contact">
  <div class="container">
    <div class="s-contact__content">
      <h2 class="section-title wow fadeInUp"><?php echo $product['category_name']; ?></h2>
      <div class="section-subtitle wow fadeInUp"><?php echo $product['description']; ?></div>
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
          <div class="s-contact-info__content"><a href="tel:<?php echo preg_replace("/[^0-9]/", '', $telephone); ?>"><?php echo $telephone; ?></a>
		  <br><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></div>
        </div>
        <div class="s-contact__info s-contact-info">
          <div class="s-contact-info__title">Установочные центры</div>
			<div class="s-contact-info__content">
				<?php $count = 1 ;?>
				<?php foreach($product['attribute_groups'] as $attribute_groups){ ?>
				<?php foreach($attribute_groups['attribute'] as $attribute){ ?>
					<?php if($count++ == 1){ ?>
					<p><b><?php echo $attribute['text']; ?></b></p>
					<?php }else{ ?>
					<p><?php echo $attribute['text']; ?></p>
					<?php } ?>
				<?php } ?>
				<?php } ?>
			</div>
        </div>
      </div>
    </div>
  </div>
  <div class="s-contact__map"><iframe data-src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2249.5660869427834!2d37.61758668605813!3d55.679145303205715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1565262340871!5m2!1sru!2sua" frameborder="0" style="border:0" allowfullscreen class="lazyload"></iframe></div>
  <div class="s-contact__bg"></div>
</section>
