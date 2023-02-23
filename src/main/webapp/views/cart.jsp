<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="ie8">
<html dir="ltr" lang="en" class="ie9">
<html dir="ltr" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shopping Cart</title>
    <base  />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/cart.png" rel="icon" />
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

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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



    <!-- Megnor www.templatemela.com - End -->


</head>


<body class="checkout-cart layout-2 left-col">
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
                <input type="hidden" name="redirect" value="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart" />
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
                <input type="hidden" name="redirect" value="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart" />
            </form>
        </div>
        <div id="top-links" class="nav pull-right">
            <ul class="list-inline">
                <li class="dropdown myaccount"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account" title="My Account" class="dropdown-toggle" data-toggle="dropdown"><span class="hidden-xs hidden-sm hidden-md">My Account</span><i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register">Register</a></li>
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
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/logo.png" title="Your Store" alt="Your Store" class="img-responsive" /></a>
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
<div class="container">
    <ul class="breadcrumb">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="index630e.html?route=checkout/cart">Shopping Cart</a></li>
    </ul>
    <div class="row"><column id="column-left" class="col-sm-3 hidden-xs">
        <div class="box">
            <div class="box-heading">Account</div>
            <div class="list-group">
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/login" class="list-group-item">Login</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register" class="list-group-item">Register</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/forgotten" class="list-group-item">Forgotten Password</a>
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account" class="list-group-item">My Account</a>
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/address" class="list-group-item">Address Books</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist" class="list-group-item">Wish List</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order" class="list-group-item">Order History</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/download" class="list-group-item">Downloads</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/reward" class="list-group-item">Reward Points</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return" class="list-group-item">Returns</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/transaction" class="list-group-item">Transactions</a> <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter" class="list-group-item">Newsletter</a><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/recurring" class="list-group-item">Recurring payments</a>
            </div>
        </div>
        <div class="box">
            <div class="box-heading">Latest</div>
            <div class="box-content">


                <div class="box-product productbox-grid" id="latest-grid">
                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=48"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/07-65x65.jpg" alt="Cinnamon Coffee" title="Cinnamon Coffee" class="img-responsive" /></a>


                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=48">Cinnamon Coffee</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('48');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('48');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('48');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        $122.00			  			  			  <span class="price-tax">Ex Tax: $100.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('48');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/03-65x65.jpg" alt="Chocolate &amp; mocha" title="Chocolate &amp; mocha" class="img-responsive" /></a>


                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47">Chocolate &amp; mocha</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('47');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('47');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('47');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        $122.00			  			  			  <span class="price-tax">Ex Tax: $100.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('47');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=46"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/15-65x65.jpg" alt="Vulputate variety Pack" title="Vulputate variety Pack" class="img-responsive" /></a>


                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=46">Vulputate variety Pack</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('46');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('46');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('46');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        $1,202.00			  			  			  <span class="price-tax">Ex Tax: $1,000.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('46');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <span class="latest_default_width" style="display:none; visibility:hidden"></span>
        <div class="box">
            <div class="box-heading">Bestsellers</div>
            <div class="box-content">


                <div class="box-product productbox-grid" id="bestseller-grid">
                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/06-65x65.jpg" alt="Chocomate Raspberry" title="Chocomate Raspberry" class="img-responsive" /></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40">Chocomate Raspberry</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('40');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('40');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('40');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        <span class="price-old">$123.20</span><span class="price-new">$122.00</span>
                                        <span class="price-tax">Ex Tax: $100.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('40');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/10-65x65.jpg" alt="Coffee Bean Direct" title="Coffee Bean Direct" class="img-responsive" /></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43">Coffee Bean Direct</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('43');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('43');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('43');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        <span class="price-old">$602.00</span><span class="price-new">$600.80</span>
                                        <span class="price-tax">Ex Tax: $499.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('43');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="product-items">
                        <div class="product-block product-thumb transition">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/02-65x65.jpg" alt="Breckfast Blend" title="Breckfast Blend" class="img-responsive" /></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30">Breckfast Blend</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('30');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="Add to Wish List" onclick="wishlist.add('30');"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="Add to Compare" onclick="compare.add('30');"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        <span class="price-old">$122.00</span><span class="price-new">$98.00</span>
                                        <span class="price-tax">Ex Tax: $80.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('30');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <span class="bestseller_default_width" style="display:none; visibility:hidden"></span>
    </column>
        <div id="content" class="col-sm-9">      <h1>Shopping Cart</h1>
            <p>Your shopping cart is empty!</p>
            <div class="buttons">
                <div class="pull-right"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home" class="btn btn-primary">Continue</a></div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div>

        <div class="footer_topcontainer">
            <div class="footer_container_inner">
                <div class="footer_left">
                    <div class="footer_content">OpenCart
                        <div class="small-text">Responsive Theme</div>
                    </div>
                </div>
                <div class="footer_outer">
                    <div class="footer_center">
                        <div class="rightcontent">Vestibulum ante ipsum primis urna risus suscipit leo Cras eget augue vitae neque euismod congue quis non erat.</div>
                        <div class="footer_right">
                            <a class="rightbutton" href="#"> Purchase Theme </a>
                        </div>
                    </div>
                </div>



            </div>



        </div></div>

    <div id="footer" class="container">
        <div>

            <div class="footer_logo">		<div class="footerlogo">		<a href="#"><img alt="" src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/logo.png"></a>		</div></div></div>
        <div class="row" id="footer_wrapper">
            <div class="footer_top">

                <div class="col-sm-3 column first">
                    <h5>Information</h5>
                    <ul class="list-unstyled">
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=4">About Us</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=6">Delivery Information</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=3">Privacy Policy</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=5">Terms &amp; Conditions</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order">Order History</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter">Newsletter</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 column">
                    <h5>My Account</h5>
                    <ul class="list-unstyled">
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/contact">Contact Us</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/sitemap">Site Map</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account">My Account</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist">Wish List</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 column">
                    <h5>Extras</h5>
                    <ul class="list-unstyled">
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/manufacturer">Brands</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/voucher">Gift Vouchers</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/special">Specials</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter">Newsletter</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a></li>
                    </ul>
                </div>
                <div>

                    <div class="col-sm-3 column last">
                        <h5>Contact Us</h5>
                        <ul>
                            <li class="address">Megnor Com pvt Ltd, 507-Union Trade Center, Udhana Darwaja,Ring Road, Surat, India.</li>
                            <li class="phoneno">(91)-261 3023333</li>
                            <li class="email"><a href="#">support@templatemela.com</a></li>
                        </ul>
                    </div></div>
            </div>

            <div class="footer_bottom">
                <div class="footer_bottom_left">
                    <div id="links">
                        <ul>
                            <li class="first"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a></li>
                            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/voucher">Gift Vouchers</a></li>
                            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/manufacturer">Brands</a></li>
                            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a></li>
                            <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/sitemap">Site Map</a></li>
                            <li class="last"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/contact">Contact Us</a></li>
                        </ul>
                    </div>
                    <p>Powered By <a href="http://www.opencart.com/">OpenCart</a> Your Store &copy; 2023</p>
                </div>

                <div>

                    <div class="footer_bottom_right"><div class="footer_social"><ul class="social_block"><li class="facebook"><a href="#"></a></li><li class="twitter"><a href="#"></a></li><li class="rss"><a href="#"></a></li><li class="linkin"><a href="#"></a></li></ul></div></div></div>

            </div>
        </div>
    </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body>
<!-- Mirrored from opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2023 04:26:05 GMT -->
</html>