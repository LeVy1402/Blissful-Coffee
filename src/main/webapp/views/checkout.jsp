<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="checkout-cart layout-2 left-col">
<jsp:include page="../layouts/header.jsp"></jsp:include>
<div class="container">
    <ul class="breadcrumb">
        <li><a href="/dashboards"><i
                class="fa fa-home"></i></a></li>
        <li><a href="cart">Shopping Cart</a>
        </li>
        <li><a href="checkout">Checkout</a>
        </li>
    </ul>
    <div class="row">
        <jsp:include page="/layouts/menu_vertical.jsp"></jsp:include>
        <div id="content" class="col-sm-9"><h1>Checkout</h1>

            <form method="POST" id="frmCreateOrder" action="checkout">
                <input type="hidden" name="action" value="payment">
                <div class="mb-3">
                    <label for="username" class="form-label">Customer name</label>
                    <input type="text" class="form-control" id="username" value="${UserLogin.getFullName()}">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <input type="text" class="form-control" id="address" value="${UserLogin.getAddress()}">
                </div>
                <div class="mb-3">
                    <label for="contact" class="form-label">Contact</label>
                    <input type="text" class="form-control" id="contact" value="${UserLogin.getContact()}">
                </div>
                <div class="mb-3">
                    <label for="payment" class="form-label">Total Payment</label>
                    <input type="text" class="form-control" id="payment" value="${total}">
                </div>

<%--                <div class="form-group">--%>
<%--                    <label for="language">Loại hàng hóa </label>--%>
<%--                    <select name="ordertype" id="ordertype" class="form-control">--%>
<%--                        <option value="topup">Nạp tiền điện thoại</option>--%>
<%--                        <option value="billpayment">Thanh toán hóa đơn</option>--%>
<%--                        <option value="fashion">Thời trang</option>--%>
<%--                    </select>--%>
<%--                </div>--%>

                <h5>Payment method</h5>
                <input type="radio" Checked="True" id="bankCode" name="bankCode" value="">
                <label for="bankCode">Cổng thanh toán VNPAYQR</label><br>

                <input type="radio" Checked="True" id="bankCode" name="bankCode" value="CASH">
                <label for="bankCode">Pay by cash</label><br>

                <input type="radio" id="bankCode" name="bankCode" value="VNPAYQR">
                <label for="bankCode">Thanh toán bằng ứng dụng hỗ trợ VNPAYQR</label><br>

                <input type="radio" id="bankCode" name="bankCode" value="VNBANK">
                <label for="bankCode">Thanh toán qua thẻ ATM/Tài khoản nội địa</label><br>

                <input type="radio" id="bankCode" name="bankCode" value="INTCARD">
                <label for="bankCode">Thanh toán qua thẻ quốc tế</label><br>

                <div class="form-group">
                    <h5>Chọn ngôn ngữ giao diện thanh toán:</h5>
                    <input type="radio" id="language" Checked="True" name="language" value="vn">
                    <label for="language">Tiếng việt</label><br>
                    <input type="radio" id="language" name="language" value="en">
                    <label for="language">Tiếng anh</label><br>
                </div>

                <div class="mb-3">
                    <label for="Note" class="form-label">Note</label>
                    <textarea class="form-control" id="Note"></textarea>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Confirm order</label>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left">Product Name</td>
                            <td class="text-left">Model</td>
                            <td class="text-right">Quantity</td>
                            <td class="text-right">Unit Price</td>
                            <td class="text-right">Total</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderDetailList}" var="orderDetail">
                            <tr>
                                <td class="text-left">
                                    <a
                                        href="products?action=detail&id=${orderDetail.getProduct().getProductId()}">
                                        ${orderDetail.getProduct().getProductName()}
                                    </a>
                                </td>
                                <td class="text-left">Product ${orderDetail.getProduct().getProductId()}</td>
                                <td class="text-right">${orderDetail.getQuantity()}</td>
                                <td class="text-right">${orderDetail.getProduct().getPrice()}00 VNĐ</td>
                                <td class="text-right">${orderDetail.getProduct().getPrice() * orderDetail.getQuantity()}00 VNĐ</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
