<style>
	.webp .s-info {
		background-image: url(<?php echo $product['image']; ?>);
	}
</style>
<section class="section s-info" id="info">
  <div class="container">
    <div class="container">
      <div class="row">
        <div class="col-6"></div>
        <div class="col-6">
          <h2 class="section-title wow fadeInUp"><span><?php echo $product['category_name']; ?></span><?php echo $product['name']; ?></h2>
          <div class="s-info__text wow fadeInUp">
            <?php echo $product['description']; ?>
          </div>
          
		  <?php foreach($product['attribute_groups'] as $attribute_groups){ ?>
		  <?php foreach($attribute_groups['attribute'] as $attribute){ ?>
			<?php if($attribute['text'] != ''){ ?>		  
		  <div class="s-info__btn wow fadeInUp"><a class="bbtn bbtn--icon" href="<?php echo $attribute['text']; ?>">Смотреть видео
		      <svg class="icon icon-video bbtn__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#video"></use>
              </svg></a></div>
		  <?php } ?>
		  <?php } ?>
		  <?php } ?>

        </div>
      </div>
    </div>
  </div>
</section>

