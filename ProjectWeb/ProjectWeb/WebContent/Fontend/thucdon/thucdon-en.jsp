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
    <title>2 Kết - Chấp Hết Anh Em</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/logo.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="container.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="thucdon.css">

</head>

<body>
  <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/logo.png" alt="">
    </div>

    <%@include file="../menu/menu-en.jsp" %>
    
    
    <!-- ##### Header Area End ##### -->


    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>What thing on menu today?</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MenuStart-->
    <div class="container">
        <h2 style="color:green">Welcome to Hai Kết Pumb, order please.</h2>
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">BBQ</a></li>
            <li><a data-toggle="tab" href="#menu1">Sea food</a></li>
            <li><a data-toggle="tab" href="#menu2">Drink</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading">
                            <h3 id="hot"><marquee>BBQ</marquee></h3>
                        </div>
                    </div>
                </div>
    
                <div class="row">
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n1.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Thit lon nuong moi</h5>
                                </a>
                                <div class="price000">
                                   530.000 VNĐ
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n2.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Ca loc nuong</h5>
                                </a>
                                <div class="price000">
                                    330.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n3.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Muc nuong</h5>
                                </a>
                                <div class="price000">
                                    630.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n4.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Ran moi nuong trui</h5>
                                </a>
                                <div class="price000">
                                    930.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n5.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Ga nuong</h5>
                                </a>
                                <div class="price000">
                                    530.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/donuong/n6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Bo nuong</h5>
                                </a>
                                <div class="price000">
                                    930.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r1.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Lau dai dương</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r2.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Doi truong lang xa ot</h5>
                                </a>
                                <div class="price000">
                                    830.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r3.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Luc bo chau bia lon</h5>
                                </a>
                                <div class="price000">
                                    630.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r4.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Ty co nuong thoat y</h5>
                                </a>
                                <div class="price000">
                                    930.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r5.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Duong dua lang nuoc mam</h5>
                                </a>
                                <div class="price000">
                                    630.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Tom hum nuong</h5>
                                </a>
                                <div class="price000">
                                    1.830.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading">
                            <h3 id="hot"><Center>SEA FOOD</center></h3>
                        </div>
                    </div>
                </div>
    
                <div class="row">
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h1.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Lau dai duong</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h2.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Doi truong lang xa ot</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h3.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Luc bo chau bia lon</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h4.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Ty co nuong thoat y</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h5.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Duong dua lang nuoc mam</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h7.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h8.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h9.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h10.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h11.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/haisan/h12.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="price000">
                                    1.150.000 VNĐ
                                 </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading">
                            <h3 id="hot"><center>Drink</center></h3>
                        </div>
                    </div>
                </div>
    
                <div class="row">
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/thucuong/d1.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Heineken</h5>
                                </a>
                                <div class="price000">
                                    20.000 VNĐ/chai
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/thucuong/d2.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Tiger Beer</h5>
                                </a>
                                <div class="price000">
                                    17.000 VNĐ/chai
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/menu/thucuong/h3.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>SaiGon Special</h5>
                                </a>
                                <div class="price000">
                                    13.000 VNĐ/chai
                                 </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r4.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Tý Cô Nương Thoát Y</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r5.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Đuông Dừa Lăng Nước Mắm</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="img/bg-img/r6.jpg" alt="">
                            <div class="receipe-content">
                                <a href="order.jsp">
                                    <h5>Cau ca hau ruou</h5>
                                </a>
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of menu and start googlemap -->
    <div class="map-area">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4062912594163!2d106.76370951483702!3d10.856670660676013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175279c1ea67023%3A0x4665985146b456dd!2zMTA5IEhvw6BuZyBEaeG7h3UgMiwgUGjGsOG7nW5nIExpbmggVHJ1bmcsIFRo4bunIMSQ4bupYywgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1539712685163"
            width="1600" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>


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
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | Hai Kết Pubs
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
    <!-- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src="js/google-map/map-active.js"></script>
</body>

</html>