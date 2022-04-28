<%@include file="/common/taglib.jsp" %>
<html class="v2" dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:b="http://www.google.com/2005/gml/b"
      xmlns:data="http://www.google.com/2005/gml/data" xmlns:expr="http://www.google.com/2005/gml/expr">

<head>
    <meta charset='utf-8'/>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'/>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
    <title>Phone Shop</title>
    <link href='http://domain.com/favicon.ico' rel='icon' type='image/x-icon'/>
    <link rel="stylesheet" href="/customer/cart/style.css"/>

    <script type="text/javascript" charset="utf-8" async=""
            src="https://s7.addthis.com/static/layers.fa6cd1947ce26e890d3d.js"></script>
</head>

<body id="a-mobile-store" ontouchstart="" data-new-gr-c-s-check-loaded="14.1043.0" data-gr-ext-installed="">
<div class="bg_mmenu">
    <div class="page">
        <!-- Header -->
        <div id="header-container">
            <%@include file="/common/header/header.jsp" %>
        </div>

        <div class="product-detail clearfix webblog" itemtype="http://schema.org/Product">
            <section class="product">
                <div class="container">
                    <div class="row">
                        <div class="main section" id="main">
                            <div class="widget Blog" data-version="1" id="Blog1">
                                <div class="blog-posts hfeed">
                                    <!--Can't find substitution for tag [defaultAdStart]-->

                                    <div class="date-outer">


                                        <div class="date-posts">

                                            <div class="post-outer">
                                                <div class="post hentry uncustomized-post-template"
                                                     itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
                                                    <a name="954707019439802603"></a>
                                                    <div class="general__title">
                                                        <h1 class="post-title entry-title" itemprop="name">
                                                            <a href="http://amobiledemo.blogspot.com/p/cart.html">Cart</a>
                                                        </h1>
                                                    </div>
                                                    <div class="post-header">
                                                        <div class="post-header-line-1"></div>
                                                    </div>
                                                    <div class="post-body entry-content"
                                                         id="post-body-954707019439802603" itemprop="articleBody">

                                                        <div class="hoangthien-cart-sale cart"
                                                             id="hoangthien-cart-sale">
                                                            <!-- cart-hoangthien-sale-mobile-->
                                                            <div class="general__title cart--title">
                                                                <h1><span>Cart</span></h1>
                                                            </div>
                                                            <div class="bg-cart-page">
                                                                <div class="row">
                                                                    <div class="col-md-8 col-sm-12 col-xs-12">
                                                                        <div class="bg-scroll-webblog">
                                                                            <div class="cart-thead-webblog hidden-xs">
                                                                                <div style="width: 17%">Image
                                                                                </div>
                                                                                <div style="width: 33%"><span
                                                                                        class="nobr">Name</span>
                                                                                </div>
                                                                                <div style="width: 15%" class="a-right">
                                                                                    <span class="nobr">Price</span>
                                                                                </div>
                                                                                <div style="width: 14%"
                                                                                     class="a-center">Quantity
                                                                                </div>
                                                                                <div style="width: 15%"
                                                                                     class="a-center">Subtotal
                                                                                </div>
                                                                                <div style="width: 6%"></div>
                                                                            </div>
                                                                            <div class="cart-tbody-webblog">
                                                                                <c:if test="${not empty order}">
                                                                                    <c:forEach
                                                                                            items="${order.orderItems}"
                                                                                            var="orderItem">
                                                                                        <div class="cart-item">
                                                                                            <div class="cart-item-container">
                                                                                                <div class="cart-item thumb"
                                                                                                     id="${orderItem.id}">
                                                                                                    <img src="${orderItem.product.imgSource}">
                                                                                                </div>
                                                                                                <div class="cart-item name">
                                                                                                    <span class="item-name"
                                                                                                          id="product-id-${orderItem.product.id}">${orderItem.product.name}</span>
                                                                                                </div>
                                                                                                <div class="cart-item price"
                                                                                                     id="price-${orderItem.product.id}"><fmt:formatNumber
                                                                                                        value="${orderItem.product.price}"
                                                                                                        minFractionDigits="0"
                                                                                                        maxFractionDigits="0"/>

                                                                                                    VND
                                                                                                </div>
                                                                                                <div class="cart-item quantity-group">
                                                                                                    <div class="quantity-group-item decrement">
                                                                                                        <div class="quantity-group-item decrement btn"
                                                                                                             onclick="decreaseQty(${orderItem.product.id})">
                                                                                                            -
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="quantity-group-item quantity"
                                                                                                         id="quantity-${orderItem.product.id}">
                                                                                                            ${orderItem.quantity}
                                                                                                    </div>
                                                                                                    <div class="quantity-group-item increment">
                                                                                                        <div class="quantity-group-item increment btn"
                                                                                                             onclick="increaseQty(${orderItem.product.id})">
                                                                                                            +
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="cart-item total"
                                                                                                     id="subtotal-${orderItem.product.id}">
                                                                                                    <fmt:formatNumber
                                                                                                            value="${orderItem.subtotal}"
                                                                                                            minFractionDigits="0"
                                                                                                            maxFractionDigits="0"/>
                                                                                                    VND
                                                                                                </div>
                                                                                                <form class="cart-item remove"
                                                                                                      method="post"
                                                                                                      action="order-item">
                                                                                                    <input type="hidden"
                                                                                                           name="action"
                                                                                                           value="remove">
                                                                                                    <input type="hidden"
                                                                                                           name="id"
                                                                                                           value="${orderItem.id}">
                                                                                                    <button class="cart-item remove btn"
                                                                                                            onclick="return confirm('Are you sure?')">
                                                                                                        X
                                                                                                    </button>
                                                                                                </form>
                                                                                            </div>
                                                                                        </div>
                                                                                    </c:forEach>
                                                                                </c:if>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cart-collaterals col-md-4 col-sm-12 col-xs-12">
                                                                        <div id="sticky-wrapper" class="sticky-wrapper"
                                                                             style="height: 190px;">
                                                                            <div class="totals">
                                                                                <div class="inner">
                                                                                    <table class="table shopping-cart-table-total"
                                                                                           id="shopping-cart-totals-table">
                                                                                        <tfoot>
                                                                                        <tr>
                                                                                            <td colspan="1"
                                                                                                class="a-left">
                                                                                                <strong>Total</strong>
                                                                                            </td>
                                                                                            <td class="a-right">
                                                                                                <strong><span
                                                                                                        class="price"
                                                                                                        style="float: right;">
                                                                                                    <span class="simpleCart_finalTotal"
                                                                                                          id="total">0 VND</span>
                                                                                                </span></strong>
                                                                                            </td>
                                                                                        </tr>
                                                                                        </tfoot>
                                                                                    </table>
                                                                                    <ul class="checkout">
                                                                                        <c:if test="${not empty order && not empty order.orderItems[0]}">
                                                                                            <li>
                                                                                                <form method="post">
                                                                                                    <input type="hidden"
                                                                                                           name="orderItemIds"
                                                                                                           id="input-order-item-ids"
                                                                                                           value="">
                                                                                                    <input type="hidden"
                                                                                                           name="quantities"
                                                                                                           id="input-product-quantities"
                                                                                                           value="">
                                                                                                    <input type="hidden"
                                                                                                           name="action"
                                                                                                           value="update-cart">
                                                                                                    <button class="button btn-proceed-checkout"
                                                                                                            aria-label="Check out"
                                                                                                            title="Check out"
                                                                                                            type="submit"
                                                                                                            onclick="return checkout()">
                                                                                                    <span>
                                                                                                        Check out
                                                                                                    </span>
                                                                                                    </button>
                                                                                                </form>
                                                                                            </li>
                                                                                        </c:if>
                                                                                        <li>
                                                                                            <button class="button btn-continue"
                                                                                                    aria-label="Continue shopping"
                                                                                                    title="Continue shopping"
                                                                                                    type="button"
                                                                                                    onclick="location.href = '/product'"><span><span>
                                                                                                            Continue
                                                                                                            shopping</span></span>
                                                                                            </button>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div style="clear: both;"></div>
                                                    </div>
                                                    <div class="post-footer">
                                                        <div class="post-footer-line post-footer-line-1">
                                                        </div>
                                                        <div class="post-footer-line post-footer-line-2">
                                                        </div>
                                                        <div class="post-footer-line post-footer-line-3">
                                                                <span class="post-location">
                                                                </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comments" id="comments">
                                                    <a name="comments"></a>
                                                    <div class="comments-content">
                                                        <div id="comment-holder">
                                                            <!--Can't find substitution for tag [post.commentHtml]-->
                                                        </div>
                                                    </div>
                                                    <p class="comment-footer">
                                                        <!--Can't find substitution for tag [post.noNewCommentsText]-->
                                                    </p>
                                                    <div id="backlinks-container">
                                                        <div id="Blog1_backlinks-container">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <!--Can't find substitution for tag [adEnd]-->
                                </div>
                                <div class="blog-feeds">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Footer-->
        <footer class="footer footer-bg-section" id="footer">
            <%@include file="/common/footer/footer.jsp" %>
        </footer>
    </div>
