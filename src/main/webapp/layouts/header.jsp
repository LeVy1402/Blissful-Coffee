<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="ie8">
<html dir="ltr" lang="en" class="ie9">
<html dir="ltr" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Blissful Coffee</title>
  <base  />
  <meta name="description" content="My Store" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link href="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/cart.png" rel="icon" />
  <link href="https://opencart.templatemela.com/OPC08/OPC080182/" rel="canonical" />
  <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="http://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Coustard:400,900" rel="stylesheet" type="text/css"/>
  <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,300' rel='stylesheet' type='text/css'>
  <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/stylesheet.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/carousel.css" />
  <link rel="stylesheet" type="text/css" href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/custom.css" />
  <link rel="stylesheet" type="text/css" href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/bootstrap.min.css" />


  <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
  <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.transitions.css" type="text/css" rel="stylesheet" media="screen" />
  <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/common.js" type="text/javascript"></script>

  <!-- Megnor www.templatemela.com - Start -->
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/carousel.min.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/megnor.min.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/custom.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.custom.min.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/scrolltop.min.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.formalize.min.js"></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/tabs.js" ></script>
  <script type="text/javascript" src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jstree.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Megnor www.templatemela.com - End -->


  <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
</head>


<body class="common-home layout-1">
<nav id="top">
  <div class="container">
    <div class="pull-right">
      <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/currency/currency" method="post" enctype="multipart/form-data" id="currency">
        <div class="btn-group">
          <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
            <strong>$</strong>
            <span class="hidden-xs hidden-sm hidden-md">Currency</span> <i class="fa fa-angle-down"></i></button>
          <ul class="dropdown-menu currency-menu">
            <li><button class="currency-select btn btn-link btn-block" type="button" name="EUR">€ Euro</button></li>
            <li><button class="currency-select btn btn-link btn-block" type="button" name="GBP">£ Pound Sterling</button></li>
            <li><button class="currency-select btn btn-link btn-block" type="button" name="USD">$ US Dollar</button></li>
          </ul>
        </div>
        <input type="hidden" name="code" value="" />
        <input type="hidden" name="redirect" value="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home" />
      </form>
    </div>
    <div class="pull-right">
      <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/language/language" method="post" enctype="multipart/form-data" id="language">
        <div class="btn-group">
          <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
            <img src="https://opencart.templatemela.com/OPC08/OPC080182/image/flags/gb.png" alt="English" title="English">
            <span class="hidden-xs hidden-sm hidden-md">Language</span><i class="fa fa-angle-down"></i></button>
          <ul class="dropdown-menu language-menu">
            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/en"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/flags/gb.png" alt="English" title="English" /> English</a></li>
            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/ar"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/flags/lb.png" alt="Arabic" title="Arabic" /> Arabic</a></li>
          </ul>
        </div>
        <input type="hidden" name="code" value="" />
        <input type="hidden" name="redirect" value="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home" />
      </form>
    </div>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li class="dropdown myaccount"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account" title="My Account" class="dropdown-toggle" data-toggle="dropdown"><span class="hidden-xs hidden-sm hidden-md">My Account</span><i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
            <li><a href="../views/auth/register.jsp">Register</a></li>
            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/login">Login</a></li>
          </ul>
        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist" id="wishlist-total" title="Wish List (0)"><span class="hidden-xs hidden-sm hidden-md">Wish List (0)</span></a></li>

        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/checkout" title="Checkout"><span class="hidden-xs hidden-sm hidden-md">Checkout</span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container header">
    <div class="row">
      <div class="col-sm-4 logo">
        <div id="logo">
          <a href="index9328.html?route=common/home"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/logo.png" title="Your Store" alt="Your Store" class="img-responsive" /></a>
        </div>
      </div>
      <div class="col-sm-3 btn-cart"><div id="cart" class="btn-group btn-block">
        <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="btn btn-inverse btn-block btn-lg dropdown-toggle"><span class="carticon"> </span><span id="cart-total">0 item(s) - $0.00<i class="fa fa-angle-down"></i></span></button>
        <ul class="dropdown-menu pull-right cart-menu">
          <li>
            <p class="text-center">Your shopping cart is empty!</p>
          </li>
        </ul>
      </div>
      </div>
      <div class="col-sm-5 btn-search"><div id="search" class="input-group">
        <input type="text" name="search" value="" placeholder="Search" class="form-control input-lg" />
        <span class="input-group-btn">
    <button type="button" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>
  </span>
      </div>      </div>
    </div>
  </div>
