<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Cartzilla | Food Delivery Service</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Cartzilla - Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/dist/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/dist/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/dist/favicon-16x16.png">
    <link rel="manifest" href="${pageContext.request.contextPath}/resources/dist/site.webmanifest">
    <link rel="mask-icon" color="#fe6a6a" href="${pageContext.request.contextPath}/resources/dist/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/dist/vendor/simplebar/dist/simplebar.min.css"/>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/dist/vendor/tiny-slider/dist/tiny-slider.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/dist/css/theme.min.css">
</head>
<!-- Body-->
<body class="handheld-toolbar-enabled">
<!-- Sign in / sign up modal-->
<div class="modal fade" id="signin-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-secondary">
                <ul class="nav nav-tabs card-header-tabs" role="tablist">
                    <li class="nav-item"><a class="nav-link fw-medium active" href="${pageContext.request.contextPath}/resources/dist/#signin-tab" data-bs-toggle="tab" role="tab" aria-selected="true"><i class="ci-unlocked me-2 mt-n1"></i>Sign in</a></li>
                    <li class="nav-item"><a class="nav-link fw-medium" href="${pageContext.request.contextPath}/resources/dist/#signup-tab" data-bs-toggle="tab" role="tab" aria-selected="false"><i class="ci-user me-2 mt-n1"></i>Sign up</a></li>
                </ul>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body tab-content py-4">
                <form class="needs-validation tab-pane fade show active" autocomplete="off" novalidate id="signin-tab">
                    <div class="mb-3">
                        <label class="form-label" for="si-email">Email address</label>
                        <input class="form-control" type="email" id="si-email" placeholder="johndoe@example.com" required>
                        <div class="invalid-feedback">Please provide a valid email address.</div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="si-password">Password</label>
                        <div class="password-toggle">
                            <input class="form-control" type="password" id="si-password" required>
                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                            </label>
                        </div>
                    </div>
                    <div class="mb-3 d-flex flex-wrap justify-content-between">
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="checkbox" id="si-remember">
                            <label class="form-check-label" for="si-remember">Remember me</label>
                        </div><a class="fs-sm" href="${pageContext.request.contextPath}/resources/dist/#">Forgot password?</a>
                    </div>
                    <button class="btn btn-primary btn-shadow d-block w-100" type="submit">Sign in</button>
                </form>
                <form class="needs-validation tab-pane fade" autocomplete="off" novalidate id="signup-tab">
                    <div class="mb-3">
                        <label class="form-label" for="su-name">Full name</label>
                        <input class="form-control" type="text" id="su-name" placeholder="John Doe" required>
                        <div class="invalid-feedback">Please fill in your name.</div>
                    </div>
                    <div class="mb-3">
                        <label for="su-email">Email address</label>
                        <input class="form-control" type="email" id="su-email" placeholder="johndoe@example.com" required>
                        <div class="invalid-feedback">Please provide a valid email address.</div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="su-password">Password</label>
                        <div class="password-toggle">
                            <input class="form-control" type="password" id="su-password" required>
                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                            </label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="su-password-confirm">Confirm password</label>
                        <div class="password-toggle">
                            <input class="form-control" type="password" id="su-password-confirm" required>
                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                            </label>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-shadow d-block w-100" type="submit">Sign up</button>
                </form>
            </div>
        </div>
    </div>
