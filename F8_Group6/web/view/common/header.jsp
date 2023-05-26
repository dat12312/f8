<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : header
    Created on : May 19, 2023, 9:47:01 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <title>F8 - Học lập trình để đi làm</title>
    <!-- F8logo -->
    <link rel="shortcut icon" href="assets/images/logoF8.png">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons -->
    <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/remixicon.css" rel="stylesheet" type="text/css" />
    <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
    <!-- Css -->
    <link href="assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- SLIDER -->
    <link rel="stylesheet" href="assets/css/tiny-slider.css"/>
    <!-- Icons -->
    <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/remixicon.css" rel="stylesheet" type="text/css" />
    <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">

</head>

<body>
    <!-- Header -->
    <header id="topnav" class="defaultscroll sticky">
        <div class="container-fluid">
            <!-- Logo  -->
            <a class="logo" href="home">
                <img style="border-radius: 25%;" src="assets/images/logoF8.png" height="50" width="50" class="logo-light-mode" alt="F8 logo">
                <strong style="color: #000"><strong style="font-size: 13px">Học lập trình để đi làm</strong></strong>
            </a>  
            <!-- Logo End-->

            <!-- Search -->
            <li class="list-inline-item mb-0">
                <div class="subcribe-form mt-4">
                    <form action="/search" method="get">
                        <div class="mb-0">
                            <input type="text" id="help" name="id" class="border bg-white rounded-pill" required="" style="font-size: 12px;" placeholder="Tìm kiếm khóa học,video,...">
                            <button type="submit" class="btn btn-pills btn-primary" style="font-size: 12px;"><a style="font-family: inherit">Tìm kiếm</a></button>
                        </div>
                    </form>
                </div>
            </li>
            <!-- End Search -->

            <!-- Login Home Page Function -->
            <!-- My Course -->
            <ul class="dropdowns list-inline mb-0">
                <li class="list-inline-item mb-0"><a style="font-family: unset" href="#"><p style="color: #000">Khóa học của tôi</p></a></li>
                <!-- F8 Newfeed -->
                <li class="list-inline-item mb-0">
                    <a href="javascript:void(0)" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                        <div><img src="assets/images/header/loa.jpg" class="avatar avatar-ex-small rounded-circle" alt="F8 Newfeed"></div>
                    </a>
                </li>
                <!-- End My Course -->

                <!-- Notification -->
                <li class="list-inline-item mb-0 ms-1">
                    <div class="dropdown dropdown-primary">
                        <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/header/chuong.png" class="avatar avatar-ex-small rounded-circle" height="500px" alt="Notification"></button>
                        <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                            <a class="dropdown-item d-flex align-items-center text-dark">

                                <div class="flex-1 ms-2">
                                    <span class="d-block mb-1" style="color: #000">Thông báo</span>
                                    <small style="color: orangered">đến từ F8</small>
                                    <div class="dropdown-divider border-top"></div>
                                </div>
                            </a>

                            <!-- dong 87 -->
                            <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Khóa học HTML mới ra mắt</a>
                            <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>CSS Pro dành cho sinh viên</a>
                        </div>
                    </div>
                </li>
                <!-- End Notification -->

                <!-- Profile -->
                <c:choose>
                    <c:when test="${customer != null}">
                        <li class="list-inline-item mb-0 ms-1">
                            <div class="dropdown dropdown-primary">
                                <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${customer.getImage()}" class="avatar avatar-ex-small rounded-circle" alt="button"></button>
                                <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                    <a class="dropdown-item d-flex align-items-center text-dark" href="#">
                                        <img src="${customer.getImage()}" class="avatar avatar-md-sm rounded-circle border shadow" alt="avatar">
                                        <div class="flex-1 ms-2">
                                            <span class="d-block mb-1">${customer.getFullName()}</span>
                                            <small style="color: orangered">Customer</small>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Trang cá nhân</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Viết blog</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></i></span>Bài viết của tôi</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Bài viết đã lưu</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="login"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span>Đăng xuất</a>                     
                                </div>
                            </div>
                        </li>
                    </c:when>

                    <c:when test="${admin != null}">
                        <li class="list-inline-item mb-0 ms-1">
                            <div class="dropdown dropdown-primary">
                                <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${admin.getImage()}" class="avatar avatar-ex-small rounded-circle" alt="button"></button>
                                <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                    <a class="dropdown-item d-flex align-items-center text-dark" href="#">
                                        <img src="${admin.getImage()}" class="avatar avatar-md-sm rounded-circle border shadow" alt="avatar">
                                        <div class="flex-1 ms-2">
                                            <span class="d-block mb-1">${admin.getFullName()}</span>
                                            <small style="color: orangered">Admin</small>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Trang cá nhân</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Viết blog</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></i></span>Bài viết của tôi</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Bài viết đã lưu</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="login"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span>Đăng xuất</a>                     
                                </div>
                            </div>
                        </li>
                    </c:when>

                    <c:when test="${sales != null}">                                                
                        <li class="list-inline-item mb-0 ms-1">
                            <div class="dropdown dropdown-primary">
                                <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${sales.getImage()}" class="avatar avatar-ex-small rounded-circle" alt="button"></button>
                                <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                    <a class="dropdown-item d-flex align-items-center text-dark" href="#">
                                        <img src="${sales.getImage()}" class="avatar avatar-md-sm rounded-circle border shadow" alt="avatar">
                                        <div class="flex-1 ms-2">
                                            <span class="d-block mb-1">${sales.getFullName()}</span>
                                            <small style="color: orangered">Sales</small>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Trang cá nhân</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Viết blog</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></i></span>Bài viết của tôi</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Bài viết đã lưu</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="login"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span>Đăng xuất</a>                     
                                </div>
                            </div>
                        </li>
                    </c:when>

                    <c:when test="${expert != null}">                                                
                        <li class="list-inline-item mb-0 ms-1">
                            <div class="dropdown dropdown-primary">
                                <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${expert.getImage()}" class="avatar avatar-ex-small rounded-circle" alt="button"></button>
                                <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                    <a class="dropdown-item d-flex align-items-center text-dark" href="#">
                                        <img src="${expert.getImage()}" class="avatar avatar-md-sm rounded-circle border shadow" alt="avatar">
                                        <div class="flex-1 ms-2">
                                            <span class="d-block mb-1">${expert.getFullName()}</span>
                                            <small style="color: orangered">Expert</small>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Trang cá nhân</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Viết blog</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></i></span>Bài viết của tôi</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Bài viết đã lưu</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="login"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span>Đăng xuất</a>                     
                                </div>
                            </div>
                        </li>
                    </c:when>

                    <c:when test="${marketing != null}">                                                
                        <li class="list-inline-item mb-0 ms-1">
                            <div class="dropdown dropdown-primary">
                                <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${marketing.getImage()}" class="avatar avatar-ex-small rounded-circle" alt="button"></button>
                                <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                    <a class="dropdown-item d-flex align-items-center text-dark" href="#">
                                        <img src="${marketing.getImage()}" class="avatar avatar-md-sm rounded-circle border shadow" alt="avatar">
                                        <div class="flex-1 ms-2">
                                            <span class="d-block mb-1">${marketing.getFullName()}</span>
                                            <small style="color: orangered">Expert</small>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Trang cá nhân</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Viết blog</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></i></span>Bài viết của tôi</a>
                                    <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"></span>Bài viết đã lưu</a>
                                    <div class="dropdown-divider border-top"></div>
                                    <a class="dropdown-item text-dark" href="login"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span>Đăng xuất</a>                     
                                </div>
                            </div>
                        </li>
                    </c:when>

                    <c:otherwise>
                        <!-- Logout Home Page Function -->
                        <ul class="dropdowns list-inline mb-0">
                            <span class="badge bg-danger rounded-pill ms-1"> <strong style="color: #000"><strong style="font-size: 14px"><strong style="font-family: var"><a href="login" style="color: white">Đăng nhập</a></strong></strong></span>
                        </ul>
                        <!-- End Logout Home Page Function -->  
                    </c:otherwise>

                </c:choose>    
            </ul>
            <!-- End Login Home Page Function -->
        </div>
    </header>
    <!--End Header-->

    <!-- F8 New feed -->
    <div class="offcanvas offcanvas-end bg-white shadow" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <!-- header bar -->
        <div class="offcanvas-header p-4 border-bottom">
            <h5 id="offcanvasRightLabel" class="mb-0">
                <strong style="font-size: 18px">Bảng tin F8</strong></strong>
            </h5>
            <button type="button" class="btn-close d-flex align-items-center text-dark" data-bs-dismiss="offcanvas" aria-label="Close"><i class="uil uil-times fs-4"></i></button>
        </div>

        <!-- New feed -->
        <div class="offcanvas-body p-4 px-md-5">
            <div class="row">
                <div class="col-12">
                    <!-- New feed -->
                    <div id="style-switcher">
                        <div>
                            <ul class="text-center list-unstyled mb-0">
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa1.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa2.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa3.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa4.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa5.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa6.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                                <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets/images/header/loa7.jpg" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End New feed -->

        <!-- Links -->
        <div class="offcanvas-footer p-4 border-top text-center">
            <ul class="list-unstyled social-icon mb-0">
                <li class="list-inline-item mb-0"><a href="#" target="_blank" class="rounded"><i class="uil uil-dribbble align-middle" title="dribbble"></i></a></li>
                <li class="list-inline-item mb-0"><a href="#" target="_blank" class="rounded"><i class="uil uil-facebook-f align-middle" title="facebook"></i></a></li>
                <li class="list-inline-item mb-0"><a href="#" target="_blank" class="rounded"><i class="uil uil-instagram align-middle" title="instagram"></i></a></li>
                <li class="list-inline-item mb-0"><a href="#" target="_blank" class="rounded"><i class="uil uil-twitter align-middle" title="twitter"></i></a></li>
                <li class="list-inline-item mb-0"><a href="mailto:support@shreethemes.in" class="rounded"><i class="uil uil-envelope align-middle" title="email"></i></a></li>
                <li class="list-inline-item mb-0"><a href="#" target="_blank" class="rounded"><i class="uil uil-globe align-middle" title="website"></i></a></li>
            </ul>
        </div>
        <!-- End Links -->
    </div>

    <!-- Header -->    
    <!-- javascript -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!-- Icons -->
    <script src="assets/js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="assets/js/app.js"></script>
</body>