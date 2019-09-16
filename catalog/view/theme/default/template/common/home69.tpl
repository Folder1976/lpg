<style>
	.webp .s-reviews {
		background-image: url(<?php echo $product['image']; ?>);
	}
</style>
<section class="section s-reviews" id="reviews">
  <div class="container">
    <div class="s-reviews__content">
      <h2 class="section-title wow fadeInUp"><?php echo $product['name']; ?></h2>
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
			<?php foreach($product['attribute_groups'] as $attribute_groups){ ?>
			<?php foreach($attribute_groups['attribute'] as $attribute){ ?>
			<?php
				$texts = explode("\n", $attribute['text']);
			?>
			
			<div class="reviews-slide">
			  <div class="reviews-slide__name"><?php echo $texts[0]; unset($texts[0]); ?></div>
			  <div class="reviews-slide__title"><?php echo $texts[1]; unset($texts[1]); ?></div>
			  <div class="reviews-slide__text">
				<?php foreach($texts as $text){ ?>				
				<p><?php echo $text; ?></p>
				<?php } ?>
			  </div>
			</div>
			<?php } ?>
			<?php } ?>

      </div>
    </div>
  </div>
</section>