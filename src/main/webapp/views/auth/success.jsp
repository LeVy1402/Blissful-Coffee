<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blissful Coffee</title>
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
        <ul class="breadcrumb">
            <li><a href="../../views/dashboard.jsp"><i class="fa fa-home"></i></a></li>
            <li><a href="../../views/profile/my_account.jsp">Account</a></li>
            <li><a href="../../views/auth/login.jsp">Success</a></li>
        </ul>
        <div class="row">
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9"><h1>Your Account Has Been Created!</h1>
                <p>Congratulations! Your new account has been successfully created!</p>
                <p>You can now take advantage of member privileges to enhance your online shopping experience with
                    us.</p>
                <p>If you have ANY questions about the operation of this online shop, please e-mail the store owner.</p>
                <p>A confirmation has been sent to the provided e-mail address. If you have not received it within the
                    hour, please <a href="Your Store">contact us</a>.</p>
                <div class="buttons">
                    <div class="pull-right"><a
                            href="./login.jsp"
                            class="btn btn-primary">Continue</a></div>
                </div>

            </div>
        </div>
    </div>
    <jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>
