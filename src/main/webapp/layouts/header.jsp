<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="ie8">
<html dir="ltr" lang="en" class="ie9">
<html dir="ltr" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blissful Coffee</title>
    <base/>
    <meta name="description" content="My Store"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="../assets/images/theme/catalog/cart.png" rel="icon"/>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/" rel="canonical"/>

    <script src="../js/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="../js/boostrap/bootstrap.min.js" type="text/javascript"></script>

    <link href="../js/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Coustard:400,900" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,300' rel='stylesheet' type='text/css'>

    <%--    khong doi duoc do dinh link image--%>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/stylesheet.css"
          rel="stylesheet">

    <%--    khong doi duoc do dinh link image--%>
    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/carousel.css"/>

    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/custom.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/bootstrap.min.css"/>


    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.carousel.css"
          type="text/css" rel="stylesheet" media="screen"/>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.transitions.css"
          type="text/css" rel="stylesheet" media="screen"/>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/common.js"
            type="text/javascript"></script>

    <!-- Megnor www.templatemela.com - Start -->
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/carousel.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/megnor.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/custom.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.custom.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/scrolltop.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.formalize.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/tabs.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jstree.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Megnor www.templatemela.com - End -->

<style>
    form.form-inline {
        display: flex;
    }
</style>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js"
            type="text/javascript"></script>
</head>


<body class="common-home layout-1">
<nav id="top">
    <div class="container">
        <div id="top-links" class="nav pull-right">
            <ul class="list-inline">
                <li class="dropdown myaccount">
                    <a href="" title="My Account" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="hidden-xs hidden-sm hidden-md">My Account</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
<%--                        <li><a href="/logins">Login</a></li>--%>
                        <c:if test="${UserLogin == null}">
                            <li><a href="/register">Register</a></li>
                            <li><a href="/logins" >Login</a></li>
                        </c:if>
                        <c:if test="${UserLogin != null}">
                            <li><a href="/views/profile/my_account.jsp">My Account</a></li>
                            <li><a href="/logins?action=logout">Sign Out <i class="fa fa-sign-out"></i></a></li>
                        </c:if>

<%--                        Khi đăng nhập header sẽ chuyển thành dưới--%>
<%--                        <li><a href="../views/auth/register.jsp">My Profile</a></li>--%>
<%--                        <li><a href="../views/auth/login.jsp">Logout</a></li>--%>
                    </ul>
                </li>
                <li><a href="../views/wishlist.jsp" id="wishlist-total" title="Wish List (0)"><span
                        class="hidden-xs hidden-sm hidden-md">Wish List (0)</span></a></li>

                <li><a href="../views/checkout.jsp" title="Checkout"><span class="hidden-xs hidden-sm hidden-md">Checkout</span></a>
                </li>
                <li><span class="hidden-xs hidden-sm hidden-md">Hello <strong>${UserLogin.fullName}</strong></span></li>

            </ul>
        </div>
    </div>
</nav>

<header>
    <div class="container header">
        <div class="row">
            <div class="col-sm-4 logo">
                <div id="logo">
                    <a href="/dashboards"><img
                            src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/logo.png"
                            title="Your Store" alt="Your Store" class="img-responsive"/></a>
                </div>
            </div>
            <div class="col-sm-3 btn-cart">
                <div id="cart" class="btn-group btn-block">
                    <button type="button" data-toggle="dropdown" data-loading-text="Loading..."
                            class="btn btn-inverse btn-block btn-lg dropdown-toggle">
                        <span class="carticon"> </span>
                        <span id="cart-total">0 item(s) - $0.00<i class="fa fa-angle-down"></i></span>
                    </button>
                    <ul class="dropdown-menu pull-right cart-menu">
                        <li>
                            <p class="text-center">Your shopping cart is empty!</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-5 btn-search">
                <div id="search" class="input-group">
                    <form action="/dashboards"  class="form-inline d-flex" >
                        <input type="hidden" name="action" value="search">

                        <input type="text" name="searchName"  placeholder="Search" class="form-control input-lg"/>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>
                    </span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- ======= Menu Code START ========= -->

<nav class="nav-container" role="navigation">
    <div class="nav-inner">
        <div class="container">
            <div id="menu" class="main-menu">

                <div class="nav-responsive"><span>Menu</span>
                    <div class="expandable"></div>
                </div>

                <ul class="main-navigation">
                    <li>
                        <a href="">Coffee</a>
                    </li>
                    <li>
                        <a href="">Smoothie</a>
                    </li>
                    <li>
                        <a href="">Juice</a>
                    </li>
                    <li>
                        <a href="">Tea</a>
                    </li>
                    <li>
                        <a href="">SoftDrink</a>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</nav>
</body>
</html>