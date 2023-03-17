<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="container">
    <h1>Search Result</h1><ul class="breadcrumb">
    <li><a href="/dashboards"><i class="fa fa-home"></i></a></li>
    <li><a href="/dashboards">Home</a></li>
</ul>
    <div class="row">
        <column id="column-left" class="col-sm-3 hidden-xs">
            <span class="bestseller_default_width" style="display: none; visibility: hidden;"></span>
        </column>
        <div id="content" class="col-sm-9 category_filter">
            <br>
            <h3>Products meeting the search criteria</h3>
            <div class="row category_filter">
                <div class="col-md-4 btn-list-grid">
                    <div class="btn-group">
                        <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="" data-original-title="List"></button>
                        <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="" data-original-title="Grid"></button>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <c:forEach items="${productList}" var="product" >
                    <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-6">
                        <div class="product-block product-thumb">
                            <div class="product-block-inner ">
                                <div class="image"><a href="/products?action=detail&id=${product.getProductId()}">
                                    <img src="/img/${product.getImage()}" style="width:218px;height: 220px;"  class="img-responsive"></a>
                                </div>
                                <div>
                                    <div class="caption">
                                        <h4><a href="/products?action=detail&id=${product.getProductId()}">
                                            <c:out value="${product.getProductName()}"></c:out>
                                        </a></h4>
                                        <div class="listview_rating">
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                            </div>
                                        </div>
                                        <p><c:out value="${product.getDescription()}"></c:out></p>
                                        <div class="hover_block">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('${product.getProductId()}');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                                <button class="wishlist_button" type="button" data-toggle="tooltip" title="" onclick="wishlist.add('${product.getProductId()}');" data-original-title="Add to Wish List"></button>
                                                <button class="compare_button" type="button" data-toggle="tooltip" title="" onclick="compare.add('${product.getProductId()}');" data-original-title="Add to Compare"></button>
                                                <div class="rating">
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <p class="price">

                                            <c:out value="${product.getPrice()}"></c:out>00 VNĐ
                                        </p>

                                        <div class="res-cartbtn">
                                            <button type="button" onclick="cart.add('${product.getProductId()}');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        </div>
                                        <div class="listview_action">
                                            <div class="actions">
                                                <button type="button" onclick="cart.add('${product.getProductId()}');"><span class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                                <button class="wishlist_button" type="button" title="Add to Wish List" onclick="wishlist.add('${product.getProductId()}');"><span class="hidden-xs hidden-sm hidden-md">Add to Wish List</span></button>
                                                <button class="compare_button" type="button" title="Add to Compare" onclick="compare.add('${product.getProductId()}');"><span class="hidden-xs hidden-sm hidden-md">Add to Compare</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col-sm-6 text-left"></div>
                <div class="col-sm-6 text-right">Showing 1 to 6 of 6 (1 Pages)</div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>