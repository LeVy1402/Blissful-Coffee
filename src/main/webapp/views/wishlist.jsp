<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/logo.png">
    <link rel="stylesheet" href="/css/wishlist.css">
</head>


<body class="account-wishlist layout-2 left-col">

<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="container">
    <ul class="breadcrumb">
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account">Account</a></li>
        <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist">My Wish
            List</a></li>
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
                <div id="content-box">
                    <h2>My Wish List</h2>
                    <c:choose>
                        <c:when test="${wishListList.size()>0}">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-center">Image</td>
                                    <td class="text-left">Product Name</td>
                                    <td class="text-left">Model</td>
                                    <td class="text-right">Stock</td>
                                    <td class="text-right">Unit Price</td>
                                    <td class="text-right">Action</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${wishListList}" var="wishList">
                                    <tr>
                                        <td class="text-center">
                                            <a href="products?action=detail&id=${wishList.getProduct().getProductId()}">
                                                <img src="/img/${wishList.getProduct().getImage()}"
                                                     alt="${wishList.getProduct().getImage()}"
                                                     title="${wishList.getProduct().getImage()}"
                                                     class="img-thumbnail"/>
                                            </a>
                                        </td>
                                        <td class="text-left">
                                            <a href="products?action=detail&id=${wishList.getProduct().getProductId()}">${wishList.getProduct().getProductName()}</a>
                                        </td>
                                        <td class="text-left">Product ${wishList.getProduct().getProductId()}</td>
                                        <td class="text-right">In Stock</td>
                                        <td class="text-right">
                                            <div class="price">
                                                <b>${wishList.getProduct().getPrice()}00 VNĐ</b>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <button type="button" onclick="cart.add('${wishList.getProduct().getProductId()}');"
                                                    data-toggle="tooltip" title="Add to Cart" class="btn btn-primary">
                                                <i class="fa fa-shopping-cart"></i>
                                            </button>
                                            <button type="button" onclick="wishlist.remove('${wishList.getProduct().getProductId()}');"
                                                    data-toggle="tooltip" title="Remove from wishlist" class="btn btn-primary">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>


                                    <%--                <tr>--%>
                                    <%--                    <td class="text-center">--%>
                                    <%--                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/03-47x47.jpg" alt="Chocolate &amp; mocha" title="Chocolate &amp; mocha" /></a>--%>
                                    <%--                    </td>--%>
                                    <%--                    <td class="text-left">--%>
                                    <%--                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=47">Chocolate &amp; mocha</a>--%>
                                    <%--                    </td>--%>
                                    <%--                    <td class="text-left">Product 21</td>--%>
                                    <%--                    <td class="text-right">In Stock</td>--%>
                                    <%--                    <td class="text-right">--%>
                                    <%--                        <div class="price">--%>
                                    <%--                            $100.00--%>
                                    <%--                        </div>--%>
                                    <%--                    </td>--%>
                                    <%--                    <td class="text-right"><button type="button" onclick="cart.add('47');" data-toggle="tooltip" title="Add to Cart" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>--%>
                                    <%--                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist&amp;remove=47" data-toggle="tooltip" title="Remove" class="btn btn-danger"><i class="fa fa-times"></i>--%>
                                    <%--                        </a>--%>
                                    <%--                    </td>--%>
                                    <%--                </tr>--%>
                                    <%--                <tr>--%>
                                    <%--                    <td class="text-center">              <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30"><img src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/02-47x47.jpg" alt="Breckfast Blend" title="Breckfast Blend" /></a>--%>
                                    <%--                    </td>--%>
                                    <%--                    <td class="text-left"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=30">Breckfast Blend</a></td>--%>
                                    <%--                    <td class="text-left">Product 3</td>--%>
                                    <%--                    <td class="text-right">In Stock</td>--%>
                                    <%--                    <td class="text-right">              <div class="price">--%>
                                    <%--                        <b>$80.00</b> <s>$100.00</s>--%>
                                    <%--                    </div>--%>
                                    <%--                    </td>--%>
                                    <%--                    <td class="text-right"><button type="button" onclick="cart.add('30');" data-toggle="tooltip" title="Add to Cart" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>--%>
                                    <%--                        <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist&amp;remove=30" data-toggle="tooltip" title="Remove" class="btn btn-danger"><i class="fa fa-times"></i></a></td>--%>
                                    <%--                </tr>--%>
                                </tbody>
                            </table>
                            <div class="buttons clearfix">
                                <div class="pull-right"><a
                                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account"
                                        class="btn btn-primary">Continue</a></div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <p>Your shopping cart is empty!</p>
                            <div class="buttons">
                                <div class="pull-right"><a href="dashboards" class="btn btn-primary">Continue</a>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
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
</html>
