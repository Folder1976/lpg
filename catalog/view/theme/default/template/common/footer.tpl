      </div>  <!-- ./site__content -->
      <div class="back-to-top">
        <div class="back-to-top__inner">
          <svg class="icon icon-chevron-up back-to-top__icon">
            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#chevron-up"></use>
          </svg>
        </div>
      </div>
      <footer class="site__footer s-footer">
        <div class="container">
          <div class="s-footer__left">ИНТЕРГАЗСЕРВИС, 2019</div>
          <div class="s-footer__right">Розроблено студией</div>
        </div>

        <div class="modal-msg">
          <div class="modal-msg__close">
            <svg class="modal-msg__close-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#close"></use>
            </svg>
          </div>
          <div class="modal-msg__text"></div>
        </div>
      </footer>
    </div>
    <script src="catalog/view/theme/default/js/lib/jquery.min.js"></script>
    <script src="catalog/view/theme/default/js/lib/lazysizes.min.js" async=""></script>
    <script src="catalog/view/theme/default/js/lib/wow.min.js"></script>
    <script src="catalog/view/theme/default/js/libs.js"></script>
    <script src="catalog/view/theme/default/js/main.js"></script>
  <style>
    .site__footer{
      z-index: 2000;
    }
  </style>

    <script>
      var showModalMsg = function(msg, autoClose = true){
        $('.modal-msg__text').html(msg);
        $('.modal-msg').show(300);

        if ( autoClose ) {
          setTimeout(function(){
            $('.modal-msg').hide(300);
          }, 3000);
        }
      }

      $('.js-universalform').on('submit', function(e) {
        e.preventDefault();
        var form = $(this);

        form.find('button[type="submit"]').hide(300);
        
        $.ajax({
          url: '/index.php?route=account/universalform',
          type: 'post',
          data: form.serialize(),
          dataType: 'json',
          beforeSend: function() {
            showModalMsg('<div class="alert-success">Подождите, отправляю...</div>');
            },
          complete: function() {},
          success: function(json) {
          
            if(json['success']){
              $.magnificPopup.close();
              form.trigger("reset");
              showModalMsg('<div class="alert-success">' + json['success'] + '</div>');
            }
          
            if(json['error']){
               showModalMsg('<div class="alert-error">' + json['error'] + '</div>');
            }
          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
      });
    </script>
  </body>
</html>
















<?php /* ?>

<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>

<?php */ ?>