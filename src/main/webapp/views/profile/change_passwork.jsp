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
        <h1>Change Your Pass</h1>
        <ul class="breadcrumb">
            <li><a href="/dashboards"><i class="fa fa-home"></i></a></li>
            <li><a href="/views/profile/my_account.jsp">My Account</a></li>
        </ul>
        <div class="row">
            <c:set var="error" value="${param.err}"></c:set>
            <c:set var="success" value="${param.msg}"></c:set>
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9">
                <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/password" method="post" enctype="multipart/form-data" class="form-horizontal">
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
                    <div class="buttons clearfix">
                        <div class="pull-left"><a href="/accounts" class="btn btn-default">Back</a></div>
                        <div class="pull-right">
                            <input type="submit" value="Continue" class="btn btn-primary">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>

