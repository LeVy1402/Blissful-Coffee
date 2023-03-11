<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Account</title>
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
            <li><a href="/dashboards"><i class="fa fa-home"></i></a></li>
            <li><a href="../../views/profile/my_account.jsp">Account</a></li>
            <li><a href="/register">Register</a></li>
        </ul>
        <div class="row">
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9"><h1>Register Account</h1>
                <p>If you already have an account with us, please login at the <a
                        href="/logins"><strong style="color: #d56b1f">login page</strong></a>.
                </p>
                <form action="/register" method="post" name="action" value="register" type="hidden" class="form-horizontal">
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
                                <input type="text" name="fullName" value="" placeholder="Nguyễn Văn A"
                                       id="input-firstname" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-lastname">DOB</label>
                            <div class="col-sm-10">
                                <input type="text" name="dateOfBirth" value="" placeholder="01/01/2001" id="input-lastname"
                                       class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Gender</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="1" checked="checked">
                                    Male</label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="0">
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
                                <input type="tel" name="contact" value="" placeholder="" id="input-telephone"
                                       class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-fax">Address</label>
                            <div class="col-sm-10">
                                <input type="text" name="address" value="" placeholder="" id="input-fax"
                                       class="form-control"/>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Your Password</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="password">Password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="Password"
                                       id="password" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="confirm_password">Password Confirm</label>
                            <div class="col-sm-10">
                                <input type="password" name="confirm" value="" placeholder="Password Confirm"
                                       id="confirm_password" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-9 demo-text">
                                <p id="message">Demo Text</p>
                            </div>
                        </div>

                    </fieldset>

                    <div class="buttons">
                        <div class="pull-right">I have read and agree to the <a
                                href=""
                                class="agree"><b>Privacy Policy</b></a> <input type="checkbox" name="agree" value="1"/>
                            &nbsp;
                            <input type="submit" value="Continue" class="btn btn-primary" onclick="checkPassword()"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../../js/script.js"></script>
<jsp:include page="../../layouts/footer.jsp"></jsp:include>
</body>
</html>
