<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html class='v2' dir='ltr' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b'
      xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>

<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'/>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
    <title>Phone Shop</title>
    <link href='http://domain.com/favicon.ico' rel='icon' type='image/x-icon'/>
    <link rel="stylesheet" href="/product/style.css"/>

</head>

<body id='a-mobile-store' ontouchstart=''>
<div class='bg_mmenu'>
    <div class='page'>
        <div id="header-container">
            <%@include file="/common/header/header.jsp" %>
        </div>

        <!-- Product-->
        <section class='product-hot' id='product-hot'>
            <div class="container">
                <div class="home__title product-hot__title">
                    <h2>PRODUCT</h2>
                </div>
                <div id="product-container">
                    <div class="product-home__slide" id="product-home__slide">
                        <c:forEach items="${products}" var="product">
                            <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 webbog-product-padding simpleCart_shelfItem">
                                <div class="product-item__grid">
                                    <div class="product-item__thumb">
                                        <a href="/product-detail?id=${product.id}"><img
                                                class="item_thumb" src="${product.imgSource}"
                                                alt="${product.name}"></a>
                                        <div class="product-item__actions hidden-xs"><a
                                                href="/product-detail?id=${product.id}">
                                            <button
                                                    data-handle="blackberry-passport" class="button quick-view">Detail
                                            </button>
                                        </a>
                                            <form class="variants" id="product-actions-4726077" action="/add-to-cart" method="post">
                                                <input type="hidden" name="link" value="/product">
                                                <input type="hidden" name="quantity" value="1">
                                                <input type="hidden" name="id" value="${product.id}">
                                                <button class="button btn-cart add_to_cart item_add"
                                                        aria-label="Add to cart"
                                                        title="Add to cart" id="s5"><span>Add to cart</span></button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="product-item__content">
                                        <h3 class="product-item__title"><a
                                                href="/product-detail?id=${product.id}"
                                                class="item_name">${product.name}</a></h3>
                                        <div class="product-item__price">
                                            <p class="product-item__price__old"><span></span></p>
                                            <p class="product-item1__price__regular item_price">
                                                <fmt:formatNumber
                                                    value="${product.price}"
                                                    minFractionDigits="0"
                                                    maxFractionDigits="0"/> VND</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>

        <div id="pagination">
            <button class="pagination-control" id="prev"><</button>
            <input value="${page}" class="pagination-control" id="page" type="text" readonly/>
            <button class="pagination-control" id="next">></button>
        </div>

        <!-- Footer-->
        <footer class="footer footer-bg-section" id="footer">
            <%@include file="/common/footer/footer.jsp" %>
        </footer>
    </div>
</div>
</body>
<script src="/product/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    var url_string = window.location.href;
    var url = new URL(url_string);

    $('#next').click(next);
    function next() {
        var page = ${page};
        var limit = ${limit};
        window.location.href =
            'http://' + window.location.host + window.location.pathname + '?page=' + (parseInt(page) + 1) + '&limit=' + limit;
    }

    $('#prev').click(prev);

    function prev() {
        var page = ${page};
        var limit = ${limit};
        window.location.href =
            'http://' + window.location.host + window.location.pathname + '?page=' + (parseInt(page) - 1) + '&limit=' + limit;
    }
</script>
<script>
    var url = new URL(window.location.href);
    if (url.searchParams.get('message') != null)
        alert(url.searchParams.get('message'));
</script>
<style>
    #pagination {
        display: grid;
        grid-template-columns: repeat(3, 22px);
        justify-content: center;
    }

    .pagination-control {
        text-align: center;
        border: 1px solid #acacac;
    }
</style>

</html>