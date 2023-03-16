<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 16/03/2023
  Time: 9:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="account-order-info layout-2 left-col">

<div class="container">
    <ul class="breadcrumb">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account">Account</a></li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order">Order History</a>
        </li>
        <li>
            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/info&amp;order_id=176">Order
                Information</a></li>
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
        </column>
        <div id="content" class="col-sm-9">
            <h2>Order Information</h2>
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <td class="text-left" colspan="2">Order Details</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-left" style="width: 50%;"><b>Order ID:</b> #${orderInCart}<br/>
                        <b>Date Added:</b> 16/03/2023
                    </td>
                    <td class="text-left"><b>Payment Method:</b> Cash On Delivery<br/>
                    </td>
                </tr>
                </tbody>
            </table>
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <td class="text-left" style="width: 50%;">Payment Address</td>
                    <td class="text-left">Shipping Address</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-left">${Address}</td>
                    <td class="text-left">A B<br/>ABC<br/>BDE<br/>Da Nang 123456<br/>Da Nang<br/>Viet Nam</td>
                </tr>
                </tbody>
            </table>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <td class="text-left">Product Name</td>
                        <td class="text-left">Model</td>
                        <td class="text-right">Quantity</td>
                        <td class="text-right">Price</td>
                        <td class="text-right">Total</td>
                        <td style="width: 20px;"></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="text-left">Cinnamon Coffee</td>
                        <td class="text-left">product 20</td>
                        <td class="text-right">1</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=217"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=48"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    <tr>
                        <td class="text-left">Coconut Coffee</td>
                        <td class="text-left">Product 5</td>
                        <td class="text-right">1</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=218"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=32"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    <tr>
                        <td class="text-left">Chocolate Raspberry</td>
                        <td class="text-left">Product 9</td>
                        <td class="text-right">1</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=219"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=36"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    <tr>
                        <td class="text-left">Breakfast blend</td>
                        <td class="text-left">Product 17</td>
                        <td class="text-right">1</td>
                        <td class="text-right">$999.00</td>
                        <td class="text-right">$999.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=220"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=44"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    <tr>
                        <td class="text-left">Chocomate Raspberry</td>
                        <td class="text-left">product 11</td>
                        <td class="text-right">2</td>
                        <td class="text-right">$100.00</td>
                        <td class="text-right">$200.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=221"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=40"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    <tr>
                        <td class="text-left">Coffee Bean Direct</td>
                        <td class="text-left">Product 16</td>
                        <td class="text-right">3</td>
                        <td class="text-right">$499.00</td>
                        <td class="text-right">$1,497.00</td>
                        <td class="text-right" style="white-space: nowrap;"><a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/reorder&amp;order_id=176&amp;order_product_id=222"
                                data-toggle="tooltip" title="Reorder" class="btn btn-primary"><i
                                class="fa fa-shopping-cart"></i></a>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add&amp;order_id=176&amp;product_id=43"
                               data-toggle="tooltip" title="Return" class="btn btn-danger"><i
                                    class="fa fa-reply"></i></a></td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="3"></td>
                        <td class="text-right"><b>Sub-Total</b></td>
                        <td class="text-right">$2,996.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                        <td class="text-right"><b>Flat Shipping Rate</b></td>
                        <td class="text-right">$5.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                        <td class="text-right"><b>Total</b></td>
                        <td class="text-right">$3,001.00</td>
                        <td></td>
                    </tr>
                    </tfoot>
                </table>
            </div>
            <h3>Order History</h3>
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <td class="text-left">Date Added</td>
                    <td class="text-left">Order Status</td>
                    <td class="text-left">Comment</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="text-left">16/03/2023</td>
                    <td class="text-left">Pending</td>
                    <td class="text-left"></td>
                </tr>
                </tbody>
            </table>
            <div class="buttons clearfix">
                <div class="pull-right"><a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order"
                        class="btn btn-primary">Continue</a></div>
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
                        <div class="rightcontent">Vestibulum ante ipsum primis urna risus suscipit leo Cras eget augue
                            vitae neque euismod congue quis non erat.
                        </div>
                        <div class="footer_right">
                            <a class="rightbutton" href="#"> Purchase Theme </a>
                        </div>
                    </div>
                </div>


            </div>


        </div>
    </div>

    <div id="footer" class="container">
        <div>

            <div class="footer_logo">
                <div class="footerlogo"><a href="#"><img alt="" src="image/catalog/logo.png"></a></div>
            </div>
        </div>
        <div class="row" id="footer_wrapper">
            <div class="footer_top">

                <div class="col-sm-3 column first">
                    <h5>Information</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=4">About
                                Us</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=6">Delivery
                                Information</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=3">Privacy
                                Policy</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information&amp;information_id=5">Terms
                                &amp; Conditions</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order">Order
                            History</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter">Newsletter</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-3 column">
                    <h5>My Account</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/contact">Contact
                                Us</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a>
                        </li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/sitemap">Site
                                Map</a></li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account">My
                            Account</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist">Wish
                                List</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-3 column">
                    <h5>Extras</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/manufacturer">Brands</a>
                        </li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/voucher">Gift
                            Vouchers</a></li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a>
                        </li>
                        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/special">Specials</a>
                        </li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/newsletter">Newsletter</a>
                        </li>
                        <li>
                            <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a>
                        </li>
                    </ul>
                </div>
                <div>

                    <div class="col-sm-3 column last">
                        <h5>Contact Us</h5>
                        <ul>
                            <li class="address">Megnor Com pvt Ltd, 507-Union Trade Center, Udhana Darwaja,Ring Road,
                                Surat, India.
                            </li>
                            <li class="phoneno">(91)-261 3023333</li>
                            <li class="email"><a href="#">support@templatemela.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="footer_bottom">
                <div class="footer_bottom_left">
                    <div id="links">
                        <ul>
                            <li class="first"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=affiliate/account">Affiliates</a>
                            </li>
                            <li>
                                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/voucher">Gift
                                    Vouchers</a></li>
                            <li>
                                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/manufacturer">Brands</a>
                            </li>
                            <li>
                                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/return/add">Returns</a>
                            </li>
                            <li>
                                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/sitemap">Site
                                    Map</a></li>
                            <li class="last"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/contact">Contact
                                Us</a></li>
                        </ul>
                    </div>
                    <p>Powered By <a href="http://www.opencart.com">OpenCart</a> Your Store &copy; 2023</p>
                </div>

                <div>

                    <div class="footer_bottom_right">
                        <div class="footer_social">
                            <ul class="social_block">
                                <li class="facebook"><a href="#"></a></li>
                                <li class="twitter"><a href="#"></a></li>
                                <li class="rss"><a href="#"></a></li>
                                <li class="linkin"><a href="#"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

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
</html>
