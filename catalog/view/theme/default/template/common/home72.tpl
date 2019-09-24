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
  <div class="s-contact__map">
    <iframe src="<?php echo $product['meta_keyword']; ?>" width="100%" height="100%" frameborder="0"></iframe></div>
  <div class="s-contact__bg"></div>
</section>


