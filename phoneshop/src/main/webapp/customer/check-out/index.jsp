<%@include file="/common/taglib.jsp" %>
<html class="v2" dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:b="http://www.google.com/2005/gml/b" xmlns:data="http://www.google.com/2005/gml/data" xmlns:expr="http://www.google.com/2005/gml/expr">

<head>
    <meta charset='utf-8' />
    <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport' />
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
    <title>Phone Shop</title>
    <link href='http://domain.com/favicon.ico' rel='icon' type='image/x-icon' />
    <link rel="stylesheet" href="/customer/check-out/style.css" />


    <!-- <link rel="stylesheet" href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" media="all">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,100italic,100,400italic,500,500italic,700,700italic,900&amp;subset=latin,vietnamese,latin-ext" media="all"> -->

    <script type="text/javascript" charset="utf-8" async="" src="https://s7.addthis.com/static/layers.fa6cd1947ce26e890d3d.js"></script>
</head>

<body id="a-mobile-store" ontouchstart="" data-new-gr-c-s-check-loaded="14.1043.0" data-gr-ext-installed="">
    <div class="bg_mmenu">
        <div class="page">
            <!-- Header -->
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
                                                    <div class="post hentry uncustomized-post-template" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
                                                        <a name="954707019439802603"></a>
                                                        <div class="general__title">
                                                            <h1 class="post-title entry-title" itemprop="name">
                                                                <a href="http://amobiledemo.blogspot.com/p/cart.html">Check out</a>
                                                            </h1>
                                                        </div>
                                                        <div class="post-header">
                                                            <div class="post-header-line-1"></div>
                                                        </div>
                                                        <div class="post-body entry-content" id="post-body-954707019439802603" itemprop="articleBody">

                                                            <div class="hoangthien-cart-sale cart" id="hoangthien-cart-sale">
                                                                <!-- cart-hoangthien-sale-mobile-->
                                                                <div class="general__title cart--title">
                                                                    <h1><span>Check out</span></h1>
                                                                </div>
                                                                <div class="bg-cart-page">
                                                                    <form class="check-out-form" method="post">
                                                                        <div class="my-form-control customer-name">
                                                                            <label>Name: </label>
                                                                            <input name="name" type="text" placeholder="Enter your name" value="${sessionScope.ACCOUNT_SESSION.name}" readonly>
                                                                        </div>
                                                                        <div class="my-form-control customer-email">
                                                                            <label>Email: </label>
                                                                            <input name="email" type="text" placeholder="Enter your email" value="${sessionScope.ACCOUNT_SESSION.email}" readonly>
                                                                        </div>
                                                                        <div class="my-form-control customer-phone">
                                                                            <label>Phone: </label>
                                                                            <input name="phone" type="text" placeholder="Enter your phone" value="${sessionScope.ACCOUNT_SESSION.phone}" readonly>
                                                                        </div>
                                                                        <div class="my-form-control customer-address">
                                                                            <label>Shipping address: </label>
                                                                            <textarea name="address" placeholder="Enter your shipping address" value=""></textarea>
                                                                        </div>
                                                                        <div class="my-form-control description">
                                                                            <label>Description: </label>
                                                                            <textarea name="description">This is description</textarea>
                                                                        </div>
                                                                        <div class="my-form-control pay-btn">
                                                                            <button>Pay</button>
                                                                        </div>
                                                                    </form>
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
    <div id="_atssh" style="visibility: hidden; height: 1px; width: 1px; position: absolute; top: -9999px; z-index: 100000;"><iframe id="_atssh226" title="AddThis utility frame" style="height: 1px; width: 1px; position: absolute; top: 0px; z-index: 100000; border: 0px; left: 0px;" src="https://s7.addthis.com/static/sh.f48a1a04fe8dbf021b4cda1d.html#rand=0.9359294033430023&amp;iit=1641784607719&amp;tmr=load%3D1641784607606%26core%3D1641784607670%26main%3D1641784607711%26ifr%3D1641784607724&amp;cb=0&amp;cdn=0&amp;md=0&amp;kw=Cart%2CA!%20mobile%20-%20Demo%3A%20Cart%2CA!%20mobile%20-%20Demo&amp;ab=-&amp;dh=amobiledemo.blogspot.com&amp;dr=http%3A%2F%2Famobiledemo.blogspot.com%2F2017%2F03%2Fip-5-64g.html&amp;du=http%3A%2F%2Famobiledemo.blogspot.com%2Fp%2Fcart.html&amp;href=http%3A%2F%2Famobiledemo.blogspot.com%2Fp%2Fcart.html&amp;dt=Cart&amp;dbg=0&amp;cap=tc%3D0%26ab%3D0&amp;inst=1&amp;jsl=1&amp;prod=true&amp;lng=en&amp;ogt=&amp;pc=men&amp;pub=ra-53b643a9486d818e&amp;ssl=0&amp;sid=61dba51f83899e8a&amp;srf=0.01&amp;ver=300&amp;xck=0&amp;xtr=0&amp;og=&amp;csi=undefined&amp;rev=v8.28.8-wp&amp;ct=1&amp;xld=1&amp;xd=1"></iframe>
    </div>

    <script src="/customer/check-out/main.js"></script>
    <script async='async' src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js' type='text/javascript'></script>
    <script src='//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53b643a9486d818e' type='text/javascript'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%--    <script>--%>
<%--        // load header--%>
<%--        $(function() {--%>
<%--            $("#header-container").load("../common/header/header.html");--%>
<%--        });--%>

<%--        // load footer--%>
<%--        $(function() {--%>
<%--            $("#footer").load("../common/footer/footer.html");--%>
<%--        });--%>
<%--    </script>--%>
</body>

</html>