</div>
<script src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53b643a9486d818e" type="text/javascript"></script>
<div id="_atssh"
     style="visibility: hidden; height: 1px; width: 1px; position: absolute; top: -9999px; z-index: 100000;">
    <iframe id="_atssh226" title="AddThis utility frame"
            style="height: 1px; width: 1px; position: absolute; top: 0px; z-index: 100000; border: 0px; left: 0px;"
            src="https://s7.addthis.com/static/sh.f48a1a04fe8dbf021b4cda1d.html#rand=0.9359294033430023&amp;iit=1641784607719&amp;tmr=load%3D1641784607606%26core%3D1641784607670%26main%3D1641784607711%26ifr%3D1641784607724&amp;cb=0&amp;cdn=0&amp;md=0&amp;kw=Cart%2CA!%20mobile%20-%20Demo%3A%20Cart%2CA!%20mobile%20-%20Demo&amp;ab=-&amp;dh=amobiledemo.blogspot.com&amp;dr=http%3A%2F%2Famobiledemo.blogspot.com%2F2017%2F03%2Fip-5-64g.html&amp;du=http%3A%2F%2Famobiledemo.blogspot.com%2Fp%2Fcart.html&amp;href=http%3A%2F%2Famobiledemo.blogspot.com%2Fp%2Fcart.html&amp;dt=Cart&amp;dbg=0&amp;cap=tc%3D0%26ab%3D0&amp;inst=1&amp;jsl=1&amp;prod=true&amp;lng=en&amp;ogt=&amp;pc=men&amp;pub=ra-53b643a9486d818e&amp;ssl=0&amp;sid=61dba51f83899e8a&amp;srf=0.01&amp;ver=300&amp;xck=0&amp;xtr=0&amp;og=&amp;csi=undefined&amp;rev=v8.28.8-wp&amp;ct=1&amp;xld=1&amp;xd=1"></iframe>