</header>


<!-- ======= Menu Code START ========= -->

<nav class="nav-container" role="navigation">
  <div class="nav-inner">
    <div class="container">
      <div id="menu" class="main-menu">

        <div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>

        <ul class="main-navigation">

          <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20">Espresso</a>

            <div class="categorybg">
              <div class="categoryinner">

                <ul>

                  <li class="categorycolumn"><b><a class="submenu1" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26">Espresso Yen</a></b>


                    <div class="cate_inner_bg">
                      <ul>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_60">Espressino</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_61">Coolatta</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_62">Cold brew</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_63">Monde</a></li>
                      </ul>
                    </div>


                  </li>


                  <li class="categorycolumn"><b><a class="submenu1" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27">Americano</a></b>


                    <div class="cate_inner_bg">
                      <ul>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_64">Frappe</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_65">Lundo</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_66">Galao</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_67">Lavazza</a></li>
                      </ul>
                    </div>


                  </li>


                  <li class="categorycolumn"><b><a class="submenu1" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59">Affogato</a></b>


                    <div class="cate_inner_bg">
                      <ul>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_68">Bicerin</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_69">Breve</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_71">Cortado</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_72">Chikory</a></li>
                      </ul>
                    </div>


                  </li>


                </ul>




              </div>
            </div>

          <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18">Cappuccino</a>

            <div class="categorybg">
              <div class="categoryinner">

                <ul>

                  <li class="categorycolumn"><b><a class="submenu1" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46">Coolatta</a></b>


                    <div class="cate_inner_bg">
                      <ul>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_73">Bicerin</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_74">Cortado</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_75">Carajillo</a></li>
                      </ul>
                    </div>


                  </li>


                  <li class="categorycolumn"><b><a class="submenu1" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45">Blueberry</a></b>


                    <div class="cate_inner_bg">
                      <ul>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_76">Amaretto</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_77">Chinnamon</a></li>
                        <li><a class="submenu2" href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_78">Vanilla</a></li>
                      </ul>
                    </div>


                  </li>


                </ul>




              </div>
            </div>

          <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=25">Frappe</a>
          <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=57">Cuban Coffee</a>
          <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=17">Iced Coffee</a>
          </li>
        </ul>

      </div>
    </div>
  </div>
</nav>
<div id="res-menu" class="main-menu nav-container1">
  <div class="res-menu-inner">
    <div class="container">
      <div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
      <ul class="main-navigation">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20">Espresso</a>

          <ul>

            <li>
              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26" class="activSub" >Espresso Yen</a>

              <ul>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_60"  >Espressino</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_61"  >Coolatta</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_62"  >Cold brew</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_26_63"  >Monde</a></li>
              </ul>

            </li>

            <li>
              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27" class="activSub" >Americano</a>

              <ul>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_64"  >Frappe</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_65"  >Lundo</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_66"  >Galao</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_27_67"  >Lavazza</a></li>
              </ul>

            </li>

            <li>
              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59" class="activSub" >Affogato</a>

              <ul>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_68"  >Bicerin</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_69"  >Breve</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_71"  >Cortado</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=20_59_72"  >Chikory</a></li>
              </ul>

            </li>
          </ul>

        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18">Cappuccino</a>

          <ul>

            <li>
              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46" class="activSub" >Coolatta</a>

              <ul>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_73"  >Bicerin</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_74"  >Cortado</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_46_75"  >Carajillo</a></li>
              </ul>

            </li>

            <li>
              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45" class="activSub" >Blueberry</a>

              <ul>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_76"  >Amaretto</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_77"  >Chinnamon</a></li>
                <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=18_45_78"  >Vanilla</a></li>
              </ul>

            </li>
          </ul>

        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=25">Frappe</a>
        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=57">Cuban Coffee</a>
        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/category&amp;path=17">Iced Coffee</a>
        </li>
      </ul>
    </div>
  </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body>
<!-- Mirrored from opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2023 04:43:56 GMT -->
</html>