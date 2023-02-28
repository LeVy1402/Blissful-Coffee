<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register Account</title>
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
            <li><a href="../../views/auth/register.jsp">Register</a></li>
        </ul>
        <div class="row">
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9"><h1>Register Account</h1>
                <p>If you already have an account with us, please login at the <a
                        href="../auth/login.jsp">login
                    page</a>.</p>
                <form action="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=account/register"
                      method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset id="account" class="personal">
                        <legend>Your Personal Details</legend>
                        <div class="form-group required" style="display: none;">
                            <label class="col-sm-2 control-label">Customer Group</label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="1" checked="checked"/>
                                        Default</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-firstname">Full name</label>
                            <div class="col-sm-10">
                                <input type="text" name="firstname" value="" placeholder="Nguyễn Văn A"
                                       id="input-firstname" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-lastname">DOB</label>
                            <div class="col-sm-10">
                                <input type="text" name="lastname" value="" placeholder="01/01/1999" id="input-lastname"
                                       class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Gender</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="newsletter" value="1">
                                    Male</label>
                                <label class="radio-inline">
                                    <input type="radio" name="newsletter" value="0" checked="checked">
                                    Female</label>
                            </div>
                        </div>


                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="" placeholder="E-Mail" id="input-email"
                                       class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Phone number</label>
                            <div class="col-sm-10">
                                <input type="tel" name="telephone" value="" placeholder="" id="input-telephone"
                                       class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-fax">Address</label>
                            <div class="col-sm-10">
                                <input type="text" name="fax" value="" placeholder="" id="input-fax"
                                       class="form-control"/>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Your Password</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password">Password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="Password"
                                       id="input-password" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                            <div class="col-sm-10">
                                <input type="password" name="confirm" value="" placeholder="Password Confirm"
                                       id="input-confirm" class="form-control"/>
                            </div>
                        </div>
                    </fieldset>

                    <div class="buttons">
                        <div class="pull-right">I have read and agree to the <a
                                href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=information/information/agree&amp;information_id=3"
                                class="agree"><b>Privacy Policy</b></a> <input type="checkbox" name="agree" value="1"/>
                            &nbsp;
                            <input type="submit" value="Continue" class="btn btn-primary"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>
