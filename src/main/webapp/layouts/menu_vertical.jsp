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
      <a href="../auth/login.jsp"
         class="list-group-item">Login</a>
      <a href="../auth/register.jsp"
         class="list-group-item">Register</a>
      <a href="../auth/forgot_password.jsp"
         class="list-group-item">Forgotten Password</a>
      <a href="../profile/my_account.jsp"
         class="list-group-item">My Account</a>
      <a href="../profile/address_book.jsp"
         class="list-group-item">Address Books</a>
      <a href="../wishlist.jsp"
         class="list-group-item">Wish List</a>
      <a href="../order_history.jsp"
         class="list-group-item">Order History</a>
    </div>
  </div>
  <div class="box">
    <div class="box-heading">Bestsellers</div>
    <div class="box-content">
      <div class="box-product productbox-grid" id="bestseller-grid">

        <%--  Do item cho nay--%>
        <div class="product-items">
          <div class="product-block product-thumb transition">
            <div class="product-block-inner ">
              <div class="image">
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img
                        src="../../assets/images/products/product1.jpg"
                        alt="Chocomate Raspberry" title="Chocomate Raspberry"
                        class="img-responsive"/></a>
                <span class="saleicon sale">Sale</span>
              </div>
              <div class="caption">
                <h4>
                  <a href="">Chocomate Raspberry</a>
                </h4>
                <div class="hover_block">
                  <div class="actions">
                    <button type="button" onclick="cart.add('40');"><span
                            class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                    </button>
                    <button class="wishlist_button" type="button" data-toggle="tooltip"
                            title="Add to Wish List"
                            onclick="wishlist.add('40');"></button>
                    <button class="compare_button" type="button" data-toggle="tooltip"
                            title="Add to Compare"
                            onclick="compare.add('40');"></button>
                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                                class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                    </div>
                  </div>
                </div>
                <p class="price">
                  <span class="price-old">32.000 VNĐ</span><span
                        class="price-new">28.000 VNĐ</span>
                  <span class="price-tax">Ex Tax: 32.000 VNĐ</span>
                </p>
                <div class="res-cartbtn">
                  <button type="button" onclick="cart.add('40');"><span
                          class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="product-items">
          <div class="product-block product-thumb transition">
            <div class="product-block-inner ">
              <div class="image">
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img
                        src="../../assets/images/products/product1.jpg"
                        alt="Chocomate Raspberry" title="Chocomate Raspberry"
                        class="img-responsive"/></a>
                <span class="saleicon sale">Sale</span>
              </div>
              <div class="caption">
                <h4>
                  <a href="">Chocomate Raspberry</a>
                </h4>
                <div class="hover_block">
                  <div class="actions">
                    <button type="button" onclick="cart.add('40');"><span
                            class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                    </button>
                    <button class="wishlist_button" type="button" data-toggle="tooltip"
                            title="Add to Wish List"
                            onclick="wishlist.add('40');"></button>
                    <button class="compare_button" type="button" data-toggle="tooltip"
                            title="Add to Compare"
                            onclick="compare.add('40');"></button>
                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                                class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                    </div>
                  </div>
                </div>
                <p class="price">
                  <span class="price-old">32.000 VNĐ</span><span
                        class="price-new">28.000 VNĐ</span>
                  <span class="price-tax">Ex Tax: 32.000 VNĐ</span>
                </p>
                <div class="res-cartbtn">
                  <button type="button" onclick="cart.add('40');"><span
                          class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="product-items">
          <div class="product-block product-thumb transition">
            <div class="product-block-inner ">
              <div class="image">
                <a href="https://opencart.templatemela.com/OPC08/OPC080182/index.php?route=product/product&amp;product_id=40"><img
                        src="../../assets/images/products/product1.jpg"
                        alt="Chocomate Raspberry" title="Chocomate Raspberry"
                        class="img-responsive"/></a>
                <span class="saleicon sale">Sale</span>
              </div>
              <div class="caption">
                <h4>
                  <a href="">Chocomate Raspberry</a>
                </h4>
                <div class="hover_block">
                  <div class="actions">
                    <button type="button" onclick="cart.add('40');"><span
                            class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                    </button>
                    <button class="wishlist_button" type="button" data-toggle="tooltip"
                            title="Add to Wish List"
                            onclick="wishlist.add('40');"></button>
                    <button class="compare_button" type="button" data-toggle="tooltip"
                            title="Add to Compare"
                            onclick="compare.add('40');"></button>
                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                                class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                              class="fa fa-star fa-stack-1x"></i></span>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
                    </div>
                  </div>
                </div>
                <p class="price">
                  <span class="price-old">32.000 VNĐ</span><span
                        class="price-new">28.000 VNĐ</span>
                  <span class="price-tax">Ex Tax: 32.000 VNĐ</span>
                </p>
                <div class="res-cartbtn">
                  <button type="button" onclick="cart.add('40');"><span
                          class="hidden-xs hidden-sm hidden-md">Add to Cart</span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <span class="bestseller_default_width" style="display:none; visibility:hidden"></span>
</column>
</body>
</html>
