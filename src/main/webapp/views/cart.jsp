<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="ie8">
<html dir="ltr" lang="en" class="ie9">
<html dir="ltr" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>
    <title>Cart</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/logo.png">
    <link rel="stylesheet" href="/css/cart.css">
    <!-- Megnor www.templatemela.com - End -->


</head>


<body class="checkout-cart layout-2 left-col">

<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="container">
    <ul class="breadcrumb">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="index630e.html?route=checkout/cart">Shopping Cart</a></li>
    </ul>
    <div class="row">
        <column id="column-left" class="col-sm-3 hidden-xs">
            <div class="box">
                <div class="box-heading">Account</div>
                <div class="list-group">
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/login"
                       class="list-group-item">Login</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register"
                        class="list-group-item">Register</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/forgotten"
                        class="list-group-item">Forgotten Password</a>
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account"
                       class="list-group-item">My Account</a>
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/address"
                       class="list-group-item">Address Books</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist"
                        class="list-group-item">Wish List</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order"
                        class="list-group-item">Order History</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/download"
                        class="list-group-item">Downloads</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/reward"
                        class="list-group-item">Reward Points</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return"
                        class="list-group-item">Returns</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/transaction"
                        class="list-group-item">Transactions</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter"
                        class="list-group-item">Newsletter</a><a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/recurring"
                        class="list-group-item">Recurring payments</a>
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
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=48"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/07-65x65.jpg"
                                                alt="Cinnamon Coffee" title="Cinnamon Coffee"
                                                class="img-responsive"/></a>


                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=48">Cinnamon
                                                Coffee</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('48');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('48');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('48');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            $122.00 <span class="price-tax">Ex Tax: $100.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('48');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-items">
                            <div class="product-block product-thumb transition">
                                <div class="product-block-inner ">

                                    <div class="image">
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/03-65x65.jpg"
                                                alt="Chocolate &amp; mocha" title="Chocolate &amp; mocha"
                                                class="img-responsive"/></a>


                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47">Chocolate
                                                &amp; mocha</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('47');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('47');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('47');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            $122.00 <span class="price-tax">Ex Tax: $100.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('47');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-items">
                            <div class="product-block product-thumb transition">
                                <div class="product-block-inner ">

                                    <div class="image">
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=46"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/15-65x65.jpg"
                                                alt="Vulputate variety Pack" title="Vulputate variety Pack"
                                                class="img-responsive"/></a>


                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=46">Vulputate
                                                variety Pack</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('46');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('46');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('46');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            $1,202.00 <span class="price-tax">Ex Tax: $1,000.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('46');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
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
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/06-65x65.jpg"
                                                alt="Chocomate Raspberry" title="Chocomate Raspberry"
                                                class="img-responsive"/></a>
                                        <span class="saleicon sale">Sale</span>

                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40">Chocomate
                                                Raspberry</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('40');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('40');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('40');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            <span class="price-old">$123.20</span><span class="price-new">$122.00</span>
                                            <span class="price-tax">Ex Tax: $100.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('40');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="product-items">
                            <div class="product-block product-thumb transition">
                                <div class="product-block-inner ">

                                    <div class="image">
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/10-65x65.jpg"
                                                alt="Coffee Bean Direct" title="Coffee Bean Direct"
                                                class="img-responsive"/></a>
                                        <span class="saleicon sale">Sale</span>

                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43">Coffee
                                                Bean Direct</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('43');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('43');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('43');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            <span class="price-old">$602.00</span><span class="price-new">$600.80</span>
                                            <span class="price-tax">Ex Tax: $499.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('43');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="product-items">
                            <div class="product-block product-thumb transition">
                                <div class="product-block-inner ">

                                    <div class="image">
                                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30"><img
                                                src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/02-65x65.jpg"
                                                alt="Breckfast Blend" title="Breckfast Blend"
                                                class="img-responsive"/></a>
                                        <span class="saleicon sale">Sale</span>

                                    </div>

                                    <div class="caption">
                                        <h4>
                                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30">Breckfast
                                                Blend</a></h4>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('30');"><span
                                                        class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                </button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List" onclick="wishlist.add('30');"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip"
                                                        title="Add to Compare" onclick="compare.add('30');"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                            class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="price">
                                            <span class="price-old">$122.00</span><span class="price-new">$98.00</span>
                                            <span class="price-tax">Ex Tax: $80.00</span>
                                        </p>
                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('30');"><span
                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
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
        <%--        <div id="content" class="col-sm-9">      <h1>Shopping Cart</h1>--%>
        <%--            <p>Your shopping cart is empty!</p>--%>
        <%--            <div class="buttons">--%>
        <%--                <div class="pull-right"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home" class="btn btn-primary">Continue</a></div>--%>
        <%--            </div>--%>
        <%--        </div>--%>

        <div id="content" class="col-sm-9">
            <h2>Shopping Cart</h2>
            <c:choose>
                <c:when test="${orderDetailList.size()>0}">
                    `<form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart/edit"
                    method="post" enctype="multipart/form-data">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <td class="text-center">Image</td>
                                <td class="text-left">Product Name</td>
                                <td class="text-left">Model</td>
                                <td class="text-left">Quantity</td>
                                <td class="text-right">Unit Price</td>
                                <td class="text-right">Total</td>
                            </tr>
                            </thead>
                            <tbody>`
                            <c:forEach items="${orderDetailList}" var="orderDetail">
                                <tr>
                                    <td class="text-center">
                                        <a href="">
                                            <img src="/img/${orderDetail.getProduct().getImage()}"
                                                 alt="${orderDetail.getProduct().getImage()}"
                                                 title="${orderDetail.getProduct().getProductName()}"
                                                 class="img-thumbnail"/>
                                        </a>
                                    </td>
                                    <td class="text-left"><a
                                            href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43">${orderDetail.getProduct().getProductName()}</a>
                                        <br/>
                                            <%--                                <small>Reward Points: 600</small>--%>
                                    </td>
                                    <td class="text-left">${orderDetail.getProduct().getProductId()}</td>
                                    <td class="text-left">
                                        <div class="input-group btn-block" style="max-width: 200px;">
                                            <input type="text" name="quantity"
                                                   id="quantity${orderDetail.getProduct().getProductId()}"
                                                   value="${orderDetail.getQuantity()}" size="1"
                                                   class="form-control"/>
                                            <span class="input-group-btn">
                                                    <button type="button" data-toggle="tooltip" title="Update"
                                                            class="btn btn-primary update"
                                                            onclick="cart.update(${orderDetail.getProduct().getProductId()}, $('input[id=quantity${orderDetail.getProduct().getProductId()}]').val());">
                                                        <i class="fa fa-refresh"></i>
                                                    </button>
                                                    <button type="button" data-toggle="tooltip" title="Remove"
                                                            class="btn btn-danger"
                                                            onclick="cart.remove(${orderDetail.getProduct().getProductId()});">
                                                        <i class="fa fa-times-circle"></i>
                                                    </button>
                                                </span>
                                        </div>
                                    </td>
                                    <td class="text-right">${orderDetail.getProduct().getPrice()}00 VNĐ</td>
                                    <td class="text-right">${orderDetail.getProduct().getPrice() * orderDetail.getQuantity()}00
                                        VNĐ
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    </form>
                </c:when>

                <c:otherwise>
                    <p>Your shopping cart is empty!</p>
                    <div class="buttons">
                        <div class="pull-right"><a href="dashboards" class="btn btn-primary">Continue</a>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>

            <div class="row">

                <div class="col-sm-8 shipping">
                    <h3>What would you like to do next?</h3>
                    <p>Choose if you have a discount code or reward points you want to use or would like to estimate
                        your delivery cost.</p>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#collapse-coupon" class="accordion-toggle"
                                                           data-toggle="collapse" data-parent="#accordion">Use Coupon
                                    Code <i class="fa fa-caret-down"></i></a></h4>
                            </div>
                            <div id="collapse-coupon" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <label class="col-sm-2 control-label" for="input-coupon">Enter your coupon
                                        here</label>
                                    <div class="input-group">
                                        <input type="text" name="coupon" value="" placeholder="Enter your coupon here"
                                               id="input-coupon" class="form-control"/>
                                        <span class="input-group-btn">
        <input type="button" value="Apply Coupon" id="button-coupon" data-loading-text="Loading..."
               class="btn btn-primary"/>
        </span></div>
                                    <script type="text/javascript"><!--
                                    $('#button-coupon').on('click', function () {
                                        $.ajax({
                                            url: 'index.php?route=checkout/coupon/coupon',
                                            type: 'post',
                                            data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
                                            dataType: 'json',
                                            beforeSend: function () {
                                                $('#button-coupon').button('loading');
                                            },
                                            complete: function () {
                                                $('#button-coupon').button('reset');
                                            },
                                            success: function (json) {
                                                $('.alert').remove();

                                                if (json['error']) {
                                                    $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                                    $('html, body').animate({scrollTop: 0}, 'slow');
                                                }

                                                if (json['redirect']) {
                                                    location = json['redirect'];
                                                }
                                            }
                                        });
                                    });
                                    //--></script>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#collapse-voucher" data-toggle="collapse"
                                                           data-parent="#accordion" class="accordion-toggle">Use Gift
                                    Voucher <i class="fa fa-caret-down"></i></a></h4>
                            </div>
                            <div id="collapse-voucher" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <label class="col-sm-2 control-label" for="input-voucher">Enter your gift voucher
                                        code here</label>
                                    <div class="input-group">
                                        <input type="text" name="voucher" value=""
                                               placeholder="Enter your gift voucher code here" id="input-voucher"
                                               class="form-control"/>
                                        <span class="input-group-btn">
        <input type="submit" value="Apply Voucher" id="button-voucher" data-loading-text="Loading..."
               class="btn btn-primary"/>
        </span></div>
                                    <script type="text/javascript"><!--
                                    $('#button-voucher').on('click', function () {
                                        $.ajax({
                                            url: 'index.php?route=checkout/voucher/voucher',
                                            type: 'post',
                                            data: 'voucher=' + encodeURIComponent($('input[name=\'voucher\']').val()),
                                            dataType: 'json',
                                            beforeSend: function () {
                                                $('#button-voucher').button('loading');
                                            },
                                            complete: function () {
                                                $('#button-voucher').button('reset');
                                            },
                                            success: function (json) {
                                                $('.alert').remove();

                                                if (json['error']) {
                                                    $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                                    $('html, body').animate({scrollTop: 0}, 'slow');
                                                }

                                                if (json['redirect']) {
                                                    location = json['redirect'];
                                                }
                                            }
                                        });
                                    });
                                    //--></script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 total_amount">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered">
                                <tr>
                                    <td class="text-right"><strong>Sub-Total:</strong></td>
                                    <td class="text-right">$499.00</td>
                                </tr>
                                <tr>
                                    <td class="text-right"><strong>Eco Tax (-2.00):</strong></td>
                                    <td class="text-right">$2.00</td>
                                </tr>
                                <tr>
                                    <td class="text-right"><strong>VAT (20%):</strong></td>
                                    <td class="text-right">$99.80</td>
                                </tr>
                                <tr>
                                    <td class="text-right"><strong>Total:</strong></td>
                                    <td class="text-right">$600.80</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <div class="buttons">
                <div class="pull-left"><a href="dashboards" class="btn btn-default">Continue Shopping</a></div>
                <div class="pull-right"><a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/checkout"
                        class="btn btn-primary">Checkout</a></div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../layouts/footer.jsp"></jsp:include>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body>
<!-- Mirrored from opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2023 04:26:05 GMT -->
</html>