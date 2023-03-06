<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgotten Password</title>
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
            <li><a href="../../views/auth/login.jsp">Forgotten Password</a></li>
        </ul>
        <div class="row">
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9"><h1>Register Account</h1>
                <p>Enter the e-mail address associated with your account. Click submit to have your password e-mailed to you.</p>
                <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register"
                      method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset id="account" class="personal">
                        <legend>Your E-Mail Address</legend>
                        <div class="form-group required">
                            <label class="col-sm-3 control-label" for="input-email">E-Mail Address</label>
                            <div class="col-sm-9">
                                <input type="text" name="email" value="" placeholder=""
                                       id="input-email" class="form-control"/>
                            </div>
                        </div>
                    </fieldset>


                    <div class="buttons clearfix">
                        <div class="pull-left"><a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/login" class="btn btn-default">Back</a></div>
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