<%--                        <tr>--%>
<%--                            <td colspan="4" class="text-right"><strong>Sub-Total:</strong></td>--%>
<%--                            <td class="text-right">$2,300.00</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="4" class="text-right"><strong>Flat Shipping Rate:</strong></td>--%>
<%--                            <td class="text-right">$5.00</td>--%>
<%--                        </tr>--%>
                        <tr>
                            <td colspan="4" class="text-right"><strong>Total:</strong></td>
                            <td class="text-right">${total}00 VNĐ</td>
                        </tr>
                        </tfoot>
                    </table>
                </div>

                <input type="hidden" name="total" value="${total}">

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <%--                    <div class="panel-heading">--%>
                    <%--                        <h4 class="panel-title">Step 1: Checkout Options</h4>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="panel-collapse collapse" id="collapse-checkout-option">--%>
                    <%--                        <div class="panel-body"></div>--%>
                    <%--                    </div>--%>
                </div>

            </div>
        </div>
    </div>
</div>

<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
<script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
<script type="text/javascript">
    $("#frmCreateOrder").submit(function () {
        var postData = $("#frmCreateOrder").serialize();
        var submitUrl = $("#frmCreateOrder").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    alert(x.Message);
                }
            }
        });
        return false;
    });
</script>

<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function () {
    if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
        if (this.value == 'register') {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');
        } else {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
        }
    } else {
        if (this.value == 'register') {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Account &amp; Billing Details');
        } else {
            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Billing Details');
        }
    }
});

// $(document).ready(function () {
// $.ajax({
//     url: '/checkout-form/billingDetails.html',
//     dataType: 'html',
//     success: function (html) {
//         $('#collapse-payment-address .panel-body').html(html);
//
//         $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
//
//         $('a[href=\'#collapse-payment-address\']').trigger('click');
//     },
//     error: function (xhr, ajaxOptions, thrownError) {
//         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//     }
// });
// });

