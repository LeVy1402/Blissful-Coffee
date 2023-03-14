<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/logo.png">

    <%--    <link rel="stylesheet" href="../css/dashboard.css">--%>
</head>
<body>
<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="main-slider">
    <div id="spinner"></div>
    <div id="slideshow0" class="owl-carousel" style="opacity: 1;">
        <div class="item banner">
            <a href="#"><img
                    src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/main-banner2-1903x520.jpg"
                    class="img-responsive"/></a>
        </div>
        <div class="item banner">
            <a href="#"><img
                    src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/main-banner2-1903x520.jpg"
                    alt="mainbanner2" class="img-responsive"/></a>
        </div>
        <div class="item banner">
            <a href="#"><img
                    src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/main-banner3-1903x520.jpg"
                    alt="mainbanner3" class="img-responsive"/></a>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#slideshow0').owlCarousel({
        items: 6,
        autoPlay: 4000,
        singleItem: true,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: true
    });
</script>
<script type="text/javascript">
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $("#spinner").fadeOut("slow");
    });
</script>
<div>
    <div class="subbanner2_outer">
        <div class="subbanner2">
            <div class="subbanner2_1 banner">
                <div class="content">
                    <div class="data">
                        <a href="#">
                            <img alt=""
                                 src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/sub_banner_1.jpg">
                        </a>
                    </div>
                    <div class="content-text">
                        <div class="content-text-inner">
                            <div class="heading"><span class="heading1">Enjoying Great </span><br><span
                                    class="heading2">Iced Coffee</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="subbanner2_2 banner">
                <div class="content">
                    <div class="data"><a href="#"><img alt=""
                                                       src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/sub_banner_2.jpg"></a>
                    </div>
                    <div class="content-text">
                        <div class="content-text-inner">
                            <div class="heading"><span class="heading1">the pursuit of the </span><br><span
                                    class="heading2">perfect coffee</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="subbanner2_3 banner">
                <div class="content">
                    <div class="data"><a href="#"><img alt=""
                                                       src="https://opencart.templatemela.com/OPC08/OPC080182/image/catalog/sub_banner_3.jpg"></a>
                    </div>
                    <div class="content-text">
                        <div class="content-text-inner">
                            <div class="heading"><span class="heading1">Freshly Roasted </span><br><span
                                    class="heading2">Bean coffees</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--Đổ sản phẩm chỗ này nhe--%>
<div class="box featured">
    <div class="box-heading">Featured</div>
    <div class="box-content">
        <div class="customNavigation">
            <a class="btn prev">&nbsp;</a>
            <a class="btn next">&nbsp;</a>
        </div>

        <div class="box-product product-carousel" id="featured-carousel">
            <c:forEach items="${productListFeature}" var="product">
                <div class="slider-item">
                    <div class="product-block product-thumb transition">

                        <div class="product-block-inner ">
                            <div class="image">
                                <a href="products?action=detail&id=${product.getProductId()}">
                                    <img    style="width: 224px;height: 240px;  "
                                            src="/img/${product.getImage()}"
                                            alt="${product.getImage()}" class="img-responsive"/>
                                </a>
                                <span class="saleicon sale">Sale</span>
                            </div>

                            <div class="caption">
                                <h4>
                                    <a href="">
                                        <c:out value="${product.getProductName()}"></c:out>
                                    </a>
                                </h4>
                                <div class="hover_block">
                                    <div class="actions">
                                        <button type="button" onclick="cart.add('${product.getProductId()}')"><span
                                                class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                        <button class="wishlist_button" type="button" data-toggle="tooltip"
                                                title="Add to Wish List"
                                                onclick="wishlist.add('${product.getProductId()}');"></button>
                                        <button class="compare_button" type="button" data-toggle="tooltip"
                                                title="Add to Compare"
                                                onclick="compare.add('${product.getProductId()}')"></button>
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
                                <span class="price-old">

                                    </span><span class="price-new">
                                    <c:out value="${product.getPrice()}">VNĐ</c:out>
                               </span>
                                </p>
                                <div class="res-cartbtn">
                                    <button type="button" onclick="cart.add('${product.getProductId()}')"><span
                                            class="hidden-xs hidden-sm hidden-md">Add to Cart</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>
<span class="featured_default_width" style="display:none; visibility:hidden"></span>

