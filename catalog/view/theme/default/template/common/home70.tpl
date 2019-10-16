<section class="section s-recommend" id="recommend">
  <div class="container">
    <h2 class="section-title wow fadeInUp"><?php echo $product[0]['category_name']; ?></h2>
    <div class="section-subtitle wow fadeInUp">Отечественная газовая инжекторная система мирового уровня</div>
    <div class="s-recommend__slider recommend-slider js-recommend-slider row">
      <div class="recommend-slider__nav col-12 wow fadeInUp"></div>
      <div class="recommend-slider__foto-list col-6 wow fadeInUp">
		<?php foreach($product as $prod){ ?>
		<?php if(is_array($prod)){?>
        <div class="recommend-slider__foto-slide recommend-slider-foto-slide">
          <picture>
            <source type="image/webp" media="(max-width: 1366px)" data-srcset="<?php echo $prod['image']; ?>">
            <source type="image/png" media="(max-width: 1366px)" data-srcset="<?php echo $prod['image']; ?>">
            <source type="image/webp" data-srcset="<?php echo $prod['image']; ?>">
			<img class="lazyload" data-src="<?php echo $prod['image']; ?>" alt="<?php echo $prod['name']; ?>">
          </picture>
        </div>
		<?php } ?>
		<?php } ?>
      </div>
      <div class="recommend-slider__content col-6 wow fadeInUp">
        <div class="recommend-slider__text-list">
          
      <?php $link = '/'; ?>
			<?php foreach($product as $prod){ ?>
			<?php if(is_array($prod)){?>
				<div class="recommend-slider__text-slide recommend-slider-text-slide" data-nav-label="<?php echo $prod['name']; ?>">
				  <div class="recommend-slider-text-slide__title"><?php echo $prod['meta_title']; ?></div>
				  <div class="recommend-slider-text-slide__text"><?php echo $prod['description']; ?></div>
				</div>
			
            
          	<?php foreach($prod['attribute_groups'] as $attribute_groups){ ?>
            <?php foreach($attribute_groups['attribute'] as $attribute){ ?>
            <?php if(trim($attribute['text']) != '') $link = trim($attribute['text']); ?>
            <?php } ?>
            <?php } ?>
     
      
      
      <?php } ?>
			<?php } ?>
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
          </div>
          
          <a class="recommend-slider__download-btn bbtn" href="<?php echo $link; ?>" target="_blank">Скачать прайс</a>
        </div>
      </div>
    </div>
  </div>
</section>