<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Reservation</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:300,400,700,800|Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
    
    
    
    
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
                                    <li class="db"><a href="<%=request.getContextPath()%>/Fontend/order/Reservation.jsp">Đặt bàn</a></li>
                                    <li class="gt"><a href="<%=request.getContextPath()%>/Fontend/about/about.jsp">Giới thiệu</a></li>
                                    <li class="lh"><a href="<%=request.getContextPath()%>/Fontend/contact/contact.jsp">Liên hệ</a></li>
                                    <li class="lh"><a href="<%=request.getContextPath()%>/Fontend/notification/notification.jsp">Sự Kiện</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
  

        <div class="section" data-aos="fade-up">
          <div class="container">
            <div class="row justify-content-center mb-5">
              <div class="col-md-8  text-center">
                <h2 class="mb-3">Đặt bàn</h2>
                <p class="lead">Để có được những món ăn ngon nhất và sớm nhất hãy đăng ký và đặt chỗ ngay để thưởng thức những món ăn ngon của chúng tôi.</p>
              </div>
            </div>
            
            <div class="row justify-content-center">
              <div class="col-md-10 p-5 form-wrap">
                <form action="#">
                  <div class="row mb-4">
                    <div class="form-group col-md-4">
                      <label for="name" class="label">Tên</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-person"></span>
                        <input type="text" class="form-control" id="name">
                      </div>
                    </div>
                    
                    <div class="form-group col-md-4">
                      <label for="email" class="label">Email</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-email"></span>
                        <input type="email" class="form-control" id="email">
                      </div>
                    </div>
                    
                    <div class="form-group col-md-4">
                      <label for="phone" class="label">Điện Thoại</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-call"></span>
                        <input type="text" class="form-control" id="phone">
                      </div>
                    </div>
                    
                    
                    <div class="form-group col-md-4">
                      <label for="persons" class="label">Số lượng bàn</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-arrow-dropdown"></span>
                        <select name="persons" id="amounttable" class="form-control">
                          <option value="">1</option>
                          <option value="">2</option>
                          <option value="">3</option>
                          <option value="">4</option>
                          <option value="">5+</option>
                        </select>
                      </div>
                    </div>
                    
                    <div class="form-group col-md-4">
                      <label for="persons" class="label">Chọn món</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-arrow-dropdown"></span>
                        <select name="persons" id="order" class="form-control">
                          <option value="">Tý cô nương thoát y</option>
                          <option value="">Chuột nướng</option>
                          <option value="">Tôm hùm nướng</option>
                          <option value="">Gà nướng</option>
                          <option value="">Cá lóc thui</option>
                          <option value="">...!</option>
                        </select>
                      </div>
                    </div>
                    
                    







                    

                    <div class="form-group col-md-4">
                      <label for="persons" class="label">Số người</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-arrow-dropdown"></span>
                        <select name="persons" id="persons" class="form-control">
                          <option value="">1 person</option>
                          <option value="">2 persons</option>
                          <option value="">3 persons</option>
                          <option value="">4 persons</option>
                          <option value="">5+ persons</option>
                        </select>
                      </div>
                    </div>
                    
                    
                    <div class="form-group col-md-4">
                      <label for="date" class="label">Ngày</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-calendar"></span>
                        <input type="text" class="form-control" id="date">
                      </div>
                    </div>
                    
                     <div class="form-group col-md-4">
                      <label for="persons" class="label">Coupon</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-arrow-dropdown"></span>
                        <select name="persons" id="persons" class="form-control">
                          <option value="">1</option>
                          <option value="">2</option>
                        </select>
                      </div>
                    </div>
                    
                    
                    <div class="form-group col-md-4">
                      <label for="time" class="label">Thời gian</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-time"></span>
                        <input type="text" class="form-control" id="time">
                      </div>
                    </div>
                  </div>
                  
                  <div class="row justify-content-center">
                    <div class="col-md-4">
                      <input type="submit" class="btn btn-primary btn-outline-primary btn-block" value="Xác nhận">
                    </div>
                  </div>
                  
                  
                </form>
              </div>
            </div>
          </div>
        </div> <!-- .section -->
        
        
        
        <!-- Footer -->
        
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
                        <a href="<%=request.getContextPath()%>/Fontend/index.jsp"><img src="<%=request.getContextPath()%>/Fontend/img/core-img/logo.png" alt=""></a>
                    </div>
                    <!-- Copywrite -->
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | Hai Kết Pubs
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->
        
        
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>

    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>

    <script src="js/aos.js"></script>
    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>

    <script src="js/main.js"></script>
  </body>
</html>