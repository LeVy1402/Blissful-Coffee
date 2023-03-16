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
                        <tr>
                            <td class="text-right">#176</td>
                            <td class="text-left">Pending</td>
                            <td class="text-left">16/03/2023</td>
                            <td class="text-right">6</td>
                            <td class="text-left">A B</td>
                            <td class="text-right">$3,001.00</td>
                            <td class="text-right"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/info&amp;order_id=176"
                                    data-toggle="tooltip" title="View" class="btn btn-info"><i class="fa fa-eye"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">#174</td>
                            <td class="text-left">Pending</td>
                            <td class="text-left">13/03/2023</td>
                            <td class="text-right">3</td>
                            <td class="text-left">A B</td>
                            <td class="text-right">$704.00</td>
                            <td class="text-right"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/info&amp;order_id=174"
                                    data-toggle="tooltip" title="View" class="btn btn-info"><i class="fa fa-eye"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">#173</td>
                            <td class="text-left">Pending</td>
                            <td class="text-left">10/03/2023</td>
                            <td class="text-right">5</td>
                            <td class="text-left">A B</td>
                            <td class="text-right">$903.00</td>
                            <td class="text-right"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/info&amp;order_id=173"
                                    data-toggle="tooltip" title="View" class="btn btn-info"><i class="fa fa-eye"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">#172</td>
                            <td class="text-left">Pending</td>
                            <td class="text-left">09/03/2023</td>
                            <td class="text-right">3</td>
                            <td class="text-left">A B</td>
                            <td class="text-right">$704.00</td>
                            <td class="text-right"><a
                                    href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/order/info&amp;order_id=172"
                                    data-toggle="tooltip" title="View" class="btn btn-info"><i class="fa fa-eye"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
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
