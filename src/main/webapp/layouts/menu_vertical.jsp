<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<column id="column-left" class="col-sm-3 hidden-xs">
  <div class="box">
    <div class="box-heading">Account</div>
    <div class="list-group">
<%--      <a href="/logins"--%>
<%--         class="list-group-item">Login</a>--%>
<%--      <a href="/register"--%>
<%--         class="list-group-item">Register</a>--%>
<%--      <a href="../auth/forgot_password.jsp"--%>
<%--         class="list-group-item">Forgotten Password</a>--%>
        <c:if test="${UserLogin!=null}">
            <a href="/accounts"
               class="list-group-item">My Account</a>
        </c:if>
      <a href="../profile/address_book.jsp"
         class="list-group-item">Address Books</a>
      <a href="../wishlist.jsp"
         class="list-group-item">Wish List</a>
      <a href="../order_history.jsp"
         class="list-group-item">Order History</a>
    </div>
  </div>

  <span class="bestseller_default_width" style="display:none; visibility:hidden"></span>
</column>
</body>
</html>
