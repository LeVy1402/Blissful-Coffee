<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Account Login</title>
    <link rel="stylesheet" href="../../css/dashboard.css">
    <base/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/cart.png" rel="icon"/>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/jquery-2.1.1.min.js"
            type="text/javascript"></script>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/bootstrap/js/bootstrap.min.js"
            type="text/javascript"></script>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Coustard:400,900" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,300' rel='stylesheet'
          type='text/css'>
    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/stylesheet.css"
          rel="stylesheet">

    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/carousel.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/custom.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/theme/OPC080182/stylesheet/megnor/bootstrap.min.css"/>


    <link href="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css"
          type="text/css" rel="stylesheet" media="screen"/>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/common.js"
            type="text/javascript"></script>

    <!-- Megnor www.templatemela.com - Start -->
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/carousel.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/megnor.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/custom.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.custom.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/scrolltop.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jquery.formalize.min.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/tabs.js"></script>
    <script type="text/javascript"
            src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/megnor/jstree.min.js"></script>


    <!-- Megnor www.templatemela.com - End -->


    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/datetimepicker/moment.js"
            type="text/javascript"></script>
    <script src="https://opencart.templatemela.com/OPC08/OPC080182/catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"
            type="text/javascript"></script>
</head>
<body>
<jsp:include page="../../layouts/header.jsp"></jsp:include>
<div class="account-register layout-2 left-col">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="../../views/dashboard.jsp"><i class="fa fa-home"></i></a></li>
            <li><a href="../../views/profile/my_account.jsp">Account</a></li>
            <li><a href="../../views/auth/login.jsp">Login</a></li>
        </ul>
        <div class="row">
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="well">
                            <h2>Account Login</h2>
                            <h4>New Customer</h4>
                            <p><strong>Register Account</strong></p>
                            <p>By creating an account you will be able to shop faster, be up to date on an order's
                                status, and keep track of the orders you have previously made.</p>
                            <a href="" class="btn btn-primary">Continue</a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="well">
                            <h4>Returning Customer</h4>
                            <p><strong>I am a returning customer</strong></p>
                            <form action=""
                                  method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label class="control-label" for="input-email">E-Mail Address</label>
                                    <input type="text" name="email" value="" placeholder="E-Mail Address"
                                           id="input-email" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-password">Password</label>
                                    <input type="password" name="password" value="" placeholder="Password"
                                           id="input-password" class="form-control"/>
                                    <a href="">Forgotten Password</a></div>
                                <input type="submit" value="Login" class="btn btn-primary"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>
