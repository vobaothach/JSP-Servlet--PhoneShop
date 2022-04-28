<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<!--  This source code is exported from pxCode, you can get more document from https://www.pxcode.io  -->

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <link rel="stylesheet" type="text/css" href="/register/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/register/css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="/register/css/main.css" />

    <script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script type="text/javascript" src="https://unpkg.com/headroom.js@0.12.0/dist/headroom.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/px2code/posize/build/v1.00.js"></script>
</head>

<body style="display: flex">
    <div style="background-image:url(/register/assets/f878e9b8f60a1ec6bbbd16b09cf5122a.jpeg); background-size: cover;" class="sign-in sign-in-group layout">
        <px-posize x="400fr 41.43% 400fr" y="293fr minmax(0px, max-content) 293fr" xs-x="200fr 58.59% 200fr" xs-y="293fr minmax(0px, max-content) 293fr" xxs-x="10fr 96.59% 10fr" xxs-y="293fr minmax(0px, max-content) 293fr">
            <div class="sign-in-flex">
                <form class="sign-in-flex-item" method="post">
                    <c:if test="${not empty response && not empty response.message}">
                        <script>
                            var message = "${response.message}";
                            alert(message);
                        </script>
                        <c:if test="${response.httpStatus == 'OK'}">
                            <script>
                                location.href = '/login';
                            </script>
                        </c:if>
                    </c:if>
                    <div class="sign-in-box5 layout">
                        <div onclick="location.href = '/home'; return false;" href="/home" id="home">&#8592;
                        </div>
                    </div>
                    <div class="sign-in-flex1 layout">
                        <h1 class="sign-in-big-title layout">Register</h1>
                        <div class="sign-in-box2 layout">
                            <input type="text" class="input-text" id="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <div class="sign-in-box2 layout1">
                            <input type="password" class="input-text" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <div class="sign-in-box2 layout1">
                            <input type="text" class="input-text" id="name" name="name" placeholder="Enter your name" required>
                        </div>
                        <div class="sign-in-box2 layout1">
                            <input type="text" class="input-text" id="address" name="address" placeholder="Enter your address" required>
                        </div>
                        <div class="sign-in-box2 layout1">
                            <input type="number" class="input-text" id="phone" name="phone" placeholder="Enter your phone" required>
                        </div>
                        <div class="sign-in-box3 layout">
                            <button type="submit" id="sign-in-btn">Register</button>
                        </div>
                    </div>
                    <div class="sign-in-box4 layout">
                        <a href="/login" id="login">Login</a>
                    </div>
                </form>
                <div class="sign-in-flex-item1">
                    <article class="sign-in-content-box layout">
                        <h1 class="sign-in-big-title1 layout">Welcome</h1>
                        <h4 class="sign-in-highlights layout">
                            To keep connected with us please register with your personal info
                        </h4>
                    </article>
                </div>
            </div>
        </px-posize>
    </div>
    <script type="text/javascript">
        AOS.init();
    </script>
</body>

</html>