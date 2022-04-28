<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html class='v2' dir='ltr' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b'
      xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>

<head>
    <meta charset='utf-8'/>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'/>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
    <title>Phone Shop</title>
    <link href='http://domain.com/favicon.ico' rel='icon' type='image/x-icon'/>
    <link rel="stylesheet" href="/product-detail/style.css"/>
</head>

<body id='a-mobile-store' ontouchstart=''>
<div class='bg_mmenu'>
    <div class='page'>
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
                                                    <div class="post-header">
                                                        <div class="post-header-line-1"></div>
                                                    </div>
                                                    <div class="post-body entry-content"
                                                         id="post-body-5808806946946444966" itemprop="articleBody">
                                                        <div id="summary5808806946946444966">
                                                            <div id="product__view"
                                                                 class="product__view col-xs-12 clearfix simpleCart_shelfItem">
                                                                <div class="row">
                                                                    <a id="thumb" class="item_thumb" href=""
                                                                       style="display:none"><img
                                                                            src="https://lh4.googleusercontent.com/-TnNeMmYPyk8/WLzuIGOEScI/AAAAAAAACjs/yeWUnGpqGbAhZ1TOi7RHj0lSrkT8ywrAACLcB/s1600/1.png"></a>
                                                                    <div class="product__view__image col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                                                        <div class="product__view__image--list">
                                                                            <div class="bx-wrapper"
                                                                                 style="max-width: 100%;">
                                                                                <div class="bx-viewport"
                                                                                     style="width: 100%; overflow: hidden; position: relative; height: 400px;">
                                                                                    <ul class="bxslider"
                                                                                        style="width: 615%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
                                                                                        <li style="float: left; list-style: none; position: relative; width: 458px;">
                                                                                            <img class="cloudzoom"
                                                                                                 id="zoom1"
                                                                                                 src="${product.imgSource}"
                                                                                                 alt=" Ip 5 64G"
                                                                                                 style="user-select: none;">
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                                <div class="bx-controls bx-has-controls-direction">
                                                                                    <div class="bx-controls-direction">

                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div style="margin: 0 -7px">
                                                                                <div id="bx-pager"
                                                                                     class="bx-pager owl-carousel owl-theme"
                                                                                     style="opacity: 1; display: block;">
                                                                                    <div class="owl-wrapper-outer">

                                                                                    </div>
                                                                                    <div class="owl-controls clickable"
                                                                                         style="display: none;">
                                                                                        <div class="owl-buttons">
                                                                                            <div class="owl-prev">
                                                                                            </div>
                                                                                            <div class="owl-next">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clear"></div>
                                                                    </div>
                                                                    <div class="product__view__content col-lg-7 col-md-7 col-sm-12 col-xs-12"
                                                                         itemprop="offers" itemscope=""
                                                                         itemtype="http://schema.org/AggregateOffer">
                                                                        <div class="product__view__name">
                                                                            <h1 class="item_name">${product.name}</h1>
                                                                        </div>
                                                                        <div class="product__view__price">
                                                                            <div class="price-box">
                                                                                <p class="product__view__price--special">
                                                                                    <span class="price-label">Price</span><span
                                                                                        class="price item_price">
                                                                                            <fmt:formatNumber
                                                                                                    value="${product.price}"
                                                                                                    minFractionDigits="0"
                                                                                                    maxFractionDigits="0"/> VND</span>
                                                                                </p>
                                                                            </div>
                                                                        </div>

                                                                        <div class="product__view__content--product-description">
                                                                            <h4>Description: </h4>
                                                                            ${product.description}
                                                                        </div>
                                                                        <div class="product__view__content--actions  clearfix">
                                                                            <div id="add-to-cart-form">
                                                                                <form class="actions-qty" method="post" action="/add-to-cart"><label
                                                                                        for="qty">Quantity</label><input
                                                                                        type="number"
                                                                                        class="input-text qtyDetail item_quantity"
                                                                                        title="Qty" value="1" min="1"
                                                                                        maxlength="12" id="qtyDetail"
                                                                                        name="quantity">
                                                                                    <div class="actions-qty__button">
                                                                                        <input type="hidden" name="link" value="/product-detail?id=${product.id}">
                                                                                        <input type="hidden" name="id" value="${product.id}">
                                                                                        <button class="button btn-cart add_to_cart_detail detail-button item_add"
                                                                                                title="Add to cart"
                                                                                                aria-label="Add to cart"
                                                                                                id="s1"><span><i
                                                                                                class="fa fa-shopping-cart"
                                                                                                aria-hidden="true"></i>Add
                                                                                                    to
                                                                                                    cart</span></button>

                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                        </div>


                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="product__content col-xs-12 clearfix">

                                                            </div>
                                                        </div>
                                                        <div style="clear: both;"></div>
                                                    </div>
                                                    <div class="clear"></div>

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
                                    </div>
                                    <div class="post-feeds">
                                    </div>
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
<script src="/product-detail/main.js"></script>
<script async='async' src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'
        type='text/javascript'></script>
<script src='//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53b643a9486d818e' type='text/javascript'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    var url = new URL(window.location.href);
    if (url.searchParams.get('message') != null)
        alert(url.searchParams.get('message'));


</script>
</body>

</html>