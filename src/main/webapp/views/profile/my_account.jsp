<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Account</title>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/cart.png" rel="icon"/>
    <link rel="stylesheet" href="../../css/dashboard.css">

    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/jquery-2.1.1.min.js"
            type="text/javascript"></script>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/bootstrap/js/bootstrap.min.js"
            type="text/javascript"></script>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Coustard:400,900" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,300' rel='stylesheet'
          type='text/css'>

</head>
<body>
<jsp:include page="../../layouts/header.jsp"></jsp:include>
<div class="account-register layout-2 left-col">
    <div class="container">
        <h1>My Account</h1>
        <ul class="breadcrumb">
            <li><a href="/dashboards"><i class="fa fa-home"></i></a></li>
            <li><a href="/views/profile/my_account.jsp">My Account</a></li>
        </ul>
        <div class="row">
            <c:set var="error" value="${param.err}"></c:set>
            <c:set var="success" value="${param.msg}"></c:set>
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9">
                <h3>My Account</h3>
                <ul class="list-unstyled">
                    <li><a href="/accounts?action=editInfo">Edit your account information</a></li>
                    <li><a href="/accounts?action=changePass">Change your password</a></li>
<%--                    <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/address">Modify your address book entries</a></li>--%>
<%--                    <li><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/wishlist">Modify your wish list</a></li>--%>
                </ul>
            </div>
        </div>
    </div>
    <jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>

