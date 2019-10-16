<style>
	.webp .s-top {
		background-image: url(../img/bg/bg-figure.svg),url(<?php echo $product['image']; ?>);
	}
</style>

<section class="section s-top" id="top">
  <div class="container">
    <div class="row">
      <div class="col-12 s-top__content">
        <div class="s-top__title">
          <h1 class="site-title wow fadeInUp"><?php echo $product['category_name']; ?></h1>
          <h2 class="site-subtitle wow fadeInUp"><?php echo $product['name']; ?></h2>
        </div>
        <div class="s-top__info s-top-info wow fadeInUp">
          <?php echo $product['description']; ?>
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
          <?php if (false) { ?>
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
          <?php } ?>
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