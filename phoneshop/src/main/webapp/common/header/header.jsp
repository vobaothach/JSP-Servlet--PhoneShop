<section class='topbar theme--bg--sliver hidden-xs'>
    <div class='container'>
        <div class='row'>
            <div class='col-md-6 col-sm-6 col-xs-12 topbar__left hidden-xs'>
            </div>
            <div class='col-md-6 col-sm-6 col-xs-12 topbar__right'>
                <div class='topbar__right__menu'>
                    <ul class='menu'>
                        <c:if test="${empty sessionScope.ACCOUNT_SESSION}">
                            <li class='menu__lv1'>
                                <a class='menu__link' href='/login'>
                                    <i aria-hidden='true' class='fa fa-unlock-alt icon'></i> Login <i aria-hidden='true'
                                                                                                      class='fa fa-angle-down'></i>
                                        <%--                                    <i aria-hidden='true' class='fa fa-unlock-alt icon'></i> Hi, ${sessionScope.ACCOUNT_SESSION.name} <i aria-hidden='true' class='fa fa-angle-down'></i>--%>

                                </a>
                            </li>
                            <li class='menu__lv1'>
                                <a class='menu__link' href='register'>
                                    <i aria-hidden='true' class='fa fa-user icon'></i> Register <i aria-hidden='true'
                                                                                                   class='fa fa-angle-down'></i>
                                </a>
                            </li>
                        </c:if>

                        <c:if test="${not empty sessionScope.ACCOUNT_SESSION}">
                            <li class='menu__lv1'>
                                <a class='menu__link' href='#'>
                                    <i aria-hidden='true' class='fa fa-unlock-alt icon'></i>
                                    Hi, ${sessionScope.ACCOUNT_SESSION.name}
                                    <i aria-hidden='true'
                                       class='fa fa-angle-down'></i>

                                </a>
                            </li>
                            <li class='menu__lv1'>
                                <a class='menu__link' href='/logout'>
                                    <i aria-hidden='true' class='fa fa-user icon'>
                                    </i> Log out <i aria-hidden='true' class='fa fa-angle-down'></i>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<header class='header' id='header'>
    <div class='container'>
        <div class='row'>
            <div class='col-md-3 col-sm-3 col-xs-6 header__logo'>
                <a href='/home'>
                    <img id="logo" src='/resources/common/header/logo.png'/>
                </a>
            </div>

            <div class='col-md-6 col-sm-5 col-xs-12 header__search hidden-xs'>
                <form action='/search' method='get'>
                    <input class='input' id='header-search' maxlength='70' name='keyword'
                           placeholder='Enter your keyword' type='text' value='${keyword}'/>
                    <button aria-label='Search' class='button' type='submit'>Search</button>
                </form>
            </div>
        </div>
    </div>
</header>
<nav class='menu' id='nav'>
    <div class='container'>
        <span class='hidden-lg hidden-md hidden-sm header__btn'>
            <a href='#menu'>
                <i class="fas fa-navicon">&#9776;</i>
            </a>
        </span>
        <form action='/search' class='hidden-lg hidden-md hidden-sm' method='get'>
            <label class='hidden' for='search-mobile'>Search</label>
            <input class='input input__search' id='search-mobile' maxlength='70' name='keyword'
                   placeholder='Enter your keyword' type='text' value='${keyword}'/>
            <button aria-label='Search' class='button' type='submit'>
                <i aria-hidden='true' class='fa fa-search'></i>
            </button>
        </form>
        <ul class='menu__list xs'>
            <li class='menu__item'>
                <a class='menu__link' href='/home'>Home</a>
            </li>
            <li class='menu__item'>
                <a class='menu__link' href='/product'>Product</a>
            </li>
            <li class='menu__item'>
                <a class='menu__link' href='/order-history'>Order History</a>
            </li>
            <li class='menu__item'>
                <a class='menu__link' href='/about-us'>About Us</a>
            </li>
        </ul>
        <div class='menu__cart'>
            <a href='/cart'>
                <span class='hidden-xs hidden-sm'>Cart</span>
                <span>
                    <span>
                        <span></span>
                </span>
                <span class='hidden-xs  hidden-sm'>See your cart</span>
                </span>
            </a>
        </div>
    </div>
</nav>
<div class='hidden'>
    <nav id='menu'>
        <ul class='menu__list'>
            <li class='menu__item'>
                <a class='menu__link' href='/'>Home</a>
            </li>
            <li class='menu__item'>
                <a class='menu__link' href='/p/gioi-thieu.html'>Product</a>
            </li>
            <li class='menu__item'>
                <a class='menu__link' href='#LINK'>About Us</a>
            </li>
        </ul>
    </nav>
</div>

<style>
    #nav .menu__cart > a {
        display: block;
        background: url(/resources/common/header/icon-cart.png) no-repeat 20px center #231f20;
        padding: 11px 24px 11px 60px;
        color: #fff;
        max-height: 50px;
        font-size: 12px;
        font-family: Arial;
        line-height: normal
    }
</style>