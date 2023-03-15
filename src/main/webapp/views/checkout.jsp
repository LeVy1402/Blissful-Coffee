<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="container">
    <ul class="breadcrumb">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart">Shopping Cart</a>
        </li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/checkout">Checkout</a>
        </li>
    </ul>
    <div class="row">
        <column id="column-left" class="col-sm-3 hidden-xs">
            <div class="box">
                <div class="box-heading">Account</div>
                <div class="list-group">
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account"
                       class="list-group-item">My Account</a>
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/edit"
                       class="list-group-item">Edit Account</a> <a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/password"
                        class="list-group-item">Password</a>
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
                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/logout"
                       class="list-group-item">Logout</a>
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
                                            $100.00 <span class="price-tax">Ex Tax: $100.00</span>
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
                                            $100.00 <span class="price-tax">Ex Tax: $100.00</span>
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
                                            $1,000.00 <span class="price-tax">Ex Tax: $1,000.00</span>
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
                                            <span class="price-old">$101.00</span><span class="price-new">$100.00</span>
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
                                            <span class="price-old">$500.00</span><span class="price-new">$499.00</span>
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
                                            <span class="price-old">$100.00</span><span class="price-new">$80.00</span>
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
        <div id="content" class="col-sm-9"><h1>Checkout</h1>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 1: Checkout Options</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-checkout-option">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 2: Billing Details</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-payment-address">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 3: Delivery Details</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-shipping-address">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 4: Delivery Method</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-shipping-method">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 5: Payment Method</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-payment-method">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Step 6: Confirm Order</h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-checkout-confirm">
                        <div class="panel-body"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $(document).on('change', 'input[name=\'account\']', function () {
    if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
        if (this.value == 'register') {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');
        } else {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
        }
    } else {
        if (this.value == 'register') {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Account &amp; Billing Details');
        } else {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Billing Details');
        }
    }
    });

    $(document).ready(function () {
    $.ajax({
        url: 'index.php?route=checkout/payment_address',
        dataType: 'html',
        success: function (html) {
            $('#collapse-payment-address .panel-body').html(html);

            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');

            $('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    // Checkout
    $(document).delegate('#button-account', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function () {
            $('#button-account').button('loading');
        },
        complete: function () {
            $('#button-account').button('reset');
        },
        success: function (html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

            if ($('input[name=\'account\']:checked').val() == 'register') {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');
            } else {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
            }

            $('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    // Login
    // $(document).delegate('#button-login', 'click', function () {
    // $.ajax({
    //     url: 'index.php?route=checkout/login/save',
    //     type: 'post',
    //     data: $('#collapse-checkout-option :input'),
    //     dataType: 'json',
    //     beforeSend: function () {
    //         $('#button-login').button('loading');
    //     },
    //     complete: function () {
    //         $('#button-login').button('reset');
    //     },
    //     success: function (json) {
    //         $('.alert, .text-danger').remove();
    //         $('.form-group').removeClass('has-error');
    //
    //         if (json['redirect']) {
    //             location = json['redirect'];
    //         } else if (json['error']) {
    //             $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
    //
    //             // Highlight any found errors
    //             $('input[name=\'email\']').parent().addClass('has-error');
    //             $('input[name=\'password\']').parent().addClass('has-error');
    //         }
    //     },
    //     error: function (xhr, ajaxOptions, thrownError) {
    //         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //     }
    // });
    // });

    // Register
    // $(document).delegate('#button-register', 'click', function () {
    // $.ajax({
    //     url: 'index.php?route=checkout/register/save',
    //     type: 'post',
    //     data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
    //     dataType: 'json',
    //     beforeSend: function () {
    //         $('#button-register').button('loading');
    //     },
    //     complete: function () {
    //         $('#button-register').button('reset');
    //     },
    //     success: function (json) {
    //         $('.alert, .text-danger').remove();
    //         $('.form-group').removeClass('has-error');
    //
    //         if (json['redirect']) {
    //             location = json['redirect'];
    //         } else if (json['error']) {
    //             if (json['error']['warning']) {
    //                 $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
    //             }
    //
    //             for (i in json['error']) {
    //                 var element = $('#input-payment-' + i.replace('_', '-'));
    //
    //                 if ($(element).parent().hasClass('input-group')) {
    //                     $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
    //                 } else {
    //                     $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
    //                 }
    //             }
    //
    //             // Highlight any found errors
    //             $('.text-danger').parent().addClass('has-error');
    //         } else {
    //
    //             var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');
    //
    //             if (shipping_address) {
    //                 $.ajax({
    //                     url: 'index.php?route=checkout/shipping_method',
    //                     dataType: 'html',
    //                     success: function (html) {
    //                         // Add the shipping address
    //                         $.ajax({
    //                             url: 'index.php?route=checkout/shipping_address',
    //                             dataType: 'html',
    //                             success: function (html) {
    //                                 $('#collapse-shipping-address .panel-body').html(html);
    //
    //                                 $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
    //                             },
    //                             error: function (xhr, ajaxOptions, thrownError) {
    //                                 alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //                             }
    //                         });
    //
    //                         $('#collapse-shipping-method .panel-body').html(html);
    //
    //                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');
    //
    //                         $('a[href=\'#collapse-shipping-method\']').trigger('click');
    //
    //                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
    //                         $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
    //                         $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
    //                     },
    //                     error: function (xhr, ajaxOptions, thrownError) {
    //                         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //                     }
    //                 });
    //             } else {
    //                 $.ajax({
    //                     url: 'index.php?route=checkout/shipping_address',
    //                     dataType: 'html',
    //                     success: function (html) {
    //                         $('#collapse-shipping-address .panel-body').html(html);
    //
    //                         $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
    //
    //                         $('a[href=\'#collapse-shipping-address\']').trigger('click');
    //
    //                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
    //                         $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
    //                         $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
    //                     },
    //                     error: function (xhr, ajaxOptions, thrownError) {
    //                         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //                     }
    //                 });
    //             }
    //
    //             $.ajax({
    //                 url: 'index.php?route=checkout/payment_address',
    //                 dataType: 'html',
    //                 success: function (html) {
    //                     $('#collapse-payment-address .panel-body').html(html);
    //
    //                     $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
    //                 },
    //                 error: function (xhr, ajaxOptions, thrownError) {
    //                     alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //                 }
    //             });
    //         }
    //     },
    //     error: function (xhr, ajaxOptions, thrownError) {
    //         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    //     }
    // });
    // });

    // Payment Address
    $(document).delegate('#button-payment-address', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-payment-address').button('loading');
        },
        complete: function () {
            $('#button-payment-address').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-payment-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-address .panel-body').html(html);

                        $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-shipping-address\']').trigger('click');

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    // Shipping Address
    $(document).delegate('#button-shipping-address', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-shipping-address').button('loading');
        },
        complete: function () {
            $('#button-shipping-address').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-shipping-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-method .panel-body').html(html);

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-shipping-method\']').trigger('click');

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function (html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    // Guest
    $(document).delegate('#button-guest', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-guest').button('loading');
        },
        complete: function () {
            $('#button-guest').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-payment-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().addClass('has-error');
            } else {

                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function (html) {
                            // Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function (html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

                                    $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

                            $('#collapse-shipping-method .panel-body').html(html);

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-method\']').trigger('click');

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        success: function (html) {
                            $('#collapse-shipping-address .panel-body').html(html);

                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-address\']').trigger('click');

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    // Guest Shipping
    $(document).delegate('#button-guest-shipping', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-guest-shipping').button('loading');
        },
        complete: function () {
            $('#button-guest-shipping').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-shipping-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-method .panel-body').html(html);

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i>');

                        $('a[href=\'#collapse-shipping-method\']').trigger('click');

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    $(document).delegate('#button-shipping-method', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-shipping-method').button('loading');
        },
        complete: function () {
            $('#button-shipping-method').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-method .panel-body').html(html);

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 5: Payment Method <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-payment-method\']').trigger('click');

                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });

    $(document).delegate('#button-payment-method', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-payment-method').button('loading');
        },
        complete: function () {
            $('#button-payment-method').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 6: Confirm Order <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-checkout-confirm\']').trigger('click');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    });
//--></script>

</body>
</html>
