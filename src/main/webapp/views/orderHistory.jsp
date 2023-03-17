<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Title</title>
</head>
<body class="account-order-info layout-2 left-col">

<jsp:include page="../layouts/header.jsp"></jsp:include>
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

            <h1>Order History</h1>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <td class="text-right">Order ID</td>
                        <td class="text-left">Order Status</td>
                        <td class="text-left">Date Added</td>
                        <td class="text-right">No. of Products</td>
                        <td class="text-left">Customer</td>
                        <td class="text-right">Total</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${orderList}" var="order">

                        <tr>
                            <td class="text-right">#${order.getOrderId()}</td>
                            <td class="text-left">${order.getOrderStatus()}</td>
                            <td class="text-left">${order.getOrderDate()}</td>
                            <td class="text-right">
                                    ${productsByOrderList.get(order).size()}
                            </td>
                            <td class="text-left">${order.getCustomer().getFullName()}</td>
                            <td class="text-right">
                                <c:set var="totalOrder" scope="session" value="0"></c:set>
                                <c:forEach items="${productsByOrderList.get(order)}" var="orderDetail">
                                    <c:set var="totalOrder" scope="session"
                                           value="${totalOrder + orderDetail.getProduct().getPrice() * orderDetail.getQuantity()}"/>
                                </c:forEach>
                                <c:out value="${totalOrder}"> </c:out>00 VNĐ
                            </td>
                            <td class="text-right">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                        data-bs-target="#modalDetail${order.getOrderId()}">
                                    <i class="fa fa-eye"></i>
                                </button>
                            </td>


                        </tr>


                    </c:forEach>

                    </tbody>
                </table>
                <c:forEach items="${orderList}" var="order">
                    <!-- Modal -->
                    <div class="modal fade" id="modalDetail${order.getOrderId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Order detail</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead>
                                            <tr>
                                                <td class="text-left">Product Name</td>
                                                <td class="text-left">Model</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Unit Price</td>
                                                <td class="text-right">Total</td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${productsByOrderList.get(order)}" var="orderDetail">
                                                <tr>
                                                    <td class="text-left">
                                                        <a
                                                                href="products?action=detail&id=${orderDetail.getProduct().getProductId()}">
                                                                ${orderDetail.getProduct().getProductName()}
                                                        </a>
                                                    </td>
                                                    <td class="text-left">Product ${orderDetail.getProduct().getProductId()}</td>
                                                    <td class="text-right">${orderDetail.getQuantity()}</td>
                                                    <td class="text-right">${orderDetail.getProduct().getPrice()}00 VNĐ</td>
                                                    <td class="text-right">${orderDetail.getProduct().getPrice() * orderDetail.getQuantity()}00 VNĐ</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <td colspan="4" class="text-right"><strong>Total:</strong></td>
                                                <td class="text-right">${totalOrder}00 VNĐ</td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="text-right"></div>
            <div class="buttons clearfix">
                <div class="pull-right"><a
                        href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/account"
                        class="btn btn-primary">Continue</a></div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../layouts/footer.jsp"></jsp:include>
</body>
</html>
