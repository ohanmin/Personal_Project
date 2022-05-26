<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Cartzilla | Password Recovery</title>
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
    <!-- Navbar 3 Level (Light)-->
    <header class="shadow-sm">
        <!-- Topbar-->
        <div class="topbar topbar-dark bg-dark">
            <div class="container">
                <div class="topbar-text dropdown d-md-none"><a class="topbar-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Useful links</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/tel:00331697720"><i class="ci-support text-muted me-2"></i>(00) 33 169 7720</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/order-tracking.html"><i class="ci-location text-muted me-2"></i>Order tracking</a></li>
                    </ul>
                </div>
                <div class="topbar-text text-nowrap d-none d-md-inline-block"><i class="ci-support"></i><span class="text-muted me-1">Support</span><a class="topbar-link" href="${pageContext.request.contextPath}/resources/dist/tel:00331697720">(00) 33 169 7720</a></div>
                <div class="tns-carousel tns-controls-static d-none d-md-block">
                    <div class="tns-carousel-inner" data-carousel-options="{&quot;mode&quot;: &quot;gallery&quot;, &quot;nav&quot;: false}">
                        <div class="topbar-text">Free shipping for order over $200</div>
                        <div class="topbar-text">We return money within 30 days</div>
                        <div class="topbar-text">Friendly 24/7 customer support</div>
                    </div>
                </div>
                <div class="ms-3 text-nowrap"><a class="topbar-link me-4 d-none d-md-inline-block" href="${pageContext.request.contextPath}/resources/dist/order-tracking.html"><i class="ci-location"></i>Order tracking</a>
                    <div class="topbar-text dropdown disable-autohide"><a class="topbar-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/en.png" width="20" alt="English">Eng / $</a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li class="dropdown-item">
                                <select class="form-select form-select-sm">
                                    <option value="usd">$ USD</option>
                                    <option value="eur">€ EUR</option>
                                    <option value="ukp">£ UKP</option>
                                    <option value="jpy">¥ JPY</option>
                                </select>
                            </li>
                            <li><a class="dropdown-item pb-1" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/fr.png" width="20" alt="Français">Français</a></li>
                            <li><a class="dropdown-item pb-1" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/de.png" width="20" alt="Deutsch">Deutsch</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/it.png" width="20" alt="Italiano">Italiano</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
        <div class="navbar-sticky bg-light">
            <div class="navbar navbar-expand-lg navbar-light">
                <div class="container"><a class="navbar-brand d-none d-sm-block flex-shrink-0" href="${pageContext.request.contextPath}/resources/dist/index.html"><img src="${pageContext.request.contextPath}/resources/dist/img/logo-dark.png" width="142" alt="Cartzilla"></a><a class="navbar-brand d-sm-none flex-shrink-0 me-2" href="${pageContext.request.contextPath}/resources/dist/index.html"><img src="${pageContext.request.contextPath}/resources/dist/img/logo-icon.png" width="74" alt="Cartzilla"></a>
                    <div class="input-group d-none d-lg-flex mx-4">
                        <input class="form-control rounded-end pe-5" type="text" placeholder="Search for products"><i class="ci-search position-absolute top-50 end-0 translate-middle-y text-muted fs-base me-3"></i>
                    </div>
                    <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"><span class="navbar-toggler-icon"></span></button><a class="navbar-tool navbar-stuck-toggler" href="${pageContext.request.contextPath}/resources/dist/#"><span class="navbar-tool-tooltip">Expand menu</span>
                        <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-menu"></i></div></a><a class="navbar-tool d-none d-lg-flex" href="${pageContext.request.contextPath}/resources/dist/account-wishlist.html"><span class="navbar-tool-tooltip">Wishlist</span>
                        <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-heart"></i></div></a><a class="navbar-tool ms-1 ms-lg-0 me-n1 me-lg-2" href="${pageContext.request.contextPath}/resources/dist/#signin-modal" data-bs-toggle="modal">
                        <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-user"></i></div>
                        <div class="navbar-tool-text ms-n3"><small>Hello, Sign in</small>My Account</div></a>
                        <div class="navbar-tool dropdown ms-3"><a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/shop-cart.html"><span class="navbar-tool-label">4</span><i class="navbar-tool-icon ci-cart"></i></a><a class="navbar-tool-text" href="${pageContext.request.contextPath}/resources/dist/shop-cart.html"><small>My Cart</small>$265.00</a>
                            <!-- Cart dropdown-->
                            <div class="dropdown-menu dropdown-menu-end">
                                <div class="widget widget-cart px-3 pt-2 pb-3" style="width: 20rem;">
                                    <div style="height: 15rem;" data-simplebar data-simplebar-auto-hide="false">
                                        <div class="widget-cart-item pb-2 border-bottom">
                                            <button class="btn-close text-danger" type="button" aria-label="Remove"><span aria-hidden="true">&times;</span></button>
                                            <div class="d-flex align-items-center"><a class="flex-shrink-0" href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/cart/widget/01.jpg" width="64" alt="Product"></a>
                                                <div class="ps-2">
                                                    <h6 class="widget-product-title"><a href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html">Women Colorblock Sneakers</a></h6>
                                                    <div class="widget-product-meta"><span class="text-accent me-2">$150.<small>00</small></span><span class="text-muted">x 1</span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-cart-item py-2 border-bottom">
                                            <button class="btn-close text-danger" type="button" aria-label="Remove"><span aria-hidden="true">&times;</span></button>
                                            <div class="d-flex align-items-center"><a class="flex-shrink-0" href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/cart/widget/02.jpg" width="64" alt="Product"></a>
                                                <div class="ps-2">
                                                    <h6 class="widget-product-title"><a href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html">TH Jeans City Backpack</a></h6>
                                                    <div class="widget-product-meta"><span class="text-accent me-2">$79.<small>50</small></span><span class="text-muted">x 1</span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-cart-item py-2 border-bottom">
                                            <button class="btn-close text-danger" type="button" aria-label="Remove"><span aria-hidden="true">&times;</span></button>
                                            <div class="d-flex align-items-center"><a class="flex-shrink-0" href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/cart/widget/03.jpg" width="64" alt="Product"></a>
                                                <div class="ps-2">
                                                    <h6 class="widget-product-title"><a href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html">3-Color Sun Stash Hat</a></h6>
                                                    <div class="widget-product-meta"><span class="text-accent me-2">$22.<small>50</small></span><span class="text-muted">x 1</span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="widget-cart-item py-2 border-bottom">
                                            <button class="btn-close text-danger" type="button" aria-label="Remove"><span aria-hidden="true">&times;</span></button>
                                            <div class="d-flex align-items-center"><a class="flex-shrink-0" href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/cart/widget/04.jpg" width="64" alt="Product"></a>
                                                <div class="ps-2">
                                                    <h6 class="widget-product-title"><a href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html">Cotton Polo Regular Fit</a></h6>
                                                    <div class="widget-product-meta"><span class="text-accent me-2">$9.<small>00</small></span><span class="text-muted">x 1</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-wrap justify-content-between align-items-center py-3">
                                        <div class="fs-sm me-2 py-2"><span class="text-muted">Subtotal:</span><span class="text-accent fs-base ms-1">$265.<small>00</small></span></div><a class="btn btn-outline-secondary btn-sm" href="${pageContext.request.contextPath}/resources/dist/shop-cart.html">Expand cart<i class="ci-arrow-right ms-1 me-n1"></i></a>
                                    </div><a class="btn btn-primary btn-sm d-block w-100" href="${pageContext.request.contextPath}/resources/dist/checkout-details.html"><i class="ci-card me-2 fs-base align-middle"></i>Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
                <div class="container">
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <!-- Search-->
                        <div class="input-group d-lg-none my-3"><i class="ci-search position-absolute top-50 start-0 translate-middle-y text-muted fs-base ms-3"></i>
                            <input class="form-control rounded-start" type="text" placeholder="Search for products">
                        </div>
                        <!-- Departments menu-->
                        <ul class="navbar-nav navbar-mega-nav pe-lg-2 me-lg-2">
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle ps-lg-0" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown"><i class="ci-view-grid me-2"></i>Departments</a>
                                <div class="dropdown-menu px-2 pb-4">
                                    <div class="d-flex flex-wrap flex-sm-nowrap">
                                        <div class="mega-dropdown-column pt-3 pt-sm-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/01.jpg" alt="Clothing"></a>
                                                <h6 class="fs-base mb-2">Clothing</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Women's clothing</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Men's clothing</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Kid's clothing</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/02.jpg" alt="Shoes"></a>
                                                <h6 class="fs-base mb-2">Shoes</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Women's shoes</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Men's shoes</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Kid's shoes</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/03.jpg" alt="Gadgets"></a>
                                                <h6 class="fs-base mb-2">Gadgets</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Smartphones &amp; Tablets</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Wearable gadgets</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">E-book readers</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-wrap flex-sm-nowrap">
                                        <div class="mega-dropdown-column pt-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/04.jpg" alt="Furniture"></a>
                                                <h6 class="fs-base mb-2">Furniture &amp; Decor</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Home furniture</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Office furniture</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Lighting and decoration</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/05.jpg" alt="Accessories"></a>
                                                <h6 class="fs-base mb-2">Accessories</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Hats</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Sunglasses</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Bags</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-4 px-2 px-lg-3">
                                            <div class="widget widget-links"><a class="d-block overflow-hidden rounded-3 mb-3" href="${pageContext.request.contextPath}/resources/dist/#"><img src="${pageContext.request.contextPath}/resources/dist/img/shop/departments/06.jpg" alt="Entertainment"></a>
                                                <h6 class="fs-base mb-2">Entertainment</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Kid's toys</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Video games</a></li>
                                                    <li class="widget-list-item mb-1"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Outdoor / Camping</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <!-- Primary menu-->
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Home</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item border-bottom py-2" href="${pageContext.request.contextPath}/resources/dist/home-nft.html"><span class="d-block text-heading">NFT Marketplace<span class="badge bg-danger ms-1">NEW</span></span><small class="d-block text-muted">NFTs, Multi-vendor, Auctions</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-nft.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th08.jpg" alt="NFT Marketplace"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-fashion-store-v1.html"><span class="d-block text-heading">Fashion Store v.1</span><small class="d-block text-muted">Classic shop layout</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-fashion-store-v1.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th01.jpg" alt="Fashion Store v.1"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-electronics-store.html"><span class="d-block text-heading">Electronics Store</span><small class="d-block text-muted">Slider + Promo banners</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-electronics-store.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th03.jpg" alt="Electronics Store"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-marketplace.html"><span class="d-block text-heading">Marketplace</span><small class="d-block text-muted">Multi-vendor, digital goods</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-marketplace.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th04.jpg" alt="Marketplace"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-grocery-store.html"><span class="d-block text-heading">Grocery Store</span><small class="d-block text-muted">Full width + Side menu</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-grocery-store.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th06.jpg" alt="Grocery Store"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-food-delivery.html"><span class="d-block text-heading">Food Delivery Service</span><small class="d-block text-muted">Food &amp; Beverages delivery</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-food-delivery.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th07.jpg" alt="Food Delivery Service"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2 border-bottom" href="${pageContext.request.contextPath}/resources/dist/home-fashion-store-v2.html"><span class="d-block text-heading">Fashion Store v.2</span><small class="d-block text-muted">Slider + Featured categories</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-fashion-store-v2.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th02.jpg" alt="Fashion Store v.2"></a></div>
                                    </li>
                                    <li class="dropdown position-static mb-0"><a class="dropdown-item py-2" href="${pageContext.request.contextPath}/resources/dist/home-single-store.html"><span class="d-block text-heading">Single Product Store</span><small class="d-block text-muted">Single product / mono brand</small></a>
                                        <div class="dropdown-menu h-100 animation-none mt-0 p-3"><a class="d-block" href="${pageContext.request.contextPath}/resources/dist/home-single-store.html" style="width: 250px;"><img src="${pageContext.request.contextPath}/resources/dist/img/home/preview/th05.jpg" alt="Single Product / Brand Store"></a></div>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Shop</a>
                                <div class="dropdown-menu p-0">
                                    <div class="d-flex flex-wrap flex-sm-nowrap px-2">
                                        <div class="mega-dropdown-column pt-1 pt-lg-4 pb-4 px-2 px-lg-3">
                                            <div class="widget widget-links mb-4">
                                                <h6 class="fs-base mb-3">Shop layouts</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-grid-ls.html">Shop Grid - Left Sidebar</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-grid-rs.html">Shop Grid - Right Sidebar</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-grid-ft.html">Shop Grid - Filters on Top</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-list-ls.html">Shop List - Left Sidebar</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-list-rs.html">Shop List - Right Sidebar</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-list-ft.html">Shop List - Filters on Top</a></li>
                                                </ul>
                                            </div>
                                            <div class="widget widget-links mb-4">
                                                <h6 class="fs-base mb-3">Marketplace</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/marketplace-category.html">Category Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/marketplace-single.html">Single Item Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/marketplace-vendor.html">Vendor Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/marketplace-cart.html">Cart</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/marketplace-checkout.html">Checkout</a></li>
                                                </ul>
                                            </div>
                                            <div class="widget widget-links">
                                                <h6 class="fs-base mb-3">Grocery store</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/grocery-catalog.html">Product Catalog</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/grocery-single.html">Single Product Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/grocery-checkout.html">Checkout</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-1 pt-lg-4 pb-4 px-2 px-lg-3">
                                            <div class="widget widget-links mb-4">
                                                <h6 class="fs-base mb-3">Food Delivery</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/food-delivery-category.html">Category Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/food-delivery-single.html">Single Item (Restaurant)</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/food-delivery-cart.html">Cart (Your Order)</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/food-delivery-checkout.html">Checkout (Address &amp; Payment)</a></li>
                                                </ul>
                                            </div>
                                            <div class="widget widget-links">
                                                <h6 class="fs-base mb-3">NFT Marketplace<span class="badge bg-danger ms-1">NEW</span></h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-catalog-v1.html">Catalog v.1</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-catalog-v2.html">Catalog v.2</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-single-auction-live.html">Single Item - Auction Live</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-single-auction-ended.html">Single Item - Auction Ended</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-single-buy.html">Single Item - Buy Now</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-vendor.html">Vendor Page</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-connect-wallet.html">Connect Wallet</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/nft-create-item.html">Create New Item</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mega-dropdown-column pt-1 pt-lg-4 px-2 px-lg-3">
                                            <div class="widget widget-links mb-4">
                                                <h6 class="fs-base mb-3">Shop pages</h6>
                                                <ul class="widget-list">
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-categories.html">Shop Categories</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-single-v1.html">Product Page v.1</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-single-v2.html">Product Page v.2</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/shop-cart.html">Cart</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/checkout-details.html">Checkout - Details</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/checkout-shipping.html">Checkout - Shipping</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/checkout-payment.html">Checkout - Payment</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/checkout-review.html">Checkout - Review</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/checkout-complete.html">Checkout - Complete</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/order-tracking.html">Order Tracking</a></li>
                                                    <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/comparison.html">Product Comparison</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown" data-bs-auto-close="outside">Account</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Shop User Account</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-orders.html">Orders History</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-profile.html">Profile Settings</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-address.html">Account Addresses</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-payment.html">Payment Methods</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-wishlist.html">Wishlist</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-tickets.html">My Tickets</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-single-ticket.html">Single Ticket</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Vendor Dashboard</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-settings.html">Settings</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-purchases.html">Purchases</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-favorites.html">Favorites</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-sales.html">Sales</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-products.html">Products</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-add-new-product.html">Add New Product</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/dashboard-payouts.html">Payouts</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">NFT Marketplace<span class="badge bg-danger ms-1">NEW</span></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-settings.html">Profile Settings</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-payouts.html">Wallet &amp; Payouts</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-my-items.html">My Items</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-my-collections.html">My Collections</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-favorites.html">Favorites</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/nft-account-notifications.html">Notifications</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-signin.html">Sign In / Sign Up</a></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/account-password-recovery.html">Password Recovery</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown" data-bs-auto-close="outside">Pages</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Navbar Variants</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-1-level-light.html">1 Level Light</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-1-level-dark.html">1 Level Dark</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-2-level-light.html">2 Level Light</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-2-level-dark.html">2 Level Dark</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-3-level-light.html">3 Level Light</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/navbar-3-level-dark.html">3 Level Dark</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/home-electronics-store.html">Electronics Store</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/home-marketplace.html">Marketplace</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/home-grocery-store.html">Side Menu (Grocery)</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/about.html">About Us</a></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/contacts.html">Contacts</a></li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Help Center</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/help-topics.html">Help Topics</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/help-single-topic.html">Single Topic</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/help-submit-request.html">Submit a Request</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">404 Not Found</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/404-simple.html">404 - Simple Text</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/404-illustration.html">404 - Illustration</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/sticky-footer.html">Sticky Footer Demo</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown" data-bs-auto-close="outside">Blog</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Blog List Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-list-sidebar.html">List with Sidebar</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-list.html">List no Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Blog Grid Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-grid-sidebar.html">Grid with Sidebar</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-grid.html">Grid no Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Single Post Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-single-sidebar.html">Article with Sidebar</a></li>
                                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/blog-single.html">Article no Sidebar</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/resources/dist/#" data-bs-toggle="dropdown">Docs / Components</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/docs/dev-setup.html">
                                        <div class="d-flex">
                                            <div class="lead text-muted pt-1"><i class="ci-book"></i></div>
                                            <div class="ms-2"><span class="d-block text-heading">Documentation</span><small class="d-block text-muted">Kick-start customization</small></div>
                                        </div></a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/components/typography.html">
                                        <div class="d-flex">
                                            <div class="lead text-muted pt-1"><i class="ci-server"></i></div>
                                            <div class="ms-2"><span class="d-block text-heading">Components<span class="badge bg-info ms-2">40+</span></span><small class="d-block text-muted">Faster page building</small></div>
                                        </div></a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/docs/changelog.html">
                                        <div class="d-flex">
                                            <div class="lead text-muted pt-1"><i class="ci-edit"></i></div>
                                            <div class="ms-2"><span class="d-block text-heading">Changelog<span class="badge bg-success ms-2">v2.4.0</span></span><small class="d-block text-muted">Regular updates</small></div>
                                        </div></a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/mailto:support@createx.studio">
                                        <div class="d-flex">
                                            <div class="lead text-muted pt-1"><i class="ci-help"></i></div>
                                            <div class="ms-2"><span class="d-block text-heading">Support</span><small class="d-block text-muted">support@createx.studio</small></div>
                                        </div></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="container py-4 py-lg-5 my-4">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <h2 class="h3 mb-4">비밀번호를 잊어 버렸습니까?</h2>
                <p class="fs-md">간단한 세 단계로 비밀번호를 변경하세요. 이렇게 하면 새 암호를 안전하게 유지하는 데 도움이 됩니다.</p>
                <ol class="list-unstyled fs-md">
                    <li><span class="text-primary me-2">1.</span>아래 이메일 주소를 입력하세요.</li>
                    <li><span class="text-primary me-2">2.</span>임시 코드를 이메일로 보내드립니다.</li>
                    <li><span class="text-primary me-2">3.</span>코드를 사용하여 보안 웹사이트에서 비밀번호를 변경합니다.</li>
                </ol>
                <div class="card py-2 mt-4">
                    <form class="card-body needs-validation" novalidate>
                        <div class="mb-3">
                            <label class="form-label" for="recover-email">Enter your email address</label>
                            <input class="form-control" type="email" id="recover-email" required>
                            <div class="invalid-feedback">이메일을 입력하세요</div>
                        </div>
                        <button class="btn btn-primary" type="submit">임시 비밀번호 발송</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Footer-->
