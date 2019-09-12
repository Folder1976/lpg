<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<?php /* ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php */ ?>

<script src="catalog/view/theme/default/js/lib/modernizr-custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/animate-custom.css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/main.min.css"><!--[if lt IE 9]>
<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->

<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <div class="site">
    <header class="site__header header is-fixed">
      <div class="container">
        <div class="header__inner">
          <div class="header__logo logo"><a class="logo__link" href="/">
              <picture>
                <source srcset="/image/catalog/logo-366.png" media="(max-width: 366px)"><img class="logo__img" src="<?php echo $logo; ?>" alt="Интергазсервис">
              </picture></a></div>
          <div class="header__right">
            <nav class="header__menu header-menu">
              <ul class="menu header-menu__menu" id="menu">
                <li class="menu__item"><a class="menu__link" href="#calc">Калькулятор</a></li>
                <li class="menu__item"><a class="menu__link" href="#registration">Регистрация</a></li>
                <li class="menu__item"><a class="menu__link" href="#reviews">Отзывы</a></li>
                <li class="menu__item"><a class="menu__link" href="#recommend">ГИС Alpha</a></li>
                <li class="menu__item"><a class="menu__link" href="#contact">Контакты</a></li>
              </ul>
              <div class="header-menu__mob"><a class="header-menu__call-back mf-popup" href="#get-call-back" data-effect="mfp-zoom-in">Заказать звонок</a>
                <div class="header-menu__block header-menu-block">
                  <div class="header-menu-block__title">Контактные данные</div>
                  <div class="header-menu-block__text"><a href="tel:84959953121">8-495-995-31-21</a></div>
                  <div class="header-menu-block__text"><a href="mailto:autogas2007@yandex.ru">autogas2007@yandex.ru</a></div>
                </div>
              </div>
            </nav>
            <div class="header__phone header-phone"><a class="header-phone__tel" href="tel:84954070801">8 (495) 407-08-01</a><a class="header-phone__call-back mf-popup" href="#get-call-back" data-effect="mfp-zoom-in">Заказать звонок</a></div>
            <div class="header__mob-menu-btn js-mob-menu-btn">
              <div class="mob-menu__btn"><span></span><span></span><span></span></div>
            </div>
          </div>
        </div>
      </div>
    </header>


    <div class="site__content">
      <div style="position: absolute; top: -100px;">
        <svg width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg">
        <linearGradient id="svg-gradient-vertical" x2="0" y2="1">
        <stop offset="0%" stop-color="#00A7A0" />
        <stop offset="100%" stop-color="#0961B3" />
        </linearGradient>
        </svg>
        <svg id="select-arrow" width="17" height="10" viewBox="0 0 17 10" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M16.5171 2.02721L16.5171 2.02719L16.5153 2.02901L8.92964 9.59379L8.92962 9.59377L8.9277 9.59576C8.66053 9.87218 8.21405 9.87236 7.94596 9.59563L7.94597 9.59562L7.94415 9.5938L0.359262 2.02901L0.359282 2.02899L0.357296 2.02709C0.0813923 1.76183 0.0785332 1.31509 0.359262 1.0351L0.359386 1.03498C0.625668 0.768784 1.07641 0.765755 1.35786 1.03602L7.4784 7.15175L7.47805 7.1521L7.48734 7.15998C7.54313 7.20735 7.59291 7.26009 7.64887 7.31941L7.64932 7.31988C7.70327 7.37707 7.76367 7.44109 7.83298 7.49853C7.97942 7.61989 8.16255 7.70947 8.43721 7.70947C8.71194 7.70947 8.89466 7.61984 9.04097 7.49849C9.10936 7.44177 9.16921 7.37857 9.22276 7.32201L9.22503 7.31961C9.28106 7.26045 9.33114 7.20775 9.38739 7.16046L9.38775 7.16088L9.3968 7.15185L15.5298 1.0351L15.5299 1.03498C15.7975 0.76751 16.2468 0.767332 16.5153 1.0351C16.7959 1.31502 16.7933 1.7611 16.5171 2.02721Z" fill="black" stroke="black" stroke-width="0.3"/>
        </svg>
      </div>


      <div class="mf-popup-block mfp-hide mfp-with-anim" id="get-call-back">
        <div class="mf-title">Остались вопросы? </div>
        <div class="mf-text">Не знаете как самостоятельно разобраться?<br>Оставьте заявку и наш специалист позвонит Вам для консультации</div>
        <form class="form js-universalform mf-form">
          <input type="hidden" name="subj" value="consultation-popup">
          <div class="form__group form__group--inline">
            <input class="form__control form__control--white" type="text" name="name" value="" placeholder="Ваше имя">
            <input class="form__control form__control--white" type="text" name="phone" value="" placeholder="Ваш номер телефона" required>
          </div>
          <div class="form__group">
            <input class="form__control form__control--white form__control--w100" type="text" name="question" value="" placeholder="Ваш вопрос">
          </div>
          <div class="form__group">
            <button class="bbtn bbtn--white mf-form__submit" type="submit">Заказать консультацию</button>
          </div>
        </form>
      </div>





















<?php /* ?>
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>


<?php */ ?>