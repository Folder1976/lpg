<style>
	.webp .s-stages {
		/*background-image: url(<?php echo $product['image']; ?>);*/
	}
</style>
<section class="section s-stages1" id="stages">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title wow fadeInUp"><?php echo $product['category_name']; ?></h2>
        <p class="wow fadeInUp">
          <?php echo $product['description']; ?>
        <div class="s-stages__docs1 wow fadeInUp">
          <!--div class="s-stages__title"><?php echo $product['meta_title']; ?></div-->
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
          <div class="s-stages__btn-wrap wow fadeInUp"><a class="bbtn" href="/photogallery">Больше фото</a></div>
        </div>
      </div>
    </div>
  </div>
</section>