</div>
<main class="page-wrapper">
    <!-- Navbar for Food Delivery Service demo-->
    <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
    <header class="navbar d-block navbar-sticky navbar-expand-lg navbar-light bg-light">
        <div class="container"><a class="navbar-brand d-none d-sm-block me-4 order-lg-1" href="${pageContext.request.contextPath}/resources/dist/index.html"><img src="${pageContext.request.contextPath}/resources/dist/img/logo-dark.png" width="142" alt="Cartzilla"></a><a class="navbar-brand d-sm-none me-2 order-lg-1" href="${pageContext.request.contextPath}/resources/dist/index.html"><img src="${pageContext.request.contextPath}/resources/dist/img/logo-icon.png" width="74" alt="Cartzilla"></a>
            <div class="navbar-toolbar d-flex align-items-center order-lg-3">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"><span class="navbar-toggler-icon"></span></button><a class="navbar-tool d-none d-lg-flex" href="${pageContext.request.contextPath}/resources/dist/javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#searchBox" role="button" aria-expanded="false" aria-controls="searchBox"><span class="navbar-tool-tooltip">Search</span>
                <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-search"></i></div></a><a class="navbar-tool ms-2" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="modal"><span class="navbar-tool-tooltip">Account</span>
                <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-user"></i></div></a>
            </div>
            <div class="collapse navbar-collapse me-auto order-lg-2" id="navbarCollapse">
                <!-- Search (mobile)-->
                <div class="d-lg-none py-3">
                    <div class="input-group"><i class="ci-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                        <input class="form-control rounded-start" type="text" placeholder="What do you need?">
                    </div>
                </div>
                <!-- Location dropdown-->
                <ul class="navbar-nav navbar-mega-nav ms-lg-4 pe-lg-2 me-lg-2">
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle ps-lg-0" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">일러스트</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/#">인기 카테고리</a></li>

                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/dist/#">가격</a></li>
                </ul>
                <!-- Primary menu-->
                <ul class="navbar-nav">

                </ul>
            </div>
        </div>
        <!-- Search collapse-->
        <div class="search-box collapse" id="searchBox">
            <div class="container py-2">
                <div class="input-group"><i class="ci-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                    <input class="form-control rounded-start" type="text" placeholder="What do you need?">
                </div>
            </div>
        </div>
    </header>
    <!-- Hero section-->
    <section class="bg-darker bg-size-cover bg-position-center py-5 py-lg-10" style="background-image: url(img/istock/%EC%88%B2.jpg);">
        <div class="container pb-5">
            <div class="row justify-content-center pb-5">
                <div class="col-xl-6 col-lg-7 col-md-8 col-sm-10 text-center">
                    <h5 class="text-light fw-light">로열티프리 일러스트와 벡터로 이야기를 만드러 보세요</h5>
                    <div class="h1 text-light mb-3 pb-4">스톡 일러스트와 벡터는 사진보다 더욱 효과적으로 이야기하고자 하는 내용을 전달할 수 있습니다.

                    </div><a class="btn btn-primary" href="${pageContext.request.contextPath}/resources/dist/#cuisine" data-scroll>요금제 및 가격 보기</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories (cuisine) grid-->
    <section class="container py-4 my-lg-3 py-sm-5" id="cuisine">
        <h2 class="text-center pt-4 pt-sm-3">현재 가장 트랜디한 카테고리</h2>
        <p class="text-muted text-center mb-5">Choose what you want and we give it to you</p>
        <div class="row">
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/템플릿.PNG" alt="Burgers &amp; Fries">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">템플릿</h3>
                </div></a></div>
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/%EC%95%84%EC%9D%B4%EC%BD%98.PNG" alt="Noodles">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">아이콘</h3>
                </div></a></div>
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/%EB%B0%B0%EA%B2%BD.PNG" alt="Sushi &amp; Rolls">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">배경</h3>
                </div></a></div>
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/%ED%8A%B9%EB%B3%84%ED%96%89%EC%82%AC.PNG" alt="Pizza &amp; Pasta">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">특별 행사</h3>
                </div></a></div>
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/%EC%9E%90%EC%97%B0%EB%B0%8F%ED%92%8D%EA%B2%BD.PNG" alt="Coffee &amp; Desserts">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">자연 및 풍경</h3>
                </div></a></div>
            <div class="col-md-4 col-sm-6 mb-grid-gutter"><a class="card border-0 shadow" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/dist/img/istock/%EC%95%A0%EC%99%84%EB%8F%99%EB%AC%BC%EB%B0%8F%EB%8F%99%EB%AC%BC.PNG" alt="Healthy &amp; Food">
                <div class="card-body py-4 text-center">
                    <h3 class="h5 mt-1">애완동물 및 동물</h3>
                </div></a></div>
        </div>
    </section>




</main>
<!-- Footer-->
<footer class="footer bg-darker pt-5">
    <div class="container pt-2">
        <div class="row pb-2">
            <div class="col-lg-2 col-sm-4 pb-2 mb-4">
                <div class="mt-n1"><a class="d-inline-block align-middle" href="${pageContext.request.contextPath}/resources/dist/#"><img class="d-block mb-4" src="${pageContext.request.contextPath}/resources/dist/img/footer-logo-light.png" width="117" alt="Cartzilla"></a></div>

            </div>
            <div class="col-lg-2 col-sm-4">
                <div class="widget widget-links widget-light pb-2 mb-4">
                    <h3 class="widget-title text-light">Join us</h3>
                    <ul class="widget-list">
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Careers</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Restaurants</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Become a Courier</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">About</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-sm-4">
                <div class="widget widget-links widget-light pb-2 mb-4">
                    <h3 class="widget-title text-light">Let us help you</h3>
                    <ul class="widget-list">
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Help Center</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Support</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Contacts</a></li>
                    </ul>
                </div>
            </div>


        </div>
        <hr class="hr-light mt-md-2 mb-3">
        <div class="d-md-flex justify-content-between pt-4 pb-1">
            <div class="pb-4 fs-xs text-light opacity-50 text-center text-md-start">© All rights reserved. Made by <a class="text-light" href="${pageContext.request.contextPath}/resources/dist/https://createx.studio/" target="_blank" rel="noopener">hanmin oh</a></div>
            <div class="widget widget-links widget-light pb-4">
                <ul class="widget-list d-flex flex-wrap justify-content-center justify-content-md-start">
                    <li class="widget-list-item ms-4"><a class="widget-list-link fs-ms" href="${pageContext.request.contextPath}/resources/dist/#">Privacy Policy</a></li>
                    <li class="widget-list-item ms-4"><a class="widget-list-link fs-ms" href="${pageContext.request.contextPath}/resources/dist/#">Terms &amp; Conditions</a></li>
                    <li class="widget-list-item ms-4"><a class="widget-list-link fs-ms" href="${pageContext.request.contextPath}/resources/dist/#">Cookies Policy</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Toolbar for handheld devices (Food delivery)-->
<div class="handheld-toolbar">
    <div class="d-table table-layout-fixed w-100"><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/#signin-modal" data-bs-toggle="modal"><span class="handheld-toolbar-icon"><i class="ci-user"></i></span><span class="handheld-toolbar-label">Account</span></a><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" onclick="window.scrollTo(0, 0)"><span class="handheld-toolbar-icon"><i class="ci-menu"></i></span><span class="handheld-toolbar-label">Menu</span></a><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/food-delivery-cart.html"><span class="handheld-toolbar-icon"><i class="ci-cart"></i><span class="badge bg-primary rounded-pill ms-1">3</span></span><span class="handheld-toolbar-label">$24.00</span></a></div>
</div>
<!-- Back To Top Button--><a class="btn-scroll-top" href="${pageContext.request.contextPath}/resources/dist/#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="${pageContext.request.contextPath}/resources/dist/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/vendor/simplebar/dist/simplebar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="${pageContext.request.contextPath}/resources/dist/js/theme.min.js"></script>
</body>
</html>