<div class="container">
    <div class="row">
        <div id="content" class="col-sm-12">
            <div id="banner0" class="banner hb-animate-element right-to-left">

                <div><a href="#"><img
                        src="https://opencart.templatemela.com/OPC08/OPC080182/image/cache/catalog/cms_banner-1050x148.jpg"
                        alt="Subbanner" class="img-responsive"/></a></div>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#banner0 div:first-child').css('display', 'block');
                });

                var banner = function () {
                    $('#banner0').cycle({
                        before: function (current, next) {
                            $(next).parent().height($(next).outerHeight());
                        }
                    });
                }

                setTimeout(banner, 2000);
            </script>

            <div class="hometab">
                <div id="tabs" class="htabs">
                    <ul class='etabs'>
                        <li class='tab'>
                            <a href="#tab-latest">Products</a>
                        </li>
                    </ul>
                </div>

                <div id="tab-latest" class="tab-content">
                    <div class="box">
                        <div class="box-content">
                            <div class="customNavigation">
                                <a class="btn prev">&nbsp;</a>
                                <a class="btn next">&nbsp;</a>
                            </div>

                            <div class="box-product product-carousel" id="tablatest-carousel">
                                <c:forEach items="${productList}" var="product">
                                    <div class="slider-item">
                                        <div class="product-block product-thumb transition">
                                            <div class="product-block-inner">
                                                <div class="image">
                                                    <a href="">
                                                        <img    style="width: 224px;height: 240px;  "
                                                                src="/img/${product.getImage()}"
                                                                alt="${product.getImage()}" class="img-responsive"/>
                                                    </a>
                                                </div>
                                                <div class="caption">
                                                    <h4>
                                                        <a href="products?action=detail&id=${product.getProductId()}"> <c:out value="${product.getProductName()}"></c:out>
                                                        </a>
                                                    </h4>
                                                    <div class="hover_block">
                                                        <div class="actions">
                                                            <button type="button" onclick="cart.add('${product.getProductId()}');"><span
                                                                    class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                            </button>
                                                            <button class="wishlist_button" type="button"
                                                                    data-toggle="tooltip" title="Add to Wish List"
                                                                    onclick="wishlist.add('${product.getProductId()}');"></button>
                                                            <button class="compare_button" type="button"
                                                                    data-toggle="tooltip" title="Add to Compare"
                                                                    onclick="compare.add('${product.getProductId()}');"></button>
                                                            <div class="rating">
                                                            <span class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-1x"></i><i
                                                                    class="fa fa-star fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="fa fa-star fa-stack-1x"></i><i
                                                                        class="fa fa-star fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="fa fa-star fa-stack-1x"></i><i
                                                                        class="fa fa-star fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="fa fa-star fa-stack-1x"></i><i
                                                                        class="fa fa-star fa-stack-1x"></i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="fa fa-star fa-stack-1x"></i><i
                                                                        class="fa fa-star fa-stack-1x"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <p class="price"><c:out value="${product.getPrice()}">VNĐ</c:out>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>
                                                    <div class="res-cartbtn">
                                                        <button type="button" onclick="cart.add('${product.getProductId()}');"><span
                                                                class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <span class="tablatest_default_width" style="display:none; visibility:hidden"></span>
                </div>

            </div>

            <script type="text/javascript">
                $('#tabs a').tabs();
            </script>

            <div>
                <div class="testimonials-container " id="testimonial">
                    <div class="box-heading"><h3>Latest News</h3></div>
                    <div class="homepage-testimonials-inner products block_content">
                        <div class="products product-carousel" id="testimonial-carousel">
                            <div class="slider-item">
                                <div class="blog1">
                                    <div class="img">
                                        <div class="img_inner"><a href="#"><img alt=""
                                                                                src="../assets/images/products/product1.jpg"></a>
                                        </div>
                                    </div>
                                    <div class="content-wrapper">
                                        <div class="title"><a href="#">The Standard chunk ipspum sodales vestibulum</a>
                                        </div>
                                        <div class="desc">Vestibulum ante ipsum primis urna risus suscipit leo Cras eget
                                            augue vitae neque euismod congue quis non erat.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="slider-item">
                                <div class="blog1">
                                    <div class="img">
                                        <div class="img_inner"><a href="#"><img alt=""
                                                                                src="../assets/images/products/product1.jpg"></a>
                                        </div>
                                    </div>
                                    <div class="content-wrapper">
                                        <div class="title"><a href="#">The Standard chunk ipspum sodales vestibulum</a>
                                        </div>
                                        <div class="desc">Vestibulum ante ipsum primis urna risus suscipit leo Cras eget
                                            augue vitae neque euismod congue quis non erat.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="slider-item">
                                <div class="blog1">
                                    <div class="img">
                                        <div class="img_inner"><a href="#"><img alt=""
                                                                                src="../assets/images/products/product1.jpg"></a>
                                        </div>
                                    </div>
                                    <div class="content-wrapper">
                                        <div class="title"><a href="#">The Standard chunk ipspum sodales vestibulum</a>
                                        </div>
                                        <div class="desc">Vestibulum ante ipsum primis urna risus suscipit leo Cras eget
                                            augue vitae neque euismod congue quis non erat.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="customNavigation"><a class="btn prev">&nbsp;</a> <a class="btn next">&nbsp;</a>
                        </div>
                    </div>
                    <div class="testimonial_default_width" style="display: none; visibility: hidden;">&nbsp;</div>
                </div>
            </div>

            <span class="module_default_width" style="display:none; visibility:hidden"></span></div>
    </div>
</div>

<jsp:include page="../layouts/footer.jsp"></jsp:include>
</body>
</html>
