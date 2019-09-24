<style>
	.webp .s-stages {
		background-image: url(<?php echo $product['image']; ?>);
	}
</style>
<section class="section s-stages" id="stages">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title wow fadeInUp"><?php echo $product['category_name']; ?></h2>
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
          <?php echo $product['description']; ?>
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
          <div class="s-stages__title"><?php echo $product['meta_title']; ?></div>
          <div class="s-stages__images">
            <div class="slider js-slider">
              <div class="slider__list">
				<?php foreach($product['images'] as $image){  ?>
                <picture>
                  <source type="image/webp" data-srcset="<?php echo $image['popup']; ?>">
					<img class="lazyload js-zoom-foto-bf" data-src="<?php echo $image['popup']; ?>"
						 data-big-foto="<?php echo $image['popup']; ?>" alt="doc-1">
                </picture>
				<?php } ?> 

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
          <div class="s-stages__btn-wrap wow fadeInUp"><a class="bbtn" href="#registration">Заказать установку</a></div>
        </div>
      </div>
    </div>
  </div>
</section>
