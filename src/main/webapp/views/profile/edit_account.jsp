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
        <h1>Edit Your Account</h1>
        <ul class="breadcrumb">
            <li><a href="/dashboards"><i class="fa fa-home"></i></a></li>
            <li><a href="/accounts">My Account</a></li>
        </ul>
        <div class="row">
            <c:set var="error" value="${param.err}"></c:set>
            <c:set var="success" value="${param.msg}"></c:set>
            <jsp:include page="../../layouts/menu_vertical.jsp"></jsp:include>
            <div id="content" class="col-sm-9">
                <c:if test="${success.equals('updateSuccess')}">
                    <p style="color:#4cae4c; font-size: 17px"><i class="fa fa-check-circle"></i><strong> You have successfully updated !</strong></p>
                </c:if>
                <form  method="post" class="form-horizontal">
                    <input type="hidden" class="form-control" name="action" value="editInfo"  >
<%--                    <input type="hidden" name="action" value="editInfo">--%>
<%--                    <c:if test="${customerById.getCustomerId() != null}">--%>
<%--                        <input type="hidden" name="id" value="${customerById.getCustomerId()}">--%>
<%--                    </c:if>--%>
                    <c:if test="${ customerById != null}">
                        <input type="hidden" name="id"
                               value="<c:out value='${customerById.getCustomerId()}' />"/>
                    </c:if>
                    <fieldset>
                        <legend>Edit Your Personal Details</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-fullname">Full Name </label>
                            <div class="col-sm-10">
                                <input type="text" name="fullName" value="${customerById.getFullName()}"  id="input-fullname" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-dob">DOB</label>
                            <div class="col-sm-10">
                                <input type="date" name="dateOfBirth" value="${customerById.getDateOfBirth()}" id="input-dob" required
                                       class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Gender</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="true" <c:if test="${customerById.getGender() == true}"> checked </c:if> >
                                    Male</label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="false" <c:if test="${customerById.getGender() == false}"> checked </c:if> >
                                    Female</label>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="${customerById.getEmail()}" id="input-email" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Phone number</label>
                            <div class="col-sm-10">
                                <input type="tel" name="contact" value="${customerById.getContact()}"  id="input-telephone" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-fax">Address</label>
                            <div class="col-sm-10">
                                <input type="text" name="address" value="${customerById.getAddress()}" id="input-fax" class="form-control">
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

