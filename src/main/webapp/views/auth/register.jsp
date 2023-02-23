<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../layouts/header.jsp"></jsp:include>
<div class="container">
    <h1>Register Account</h1><ul class="breadcrumb">
    <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i class="fa fa-home"></i></a></li>
    <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account">Account</a></li>
    <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register">Register</a></li>
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
            <div class="box-heading">Bestsellers</div>
            <div class="box-content">


                <div class="box-product productbox-grid" id="bestseller-grid" style="width: 239px;">
                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/06-65x65.jpg" alt="Chocomate Raspberry" title="Chocomate Raspberry" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40">Chocomate Raspberry</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('40');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('40');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('40');" data-original-title="Add to Compare"></button>
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

                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/10-65x65.jpg" alt="Coffee Bean Direct" title="Coffee Bean Direct" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=43">Coffee Bean Direct</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('43');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('43');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('43');" data-original-title="Add to Compare"></button>
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

                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/02-65x65.jpg" alt="Breckfast Blend" title="Breckfast Blend" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30">Breckfast Blend</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('30');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('30');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('30');" data-original-title="Add to Compare"></button>
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
        <span class="bestseller_default_width" style="display: none; visibility: hidden;"></span>
        <div class="box">
            <div class="box-heading">Specials</div>
            <div class="box-content">


                <div class="box-product productbox-grid" id="special-grid" style="width: 239px;">
                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=44"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/11-65x65.jpg" alt="Breakfast blend" title="Breakfast blend" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=44">Breakfast blend</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('44');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('44');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('44');" data-original-title="Add to Compare"></button>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="price">
                                        <span class="price-old">$1,202.00</span><span class="price-new">$1,200.80</span>
                                        <span class="price-tax">Ex Tax: $999.00</span>
                                    </p>
                                    <div class="res-cartbtn">
                                        <button type="button" onclick="cart.add('44');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>

                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/02-65x65.jpg" alt="Breckfast Blend" title="Breckfast Blend" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30">Breckfast Blend</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('30');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('30');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('30');" data-original-title="Add to Compare"></button>
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

                    <div class="product-items first_item_tm last_item_tm" style="width: 239px;">
                        <div class="product-block product-thumb transition" style="height: 69px;">
                            <div class="product-block-inner ">

                                <div class="image">
                                    <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/06-65x65.jpg" alt="Chocomate Raspberry" title="Chocomate Raspberry" class="img-responsive"></a>
                                    <span class="saleicon sale">Sale</span>

                                </div>

                                <div class="caption">
                                    <h4><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40">Chocomate Raspberry</a></h4>
                                    <div class="hover_block">
                                        <div class="actions">
                                            <button type="button" onclick="cart.add('40');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                            <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('40');" data-original-title="Add to Wish List"></button>
                                            <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('40');" data-original-title="Add to Compare"></button>
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

                </div>
            </div>
        </div>
        <span class="special_default_width" style="display: none; visibility: hidden;"></span>
    </column>
        <div id="content" class="col-sm-9">
            <p>If you already have an account with us, please login at the <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/login">login page</a>.</p>
            <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset id="account">
                    <legend>Your Personal Details</legend>
                    <div class="form-group required" style="display: none;">
                        <label class="col-sm-2 control-label">Customer Group</label>
                        <div class="col-sm-10">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="customer_group_id" value="1" checked="checked">
                                    Default</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="firstname" value="" placeholder="First Name" id="input-firstname" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="lastname" value="" placeholder="Last Name" id="input-lastname" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                        <div class="col-sm-10">
                            <input type="email" name="email" value="" placeholder="E-Mail" id="input-email" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                        <div class="col-sm-10">
                            <input type="tel" name="telephone" value="" placeholder="Telephone" id="input-telephone" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                        <div class="col-sm-10">
                            <input type="text" name="fax" value="" placeholder="Fax" id="input-fax" class="form-control">
                        </div>
                    </div>
                </fieldset>
                <fieldset id="address">
                    <legend>Your Address</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-company">Company</label>
                        <div class="col-sm-10">
                            <input type="text" name="company" value="" placeholder="Company" id="input-company" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-address-1">Address 1</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_1" value="" placeholder="Address 1" id="input-address-1" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-address-2">Address 2</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_2" value="" placeholder="Address 2" id="input-address-2" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-city">City</label>
                        <div class="col-sm-10">
                            <input type="text" name="city" value="" placeholder="City" id="input-city" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                        <div class="col-sm-10">
                            <input type="text" name="postcode" value="" placeholder="Post Code" id="input-postcode" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-country">Country</label>
                        <div class="col-sm-10">
                            <select name="country_id" id="input-country" class="form-control hasCustomSelect" style="appearance: menulist-button; width: 629px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                <option value=""> --- Please Select --- </option>
                                <option value="244">Aaland Islands</option>
                                <option value="1">Afghanistan</option>
                                <option value="2">Albania</option>
                                <option value="3">Algeria</option>
                                <option value="4">American Samoa</option>
                                <option value="5">Andorra</option>
                                <option value="6">Angola</option>
                                <option value="7">Anguilla</option>
                                <option value="8">Antarctica</option>
                                <option value="9">Antigua and Barbuda</option>
                                <option value="10">Argentina</option>
                                <option value="11">Armenia</option>
                                <option value="12">Aruba</option>
                                <option value="252">Ascension Island (British)</option>
                                <option value="13">Australia</option>
                                <option value="14">Austria</option>
                                <option value="15">Azerbaijan</option>
                                <option value="16">Bahamas</option>
                                <option value="17">Bahrain</option>
                                <option value="18">Bangladesh</option>
                                <option value="19">Barbados</option>
                                <option value="20">Belarus</option>
                                <option value="21">Belgium</option>
                                <option value="22">Belize</option>
                                <option value="23">Benin</option>
                                <option value="24">Bermuda</option>
                                <option value="25">Bhutan</option>
                                <option value="26">Bolivia</option>
                                <option value="245">Bonaire, Sint Eustatius and Saba</option>
                                <option value="27">Bosnia and Herzegovina</option>
                                <option value="28">Botswana</option>
                                <option value="29">Bouvet Island</option>
                                <option value="30">Brazil</option>
                                <option value="31">British Indian Ocean Territory</option>
                                <option value="32">Brunei Darussalam</option>
                                <option value="33">Bulgaria</option>
                                <option value="34">Burkina Faso</option>
                                <option value="35">Burundi</option>
                                <option value="36">Cambodia</option>
                                <option value="37">Cameroon</option>
                                <option value="38">Canada</option>
                                <option value="251">Canary Islands</option>
                                <option value="39">Cape Verde</option>
                                <option value="40">Cayman Islands</option>
                                <option value="41">Central African Republic</option>
                                <option value="42">Chad</option>
                                <option value="43">Chile</option>
                                <option value="44">China</option>
                                <option value="45">Christmas Island</option>
                                <option value="46">Cocos (Keeling) Islands</option>
                                <option value="47">Colombia</option>
                                <option value="48">Comoros</option>
                                <option value="49">Congo</option>
                                <option value="50">Cook Islands</option>
                                <option value="51">Costa Rica</option>
                                <option value="52">Cote D'Ivoire</option>
                                <option value="53">Croatia</option>
                                <option value="54">Cuba</option>
                                <option value="246">Curacao</option>
                                <option value="55">Cyprus</option>
                                <option value="56">Czech Republic</option>
                                <option value="237">Democratic Republic of Congo</option>
                                <option value="57">Denmark</option>
                                <option value="58">Djibouti</option>
                                <option value="59">Dominica</option>
                                <option value="60">Dominican Republic</option>
                                <option value="61">East Timor</option>
                                <option value="62">Ecuador</option>
                                <option value="63">Egypt</option>
                                <option value="64">El Salvador</option>
                                <option value="65">Equatorial Guinea</option>
                                <option value="66">Eritrea</option>
                                <option value="67">Estonia</option>
                                <option value="68">Ethiopia</option>
                                <option value="69">Falkland Islands (Malvinas)</option>
                                <option value="70">Faroe Islands</option>
                                <option value="71">Fiji</option>
                                <option value="72">Finland</option>
                                <option value="74">France, Metropolitan</option>
                                <option value="75">French Guiana</option>
                                <option value="76">French Polynesia</option>
                                <option value="77">French Southern Territories</option>
                                <option value="126">FYROM</option>
                                <option value="78">Gabon</option>
                                <option value="79">Gambia</option>
                                <option value="80">Georgia</option>
                                <option value="81">Germany</option>
                                <option value="82">Ghana</option>
                                <option value="83">Gibraltar</option>
                                <option value="84">Greece</option>
                                <option value="85">Greenland</option>
                                <option value="86">Grenada</option>
                                <option value="87">Guadeloupe</option>
                                <option value="88">Guam</option>
                                <option value="89">Guatemala</option>
                                <option value="256">Guernsey</option>
                                <option value="90">Guinea</option>
                                <option value="91">Guinea-Bissau</option>
                                <option value="92">Guyana</option>
                                <option value="93">Haiti</option>
                                <option value="94">Heard and Mc Donald Islands</option>
                                <option value="95">Honduras</option>
                                <option value="96">Hong Kong</option>
                                <option value="97">Hungary</option>
                                <option value="98">Iceland</option>
                                <option value="99">India</option>
                                <option value="100">Indonesia</option>
                                <option value="101">Iran (Islamic Republic of)</option>
                                <option value="102">Iraq</option>
                                <option value="103">Ireland</option>
                                <option value="254">Isle of Man</option>
                                <option value="104">Israel</option>
                                <option value="105">Italy</option>
                                <option value="106">Jamaica</option>
                                <option value="107">Japan</option>
                                <option value="257">Jersey</option>
                                <option value="108">Jordan</option>
                                <option value="109">Kazakhstan</option>
                                <option value="110">Kenya</option>
                                <option value="111">Kiribati</option>
                                <option value="113">Korea, Republic of</option>
                                <option value="253">Kosovo, Republic of</option>
                                <option value="114">Kuwait</option>
                                <option value="115">Kyrgyzstan</option>
                                <option value="116">Lao People's Democratic Republic</option>
                                <option value="117">Latvia</option>
                                <option value="118">Lebanon</option>
                                <option value="119">Lesotho</option>
                                <option value="120">Liberia</option>
                                <option value="121">Libyan Arab Jamahiriya</option>
                                <option value="122">Liechtenstein</option>
                                <option value="123">Lithuania</option>
                                <option value="124">Luxembourg</option>
                                <option value="125">Macau</option>
                                <option value="127">Madagascar</option>
                                <option value="128">Malawi</option>
                                <option value="129">Malaysia</option>
                                <option value="130">Maldives</option>
                                <option value="131">Mali</option>
                                <option value="132">Malta</option>
                                <option value="133">Marshall Islands</option>
                                <option value="134">Martinique</option>
                                <option value="135">Mauritania</option>
                                <option value="136">Mauritius</option>
                                <option value="137">Mayotte</option>
                                <option value="138">Mexico</option>
                                <option value="139">Micronesia, Federated States of</option>
                                <option value="140">Moldova, Republic of</option>
                                <option value="141">Monaco</option>
                                <option value="142">Mongolia</option>
                                <option value="242">Montenegro</option>
                                <option value="143">Montserrat</option>
                                <option value="144">Morocco</option>
                                <option value="145">Mozambique</option>
                                <option value="146">Myanmar</option>
                                <option value="147">Namibia</option>
                                <option value="148">Nauru</option>
                                <option value="149">Nepal</option>
                                <option value="150">Netherlands</option>
                                <option value="151">Netherlands Antilles</option>
                                <option value="152">New Caledonia</option>
                                <option value="153">New Zealand</option>
                                <option value="154">Nicaragua</option>
                                <option value="155">Niger</option>
                                <option value="156">Nigeria</option>
                                <option value="157">Niue</option>
                                <option value="158">Norfolk Island</option>
                                <option value="112">North Korea</option>
                                <option value="159">Northern Mariana Islands</option>
                                <option value="160">Norway</option>
                                <option value="161">Oman</option>
                                <option value="162">Pakistan</option>
                                <option value="163">Palau</option>
                                <option value="247">Palestinian Territory, Occupied</option>
                                <option value="164">Panama</option>
                                <option value="165">Papua New Guinea</option>
                                <option value="166">Paraguay</option>
                                <option value="167">Peru</option>
                                <option value="168">Philippines</option>
                                <option value="169">Pitcairn</option>
                                <option value="170">Poland</option>
                                <option value="171">Portugal</option>
                                <option value="172">Puerto Rico</option>
                                <option value="173">Qatar</option>
                                <option value="174">Reunion</option>
                                <option value="175">Romania</option>
                                <option value="176">Russian Federation</option>
                                <option value="177">Rwanda</option>
                                <option value="178">Saint Kitts and Nevis</option>
                                <option value="179">Saint Lucia</option>
                                <option value="180">Saint Vincent and the Grenadines</option>
                                <option value="181">Samoa</option>
                                <option value="182">San Marino</option>
                                <option value="183">Sao Tome and Principe</option>
                                <option value="184">Saudi Arabia</option>
                                <option value="185">Senegal</option>
                                <option value="243">Serbia</option>
                                <option value="186">Seychelles</option>
                                <option value="187">Sierra Leone</option>
                                <option value="188">Singapore</option>
                                <option value="189">Slovak Republic</option>
                                <option value="190">Slovenia</option>
                                <option value="191">Solomon Islands</option>
                                <option value="192">Somalia</option>
                                <option value="193">South Africa</option>
                                <option value="194">South Georgia &amp; South Sandwich Islands</option>
                                <option value="248">South Sudan</option>
                                <option value="195">Spain</option>
                                <option value="196">Sri Lanka</option>
                                <option value="249">St. Barthelemy</option>
                                <option value="197">St. Helena</option>
                                <option value="250">St. Martin (French part)</option>
                                <option value="198">St. Pierre and Miquelon</option>
                                <option value="199">Sudan</option>
                                <option value="200">Suriname</option>
                                <option value="201">Svalbard and Jan Mayen Islands</option>
                                <option value="202">Swaziland</option>
                                <option value="203">Sweden</option>
                                <option value="204">Switzerland</option>
                                <option value="205">Syrian Arab Republic</option>
                                <option value="206">Taiwan</option>
                                <option value="207">Tajikistan</option>
                                <option value="208">Tanzania, United Republic of</option>
                                <option value="209">Thailand</option>
                                <option value="210">Togo</option>
                                <option value="211">Tokelau</option>
                                <option value="212">Tonga</option>
                                <option value="213">Trinidad and Tobago</option>
                                <option value="255">Tristan da Cunha</option>
                                <option value="214">Tunisia</option>
                                <option value="215">Turkey</option>
                                <option value="216">Turkmenistan</option>
                                <option value="217">Turks and Caicos Islands</option>
                                <option value="218">Tuvalu</option>
                                <option value="219">Uganda</option>
                                <option value="220">Ukraine</option>
                                <option value="221">United Arab Emirates</option>
                                <option value="222" selected="selected">United Kingdom</option>
                                <option value="223">United States</option>
                                <option value="224">United States Minor Outlying Islands</option>
                                <option value="225">Uruguay</option>
                                <option value="226">Uzbekistan</option>
                                <option value="227">Vanuatu</option>
                                <option value="228">Vatican City State (Holy See)</option>
                                <option value="229">Venezuela</option>
                                <option value="230">Viet Nam</option>
                                <option value="231">Virgin Islands (British)</option>
                                <option value="232">Virgin Islands (U.S.)</option>
                                <option value="233">Wallis and Futuna Islands</option>
                                <option value="234">Western Sahara</option>
                                <option value="235">Yemen</option>
                                <option value="238">Zambia</option>
                                <option value="239">Zimbabwe</option>
                            </select><span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 603px; display: inline-block;">United Kingdom</span></span>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-zone">Region / State</label>
                        <div class="col-sm-10">
                            <select name="zone_id" id="input-zone" class="form-control hasCustomSelect" style="appearance: menulist-button; width: 629px; position: absolute; opacity: 0; height: 34px; font-size: 12px;"><option value=""> --- Please Select --- </option><option value="3513">Aberdeen</option><option value="3514">Aberdeenshire</option><option value="3515">Anglesey</option><option value="3516">Angus</option><option value="3517">Argyll and Bute</option><option value="3518">Bedfordshire</option><option value="3519">Berkshire</option><option value="3520">Blaenau Gwent</option><option value="3521">Bridgend</option><option value="3522">Bristol</option><option value="3523">Buckinghamshire</option><option value="3524">Caerphilly</option><option value="3525">Cambridgeshire</option><option value="3526">Cardiff</option><option value="3527">Carmarthenshire</option><option value="3528">Ceredigion</option><option value="3529">Cheshire</option><option value="3530">Clackmannanshire</option><option value="3531">Conwy</option><option value="3532">Cornwall</option><option value="3949">County Antrim</option><option value="3950">County Armagh</option><option value="3951">County Down</option><option value="3952">County Fermanagh</option><option value="3953">County Londonderry</option><option value="3954">County Tyrone</option><option value="3955">Cumbria</option><option value="3533">Denbighshire</option><option value="3534">Derbyshire</option><option value="3535">Devon</option><option value="3536">Dorset</option><option value="3537">Dumfries and Galloway</option><option value="3538">Dundee</option><option value="3539">Durham</option><option value="3540">East Ayrshire</option><option value="3541">East Dunbartonshire</option><option value="3542">East Lothian</option><option value="3543">East Renfrewshire</option><option value="3544">East Riding of Yorkshire</option><option value="3545">East Sussex</option><option value="3546">Edinburgh</option><option value="3547">Essex</option><option value="3548">Falkirk</option><option value="3549">Fife</option><option value="3550">Flintshire</option><option value="3551">Glasgow</option><option value="3552">Gloucestershire</option><option value="3553">Greater London</option><option value="3554">Greater Manchester</option><option value="3555">Gwynedd</option><option value="3556">Hampshire</option><option value="3557">Herefordshire</option><option value="3558">Hertfordshire</option><option value="3559">Highlands</option><option value="3560">Inverclyde</option><option value="3561">Isle of Wight</option><option value="3562">Kent</option><option value="3563">Lancashire</option><option value="3564">Leicestershire</option><option value="3565">Lincolnshire</option><option value="3566">Merseyside</option><option value="3567">Merthyr Tydfil</option><option value="3568">Midlothian</option><option value="3569">Monmouthshire</option><option value="3570">Moray</option><option value="3571">Neath Port Talbot</option><option value="3572">Newport</option><option value="3573">Norfolk</option><option value="3574">North Ayrshire</option><option value="3575">North Lanarkshire</option><option value="3576">North Yorkshire</option><option value="3577">Northamptonshire</option><option value="3578">Northumberland</option><option value="3579">Nottinghamshire</option><option value="3580">Orkney Islands</option><option value="3581">Oxfordshire</option><option value="3582">Pembrokeshire</option><option value="3583">Perth and Kinross</option><option value="3584">Powys</option><option value="3585">Renfrewshire</option><option value="3586">Rhondda Cynon Taff</option><option value="3587">Rutland</option><option value="3588">Scottish Borders</option><option value="3589">Shetland Islands</option><option value="3590">Shropshire</option><option value="3591">Somerset</option><option value="3592">South Ayrshire</option><option value="3593">South Lanarkshire</option><option value="3594">South Yorkshire</option><option value="3595">Staffordshire</option><option value="3596">Stirling</option><option value="3597">Suffolk</option><option value="3598">Surrey</option><option value="3599">Swansea</option><option value="3600">Torfaen</option><option value="3601">Tyne and Wear</option><option value="3602">Vale of Glamorgan</option><option value="3603">Warwickshire</option><option value="3604">West Dunbartonshire</option><option value="3605">West Lothian</option><option value="3606">West Midlands</option><option value="3607">West Sussex</option><option value="3608">West Yorkshire</option><option value="3609">Western Isles</option><option value="3610">Wiltshire</option><option value="3611">Worcestershire</option><option value="3612">Wrexham</option></select><span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 603px; display: inline-block;">&nbsp;</span></span>
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Your Password</legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-password">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                        <div class="col-sm-10">
                            <input type="password" name="confirm" value="" placeholder="Password Confirm" id="input-confirm" class="form-control">
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Newsletter</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Subscribe</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="newsletter" value="1">
                                Yes</label>
                            <label class="radio-inline">
                                <input type="radio" name="newsletter" value="0" checked="checked">
                                No</label>
                        </div>
                    </div>
                </fieldset>
                <div class="buttons">
                    <div class="pull-right">I have read and agree to the <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information/agree&amp;information_id=3" class="agree"><b>Privacy Policy</b></a>                        <input type="checkbox" name="agree" value="1">
                        &nbsp;
                        <input type="submit" value="Continue" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
