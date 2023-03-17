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
        <li><a href="/dashboards"><i
                class="fa fa-home"></i></a></li>
        <li><a href="/cart">Shopping Cart</a></li>
    </ul>
    <div class="row">
        <jsp:include page="/layouts/menu_vertical.jsp"></jsp:include>
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
                    <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=checkout/cart/edit"
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
                            <tbody>
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
                                    <td class="text-right">${orderDetail.getProduct().getPrice() * orderDetail.getQuantity()}00 VNĐ
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

                <div class="col-sm-4 total_amount">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered">
                                <tr>
                                    <td class="text-right"><strong>Total:</strong></td>
                                    <td class="text-right">${total}00 VNĐ</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <form method="POST" action="checkout">
                <input type="hidden" name="action" value="" />
                <div class="buttons">
                    <div class="pull-left"><a href="dashboards" class="btn btn-default">Continue Shopping</a></div>
                    <div class="pull-right">
                        <button type="submit" class="btn btn-primary" value="Checkout">Checkout</button>
<%--                        <a--%>
<%--                            href="checkout"--%>
<%--                            class="btn btn-primary">Checkout</a>--%>
                    </div>
                </div>
            </form>
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