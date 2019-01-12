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
    <title>About us</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/logo.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

    <!--    Css project-->
    <link href="container.css" rel="stylesheet" type="text/css" />
    <!--    Css menu-->
    <link rel="stylesheet" href="thucdon.css">

</head>

<body>
    <body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/logo.png" alt="">
    </div>



	<%@include file="menu.jsp" %>


    
    
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>Chúng tôi là ai?</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### About Area Start ##### -->
    <section class="about-area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3>Sứ mệnh của chúng tôi</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <h6 class="sub-heading pb-5">Tạo ra một môi trường ăn nhậu vô cùng lành mạnh và văn minh, với các
                        món ăn ngon hấp dẫn từ khắp mọi miền tổ quốc với giá cả hợp lý và hợp vệ sinh. Để ăn nhậu không
                        còn là nỗi lo của các cánh mày râu, và cũng là môi trường để chị em tụ họp thưởng thức món ngon
                        3 miền.</h6>
                </div>
            </div>

            <div class="row align-items-center mt-70">
                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/salad.jpg" alt="">
                        <h3><span class="counter">128</span></h3>
                        <h6>Món Hải sản</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/hamburger.jpg" alt="">
                        <h3><span class="counter">25</span></h3>
                        <h6>Loại Thức uống</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/rib.jpg" alt="">
                        <h3><span class="counter">71</span></h3>
                        <h6>Món Đồ nướng</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/pancake.jpg" alt="">
                        <h3><span class="counter">26</span></h3>
                        <h6>Món đặc sản 3 miền</h6>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <img class="mb-70" src="img/bg-img/bg1.jpg" alt="">
                    <p class="text-center">Quán nhậu 2 Kết được thành lập ngày 22/9/2018 tại Khu phố 6, Phường Linh
                        Trung, Quận Thủ Đức, TPHCM bởi 4 thành viên gồm <a href="https://www.facebook.com/NguyenVanDu.4012">Văn
                            Dũ</a>,<a href="https://www.facebook.com/profile.php?id=100007198419241">Hùng Cường</a>,<a
                            href="https://www.facebook.com/dangtrandat.109">Trần Đạt</a>, <a href="https://www.facebook.com/profile.php?id=100005119330597">Thi
                            Nguyễn</a> với mong muốn mang lại những trải nghiệm và những kỷ niệm đẹp nhất trong các
                        buổi tiệc, buổi giao lưu giữa các cánh mày râu, cũng như các chị em phụ nữ, hy vọng các bạn sẽ
                        vui vẻ khi đến với 2 Kết! Chân thành cảm ơn các bạn!</p>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### About Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <div class="contact-area section-padding-0-80">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3>Liên hệ với chúng tôi</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="contact-form-area">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <input type="text" class="form-control" id="name" placeholder="Name">
                                </div>
                                <div class="col-12 col-lg-6">
                                    <input type="email" class="form-control" id="email" placeholder="E-mail">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject">
                                </div>
                                <div class="col-12">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10"
                                        placeholder="Message"></textarea>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn delicious-btn mt-30" type="submit">Gửi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Contact Area End ##### -->


    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
                    <!-- Footer Social Info -->
                    <div class="footer-social-info text-right">
                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                    <!-- Footer Logo -->
                    <div class="footer-logo">
                        <a href="index.jsp"><img src="img/core-img/logo.png" alt=""></a>
                    </div>
                    <!-- Copywrite -->
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                            target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>