// Checkout
$(document).delegate('#button-account', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function () {
            $('#button-account').button('loading');
        },
        complete: function () {
            $('#button-account').button('reset');
        },
        success: function (html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

            if ($('input[name=\'account\']:checked').val() == 'register') {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');
            } else {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
            }

            $('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
// $(document).delegate('#button-login', 'click', function () {
// $.ajax({
//     url: 'index.php?route=checkout/login/save',
//     type: 'post',
//     data: $('#collapse-checkout-option :input'),
//     dataType: 'json',
//     beforeSend: function () {
//         $('#button-login').button('loading');
//     },
//     complete: function () {
//         $('#button-login').button('reset');
//     },
//     success: function (json) {
//         $('.alert, .text-danger').remove();
//         $('.form-group').removeClass('has-error');
//
//         if (json['redirect']) {
//             location = json['redirect'];
//         } else if (json['error']) {
//             $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
//
//             // Highlight any found errors
//             $('input[name=\'email\']').parent().addClass('has-error');
//             $('input[name=\'password\']').parent().addClass('has-error');
//         }
//     },
//     error: function (xhr, ajaxOptions, thrownError) {
//         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//     }
// });
// });

// Register
// $(document).delegate('#button-register', 'click', function () {
// $.ajax({
//     url: 'index.php?route=checkout/register/save',
//     type: 'post',
//     data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
//     dataType: 'json',
//     beforeSend: function () {
//         $('#button-register').button('loading');
//     },
//     complete: function () {
//         $('#button-register').button('reset');
//     },
//     success: function (json) {
//         $('.alert, .text-danger').remove();
//         $('.form-group').removeClass('has-error');
//
//         if (json['redirect']) {
//             location = json['redirect'];
//         } else if (json['error']) {
//             if (json['error']['warning']) {
//                 $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
//             }
//
//             for (i in json['error']) {
//                 var element = $('#input-payment-' + i.replace('_', '-'));
//
//                 if ($(element).parent().hasClass('input-group')) {
//                     $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
//                 } else {
//                     $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
//                 }
//             }
//
//             // Highlight any found errors
//             $('.text-danger').parent().addClass('has-error');
//         } else {
//
//             var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');
//
//             if (shipping_address) {
//                 $.ajax({
//                     url: 'index.php?route=checkout/shipping_method',
//                     dataType: 'html',
//                     success: function (html) {
//                         // Add the shipping address
//                         $.ajax({
//                             url: 'index.php?route=checkout/shipping_address',
//                             dataType: 'html',
//                             success: function (html) {
//                                 $('#collapse-shipping-address .panel-body').html(html);
//
//                                 $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
//                             },
//                             error: function (xhr, ajaxOptions, thrownError) {
//                                 alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//                             }
//                         });
//
//                         $('#collapse-shipping-method .panel-body').html(html);
//
//                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');
//
//                         $('a[href=\'#collapse-shipping-method\']').trigger('click');
//
//                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
//                         $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
//                         $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
//                     },
//                     error: function (xhr, ajaxOptions, thrownError) {
//                         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//                     }
//                 });
//             } else {
//                 $.ajax({
//                     url: 'index.php?route=checkout/shipping_address',
//                     dataType: 'html',
//                     success: function (html) {
//                         $('#collapse-shipping-address .panel-body').html(html);
//
//                         $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
//
//                         $('a[href=\'#collapse-shipping-address\']').trigger('click');
//
//                         $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
//                         $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
//                         $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
//                     },
//                     error: function (xhr, ajaxOptions, thrownError) {
//                         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//                     }
//                 });
//             }
//
//             $.ajax({
//                 url: 'index.php?route=checkout/payment_address',
//                 dataType: 'html',
//                 success: function (html) {
//                     $('#collapse-payment-address .panel-body').html(html);
//
//                     $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');
//                 },
//                 error: function (xhr, ajaxOptions, thrownError) {
//                     alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//                 }
//             });
//         }
//     },
//     error: function (xhr, ajaxOptions, thrownError) {
//         alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//     }
// });
// });

// Payment Address
$(document).delegate('#button-payment-address', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-payment-address').button('loading');
        },
        complete: function () {
            $('#button-payment-address').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-payment-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-address .panel-body').html(html);

                        $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-shipping-address\']').trigger('click');

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Shipping Address
$(document).delegate('#button-shipping-address', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-shipping-address').button('loading');
        },
        complete: function () {
            $('#button-shipping-address').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-shipping-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-method .panel-body').html(html);

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-shipping-method\']').trigger('click');

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function (html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest
$(document).delegate('#button-guest', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-guest').button('loading');
        },
        complete: function () {
            $('#button-guest').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-payment-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().addClass('has-error');
            } else {

                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function (html) {
                            // Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function (html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

                                    $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

                            $('#collapse-shipping-method .panel-body').html(html);

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-method\']').trigger('click');

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        success: function (html) {
                            $('#collapse-shipping-address .panel-body').html(html);

                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-address\']').trigger('click');

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');
                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-guest-shipping').button('loading');
        },
        complete: function () {
            $('#button-guest-shipping').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

                for (i in json['error']) {
                    var element = $('#input-shipping-' + i.replace('_', '-'));

                    if ($(element).parent().hasClass('input-group')) {
                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                    } else {
                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                    }
                }

                // Highlight any found errors
                $('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-shipping-method .panel-body').html(html);

                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i>');

                        $('a[href=\'#collapse-shipping-method\']').trigger('click');

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');
                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-shipping-method', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-shipping-method').button('loading');
        },
        complete: function () {
            $('#button-shipping-method').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-payment-method .panel-body').html(html);

                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 5: Payment Method <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-payment-method\']').trigger('click');

                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-payment-method', 'click', function () {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function () {
            $('#button-payment-method').button('loading');
        },
        complete: function () {
            $('#button-payment-method').button('reset');
        },
        success: function (json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    success: function (html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 6: Confirm Order <i class="fa fa-caret-down"></i></a>');

                        $('a[href=\'#collapse-checkout-confirm\']').trigger('click');
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
//--></script>

<jsp:include page="../layouts/footer.jsp"></jsp:include>
</body>
</html>