</div>

<script src="/customer/cart/main.js"></script>
<script async='async' src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'
        type='text/javascript'></script>
<script src='//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53b643a9486d818e' type='text/javascript'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    .cart-item-container {
        border: 1px solid #e7e7e7;
        display: grid;
        grid-template-columns: 16% 35% 13% 16% 13% 7%;
    }

    .cart-item.quantity-group {
        display: grid;
        grid-template-columns: 33% 33% 33%;
    }

    .cart-item {
        border-right: 1px solid;
        border-color: rgb(212, 212, 212);
    }

    .cart-item.name {
        font-weight: bold;
    }

    .cart-item.price,
    .cart-item.total {
        color: rgb(185, 111, 0);
    }

    .cart-item.total {
        font-weight: bold;
        color: rgb(185, 111, 0);
    }

    .cart-item.remove.btn {
        background-color: rgb(255, 0, 0);
        border: none;
        width: 85%;
        border-radius: 2px;
    }

    .quantity-group-item.decrement {
        text-align: right;
        cursor: pointer;
    }

    .quantity-group-item.increment {
        text-align: left;
        cursor: pointer;
    }

    .quantity-group-item.increment.btn,
    .quantity-group-item.decrement.btn {
        margin: 0;
        padding: 0px 6px;
        border: 1px solid;
        border-radius: 0px;
        border-color: #cbcbcb;
    }

    @media only screen and (max-width: 768px) {
        .cart-item.price {
            display: none;
        }

        .cart-item-container {
            grid-template-columns: 16% 35% 13% 23% 13%;
        }
    }
</style>
</body>

</html>