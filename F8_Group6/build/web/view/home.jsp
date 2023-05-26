<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : home
    Created on : May 19, 2023, 10:05:27 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>F8 - Học lập trình để đi làm</title>
        <!-- F8logo -->
        <!-- favicon -->
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
        <%@include file="/view/common/header.jsp"%>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- End Loader -->

        <!-- start section -->
        <!-- all fixed but no database added yet -->
        <section class="bg-dashboard">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-3 col-6">
                        <div class="rounded shadow overflow-hidden sticky-bar">
                            <%@include file="/view/common/navbar.jsp"%>
                        </div>
                    </div>

                    <!-- show slide animation -->
                    <div class="col-xl-10 col-lg-10 col-md-9 mt-4 mt-sm-0">
                        <div class="row">
                            <div>
                                <div class="card border-0 shadow rounded">
                                    <div class="d-flex justify-content-between p-4 border-bottom">
                                        <div class="client-review-slider">
                                            <!-- slide -->
                                            <img src="assets/images/home/slide1.jpg" alt="course">
                                            <img src="assets/images/home/slide2.jpg" alt="course">
                                            <img src="assets/images/home/slide3.jpg" alt="course">
                                            <img src="assets/images/home/slide1.jpg" alt="course">
                                            <!-- end slide -->
                                        </div> 
                                    </div>
                                </div>
                            </div> 
                        </div> 
                        <!-- end show slide animation -->

                        <br/>
                        <strong><a style="color: #000 ; font-size: 27px">Khóa học Pro</a><span class="badge bg-danger rounded-pill ms-1"><strong>New</strong></span></strong>
                        <!-- show khoa hoc pro --> 
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/proc1.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">HTML CSS Pro</a>
                                        <p style="color: orangered">1.299.000đ</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/proc2.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Responsive</a>
                                        <p style="color: orangered">3.299.000đ</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/proc3.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">React JS</a>
                                        <p style="color: orangered">1.550.000đ</p>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <!-- end show khoa hoc pro -->

                        <br/>
                        <strong><a style="color: #000 ; font-size: 27px">Khóa học miễn phí</a></strong>
                        <!-- show khoa hoc mien phi -->
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/freec1.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Kiến thức nhập môn IT</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/freec2.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">C++ zero đến hero</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/freec4.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">JavaScript cơ bản</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/freec3.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">HTML CSSS zero đến hero</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/freec5.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">WSL Ubuntu Windows Terminal</a>
                                    </div>
                                </div>
                            </div>
                        </div><br/>
                        <!-- end show khao hoc mien phi -->

                        <strong><a style="color: #000 ; font-size: 27px">Bài viết nổi bật</a></strong> 
                        <!-- show bai viet noi bat -->
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/blog1.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Học viên F8</a>
                                        <p style="color: orangered">Blog</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/blog2.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Kiến thức tài nguyên </a>
                                        <p style="color: orangered">Blog</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/blog3.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Thời gian và động lực</a>
                                        <p style="color: orangered">Blog</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/blog4.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Học sao cho hiệu quả?</a>
                                        <p style="color: orangered">Blog</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-6 col-12 mt-4 pt-2">
                                <div class="card border-0 shadow rounded p-4">
                                    <div class="d-flex justify-content-between">
                                        <img src="assets/images/home/blog5.jpg" style="border-radius: 10%" height="150px" width="234px" alt="course">
                                    </div>

                                    <div class="card-body p-0 pt-3">
                                        <a href="#" class="text-dark h6">Ký sự những ngày tại F8</a>
                                        <p style="color: orangered">Blog</p>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <!-- end show bai viet noi bat -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
        <!-- back to top -->
        <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-pills btn-primary back-to-top"><i data-feather="arrow-up" class="icons"></i></a>
        <!-- end back to top -->

        <!-- JavaScript -->
        <!-- Home -->
        <!-- javascript -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- SLIDER -->
        <script src="assets/js/tiny-slider.js"></script>
        <script src="assets/js/tiny-slider-init.js"></script>
        <!-- Chart -->
        <script src="assets/js/apexcharts.min.js"></script>
        <script src="assets/js/areachart.init.js"></script>
        <!-- Icons -->
        <script src="assets/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets/js/app.js"></script>

    </body>

</html>
<!-- footer -->
<%@include file="/view/common/footer.jsp"%>
<!-- end footer -->