<footer class="footer bg-dark pt-5">
    <div class="container">
        <div class="row pb-2">
            <div class="col-md-4 col-sm-6">
                <div class="widget widget-links widget-light pb-2 mb-4">
                    <h3 class="widget-title text-light">Shop departments</h3>
                    <ul class="widget-list">
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Sneakers &amp; Athletic</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Athletic Apparel</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Sandals</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Jeans</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Shirts &amp; Tops</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Shorts</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">T-Shirts</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Swimwear</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Clogs &amp; Mules</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Bags &amp; Wallets</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Accessories</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Sunglasses &amp; Eyewear</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Watches</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="widget widget-links widget-light pb-2 mb-4">
                    <h3 class="widget-title text-light">Account &amp; shipping info</h3>
                    <ul class="widget-list">
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Your account</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Shipping rates &amp; policies</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Refunds &amp; replacements</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Order tracking</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Delivery info</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Taxes &amp; fees</a></li>
                    </ul>
                </div>
                <div class="widget widget-links widget-light pb-2 mb-4">
                    <h3 class="widget-title text-light">About us</h3>
                    <ul class="widget-list">
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">About company</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Our team</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Careers</a></li>
                        <li class="widget-list-item"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">News</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget pb-2 mb-4">
                    <h3 class="widget-title text-light pb-1">Stay informed</h3>
                    <form class="subscription-form validate" action="https://studio.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;amp;id=29ca296126" method="post" name="mc-embedded-subscribe-form" target="_blank" novalidate>
                        <div class="input-group flex-nowrap"><i class="ci-mail position-absolute top-50 translate-middle-y text-muted fs-base ms-3"></i>
                            <input class="form-control rounded-start" type="email" name="EMAIL" placeholder="Your email" required>
                            <button class="btn btn-primary" type="submit" name="subscribe">Subscribe*</button>
                        </div>
                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                        <div style="position: absolute; left: -5000px;" aria-hidden="true">
                            <input class="subscription-form-antispam" type="text" name="b_c7103e2c981361a6639545bd5_29ca296126" tabindex="-1">
                        </div>
                        <div class="form-text text-light opacity-50">*Subscribe to our newsletter to receive early discount offers, updates and new products info.</div>
                        <div class="subscription-status"></div>
                    </form>
                </div>
                <div class="widget pb-2 mb-4">
                    <h3 class="widget-title text-light pb-1">Download our app</h3>
                    <div class="d-flex flex-wrap">
                        <div class="me-2 mb-2"><a class="btn-market btn-apple" href="${pageContext.request.contextPath}/resources/dist/#" role="button"><span class="btn-market-subtitle">Download on the</span><span class="btn-market-title">App Store</span></a></div>
                        <div class="mb-2"><a class="btn-market btn-google" href="${pageContext.request.contextPath}/resources/dist/#" role="button"><span class="btn-market-subtitle">Download on the</span><span class="btn-market-title">Google Play</span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pt-5 bg-darker">
        <div class="container">
            <div class="row pb-3">
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="d-flex"><i class="ci-rocket text-primary" style="font-size: 2.25rem;"></i>
                        <div class="ps-3">
                            <h6 class="fs-base text-light mb-1">Fast and free delivery</h6>
                            <p class="mb-0 fs-ms text-light opacity-50">Free delivery for all orders over $200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="d-flex"><i class="ci-currency-exchange text-primary" style="font-size: 2.25rem;"></i>
                        <div class="ps-3">
                            <h6 class="fs-base text-light mb-1">Money back guarantee</h6>
                            <p class="mb-0 fs-ms text-light opacity-50">We return money within 30 days</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="d-flex"><i class="ci-support text-primary" style="font-size: 2.25rem;"></i>
                        <div class="ps-3">
                            <h6 class="fs-base text-light mb-1">24/7 customer support</h6>
                            <p class="mb-0 fs-ms text-light opacity-50">Friendly 24/7 customer support</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="d-flex"><i class="ci-card text-primary" style="font-size: 2.25rem;"></i>
                        <div class="ps-3">
                            <h6 class="fs-base text-light mb-1">Secure online payment</h6>
                            <p class="mb-0 fs-ms text-light opacity-50">We possess SSL / Secure сertificate</p>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="hr-light mb-5">
            <div class="row pb-2">
                <div class="col-md-6 text-center text-md-start mb-4">
                    <div class="text-nowrap mb-4"><a class="d-inline-block align-middle mt-n1 me-3" href="${pageContext.request.contextPath}/resources/dist/#"><img class="d-block" src="${pageContext.request.contextPath}/resources/dist/img/footer-logo-light.png" width="117" alt="Cartzilla"></a>
                        <div class="btn-group dropdown disable-autohide">
                            <button class="btn btn-outline-light border-light btn-sm dropdown-toggle px-2" type="button" data-bs-toggle="dropdown"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/en.png" width="20" alt="English">Eng / $</button>
                            <ul class="dropdown-menu my-1">
                                <li class="dropdown-item">
                                    <select class="form-select form-select-sm">
                                        <option value="usd">$ USD</option>
                                        <option value="eur">€ EUR</option>
                                        <option value="ukp">£ UKP</option>
                                        <option value="jpy">¥ JPY</option>
                                    </select>
                                </li>
                                <li><a class="dropdown-item pb-1" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/fr.png" width="20" alt="Français">Français</a></li>
                                <li><a class="dropdown-item pb-1" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/de.png" width="20" alt="Deutsch">Deutsch</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/resources/dist/#"><img class="me-2" src="${pageContext.request.contextPath}/resources/dist/img/flags/it.png" width="20" alt="Italiano">Italiano</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget widget-links widget-light">
                        <ul class="widget-list d-flex flex-wrap justify-content-center justify-content-md-start">
                            <li class="widget-list-item me-4"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Outlets</a></li>
                            <li class="widget-list-item me-4"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Affiliates</a></li>
                            <li class="widget-list-item me-4"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Support</a></li>
                            <li class="widget-list-item me-4"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Privacy</a></li>
                            <li class="widget-list-item me-4"><a class="widget-list-link" href="${pageContext.request.contextPath}/resources/dist/#">Terms of use</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 text-center text-md-end mb-4">
                    <div class="mb-3"><a class="btn-social bs-light bs-twitter ms-2 mb-2" href="${pageContext.request.contextPath}/resources/dist/#"><i class="ci-twitter"></i></a><a class="btn-social bs-light bs-facebook ms-2 mb-2" href="${pageContext.request.contextPath}/resources/dist/#"><i class="ci-facebook"></i></a><a class="btn-social bs-light bs-instagram ms-2 mb-2" href="${pageContext.request.contextPath}/resources/dist/#"><i class="ci-instagram"></i></a><a class="btn-social bs-light bs-pinterest ms-2 mb-2" href="${pageContext.request.contextPath}/resources/dist/#"><i class="ci-pinterest"></i></a><a class="btn-social bs-light bs-youtube ms-2 mb-2" href="${pageContext.request.contextPath}/resources/dist/#"><i class="ci-youtube"></i></a></div><img class="d-inline-block" src="${pageContext.request.contextPath}/resources/dist/img/cards-alt.png" width="187" alt="Payment methods">
                </div>
            </div>
            <div class="pb-4 fs-xs text-light opacity-50 text-center text-md-start">© All rights reserved. Made by <a class="text-light" href="${pageContext.request.contextPath}/resources/dist/https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></div>
        </div>
    </div>
</footer>
<!-- Toolbar for handheld devices (Default)-->
<div class="handheld-toolbar">
    <div class="d-table table-layout-fixed w-100"><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/account-wishlist.html"><span class="handheld-toolbar-icon"><i class="ci-heart"></i></span><span class="handheld-toolbar-label">Wishlist</span></a><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" onclick="window.scrollTo(0, 0)"><span class="handheld-toolbar-icon"><i class="ci-menu"></i></span><span class="handheld-toolbar-label">Menu</span></a><a class="d-table-cell handheld-toolbar-item" href="${pageContext.request.contextPath}/resources/dist/shop-cart.html"><span class="handheld-toolbar-icon"><i class="ci-cart"></i><span class="badge bg-primary rounded-pill ms-1">4</span></span><span class="handheld-toolbar-label">$265.00</span></a></div>
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