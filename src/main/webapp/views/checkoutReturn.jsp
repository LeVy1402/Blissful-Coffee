<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="com.example.blissful_coffee.Config"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>VNPAY RESPONSE</title>
    <!-- Bootstrap core CSS -->
    <link href="/vnpay_jsp/assets/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="/vnpay_jsp/assets/jumbotron-narrow.css" rel="stylesheet">
    <script src="/vnpay_jsp/assets/jquery-1.11.3.min.js"></script>
</head>


<body class="checkout-cart layout-2 left-col">
<jsp:include page="../layouts/header.jsp"></jsp:include>

<%
    //Begin process return from VNPAY
    Map fields = new HashMap();
    for (Enumeration params = request.getParameterNames(); params.hasMoreElements();) {
        String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
        String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
        if ((fieldValue != null) && (fieldValue.length() > 0)) {
            fields.put(fieldName, fieldValue);
        }
    }

    String vnp_SecureHash = request.getParameter("vnp_SecureHash");
    if (fields.containsKey("vnp_SecureHashType")) {
        fields.remove("vnp_SecureHashType");
    }
    if (fields.containsKey("vnp_SecureHash")) {
        fields.remove("vnp_SecureHash");
    }
    String signValue = Config.hashAllFields(fields);

%>

<div class="container">
    <ul class="breadcrumb">
        <li><a href="dashboards"><i
                class="fa fa-home"></i></a></li>
        <li><a href="cart">Shopping Cart</a>
        </li>
        <li><a href="checkout">Checkout</a>
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
        </column>
        <div id="content" class="col-sm-9"><h1>Checkout Status</h1>

            <div class="container">
                <div class="header clearfix">
                    <h3 class="text-muted">VNPAY RESPONSE</h3>
                </div>
                <div class="table-responsive">
                    <div class="form-group">
                        <label >Merchant Transaction Code:</label>
                        <label><%=request.getParameter("vnp_TxnRef")%></label>
                    </div>
                    <div class="form-group">
                        <label >Amount:</label>
                        <label><%=request.getParameter("vnp_Amount")%></label>
                    </div>
                    <div class="form-group">
                        <label >Order info:</label>
                        <label><%=request.getParameter("vnp_OrderInfo")%></label>
                    </div>
                    <div class="form-group">
                        <label >VNPAY Response Code:</label>
                        <label><%=request.getParameter("vnp_ResponseCode")%></label>
                    </div>
                    <div class="form-group">
                        <label >VNPAY Transaction Code:</label>
                        <label><%=request.getParameter("vnp_TransactionNo")%></label>
                    </div>
                    <div class="form-group">
                        <label >Bank Code:</label>
                        <label><%=request.getParameter("vnp_BankCode")%></label>
                    </div>
                    <div class="form-group">
                        <label >Pay Date:</label>
                        <label><%=request.getParameter("vnp_PayDate")%></label>
                    </div>
                    <div class="form-group">
                        <label >Payment Status:</label>
                        <label>
                            <%
                                String status="null";
                                if (signValue.equals(vnp_SecureHash)) {
                                    if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                                        status = "Success";
                                        System.out.print(status);
                                    } else {
                                        status = "Failed";
                                        System.out.print(status);
                                    }

                                } else {
                                    status = "invalid signature";
                                    System.out.print(status);
                                }
                            %>
                        </label>
                        <label><%=status%></label>
                    </div>
                </div>
                <p>
                    &nbsp;
                </p>
                <div class="buttons">
                    <div class="pull-left"><a href="dashboards" class="btn btn-default">Continue Shopping</a></div>
                    <div class="pull-right">
                        <a href="order" class="btn btn-primary" value="Checkout">View Order Detail</a>
                        <%--                        <a--%>
                        <%--                            href="checkout"--%>
                        <%--                            class="btn btn-primary">Checkout</a>--%>
                    </div>
                </div>
                <footer class="footer">
                    <p>&copy; VNPAY 2020</p>
                </footer>
            </div>

        </div>
    </div>
</div>

<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
<script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            url: 'order',

            data:'action=getOrderResult&status='+"<%=status%>",
            success: function(html) {
                console.log("OK")
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $("#frmCreateOrder").submit(function () {
        var postData = $("#frmCreateOrder").serialize();
        var submitUrl = $("#frmCreateOrder").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    alert(x.Message);
                }
            }
        });
        return false;
    });
</script>

<jsp:include page="../layouts/footer.jsp"></jsp:include>
</body>
</html>
