<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Menu</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/Fontend/img/core-img/logo.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/style.css">

    <!--    Css project-->
    <link href="<%=request.getContextPath()%>/Fontend/container.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/thucdon.css">
    
</head>

<body>


    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Mời anh em chọn mồi...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <!-- Breaking News -->
                    <div style="width: 400px;" class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Chào mừng đến quán nhậu 2 Kết</a></li>
                                    <li><a href="#">Không say không về</a></li>
                                    <li><a href="#">Quẩy nào anh em</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div style="width: 600px" class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                        <div class="language">
                            <a class="vn" href="<%=request.getContextPath()%>/Fontend/index.jsp"><img src="<%=request.getContextPath()%>/Fontend/img/bg-img/vi-flag.png"></a>
                            <a class="us" href="<%=request.getContextPath()%>/Fontend/index-en.jsp"><img src="<%=request.getContextPath()%>/Fontend/img/bg-img/us-flag.png"></a>
                            <a class="login" href="<%=request.getContextPath()%>/Fontend/login/login-vn.jsp">Đăng nhập</a>
                            <span>/</span>
                            <a class="logup" href="<%=request.getContextPath()%>/Fontend/login/signup-vn.jsp">Đăng kí</a>

                        </div>
                        <div style="margin-left: 15px;" class="search-btn">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="<%=request.getContextPath()%>/Fontend/index.jsp"><img src="<%=request.getContextPath()%>/Fontend/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="active"><a href="<%=request.getContextPath()%>/Fontend/index.jsp">Trang chủ</a></li>
                                    <li class="active"><a href="<%=request.getContextPath()%>/Fontend/thucdon/thucdon.jsp">Thực đơn</a></li>
                                    <li class="db"><a href="<%=request.getContextPath()%>/Fontend/order/order.jsp">Đặt bàn</a></li>
                                    <li class="gt"><a href="<%=request.getContextPath()%>/Fontend/about/about.jsp">Giới thiệu</a></li>
                                    <li class="lh"><a href="<%=request.getContextPath()%>/Fontend/contact/contact.jsp">Liên hệ</a></li>
                                    <li class="lh"><a href="<%=request.getContextPath()%>/Fontend/contact/contact.jsp">Sự Kiện</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="<%=request.getContextPath()%>/Fontend/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<%=request.getContextPath()%>/Fontend/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<%=request.getContextPath()%>/Fontend/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<%=request.getContextPath()%>/Fontend/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<%=request.getContextPath()%>/Fontend/js/active.js"></script>



</body>

</html>
