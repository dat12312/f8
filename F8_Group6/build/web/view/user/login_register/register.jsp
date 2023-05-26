<%-- 
    Document   : register
    Created on : May 19, 2023, 10:07:38 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Đăng ký tài khoản F8 - Học lập trình để đi làm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="https://shreethemes.in" />
        <meta name="Version" content="v1.2.0" />
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

    </head>

    <body>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->

        <div class="back-to-home rounded d-none d-sm-block">
            <a href="home" class="btn btn-icon btn-primary"><i data-feather="home" class="icons"></i></a>
        </div>

        <!-- Hero Start -->
        <section class="bg-half-150 d-table w-100 bg-light" style="background: url('assets/images/bg/f8_bg.png') center;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-8">
                        
                        <div class="card login-page bg-white shadow mt-4 rounded border-0">
                            <div class="card-body">
                                <img src="assets/images/logoF8.png" style="border-radius: 25%;" height="50" class="mx-auto d-block" alt="">
                                <h4 class="text-center">Đăng ký tài khoản F8</h4>  
                                <span style="color:red;">${msgHave}</span>
                                <form action="register" class="login-form mt-4" method="post">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="mb-3">                                               
                                                <label class="form-label">Tên của bạn ? <span class="text-danger">*</span></label>
                                                <span style="color:red;">${msgName}</span>
                                                <input type="text" class="form-control" placeholder="Họ và tên của bạn" name="fullname" value="${param["fullname"]}">
                                            </div>
                                        </div>
                  
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label"> Email <span class="text-danger">*</span></label>
                                                <span style="color:red;">${msgEmail}</span>
                                                <input type="text" class="form-control" placeholder="Địa chỉ email" name="email" value="${param["email"]}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <label class="form-label">Password <span class="text-danger">*</span></label>
                                                <span style="color:red;">${msgPass}</span>
                                                <input type="password" class="form-control" placeholder="Mật khẩu" name="password" value="${param["password"]}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="mb-3">
                                                <div class="form-check">
                                                    <input class="form-check-input align-middle" type="checkbox" value="" id="accept-tnc-check">
                                                    <label class="form-check-label" for="accept-tnc-check">I Accept <a href="#" class="text-primary">Terms And Condition</a></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="d-grid">
                                                <button class="btn btn-primary">Đăng Ký</button>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 mt-3 text-center">
                                            <h6 class="text-muted">Hoặc</h6>
                                        </div><!--end col-->

                                        <div class="col-6 mt-3">
                                            <div class="d-grid">
                                                <a href="javascript:void(0)" class="btn btn-soft-primary"><i class="uil uil-facebook"></i> Facebook</a>
                                            </div>
                                        </div><!--end col-->

                                        <div class="col-6 mt-3">
                                            <div class="d-grid">
                                                <a href="javascript:void(0)" class="btn btn-soft-primary"><i class="uil uil-google"></i> Google</a>
                                            </div>
                                        </div><!--end col-->

                                        <div class="mx-auto">
                                            <p class="mb-0 mt-3"><small class="text-dark me-2">Bạn đã có tài khoản ?</small> <a href="login" class="text-dark fw-bold">Đăng nhập</a></p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div><!---->
                    </div> <!--end col-->
                </div><!--end row-->
            </div> <!--end container-->
        </section><!--end section-->
        <!-- Hero End -->

        <!-- javascript -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- Icons -->
        <script src="assets/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets/js/app.js"></script>

    </body>

</html>