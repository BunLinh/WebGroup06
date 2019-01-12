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

    <!--    Css project-->
    <link href="container.css" rel="stylesheet" type="text/css" />
    <!--    Css menu-->
    <link rel="stylesheet" href="thucdon.css">
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/logo.png" alt="">
    </div>

    <%@include file="menu/menu.jsp" %>
    
    
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/bg1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Mồi Nhậu Phong Phú</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Dù là rừng núi hay sông nước, biển cả,
                                    chim chóc thú rừng gà vịt thỏ nai dê cóc ếch mèo chuột... Tất cả mĩ vị Việt Nam đều
                                    nằm trong menu của quán nhậu Hai Kết</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">Đa
                                    Dạng Mồi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/bg6.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Hải Sản Tươi Sống</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Hải sản tươi sống được đem về từ Xóm
                                    Lưới Cà Mau, nuôi nhốt tại Hai Kết. Bạn có thể lựa chọn trực tiếp những con cua
                                    biển, mực, bạch tuộc, cá sống tại quán và chế biến theo yêu cầu của bạn.</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">Hương
                                    Vị Của Biển</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/bg7.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Thịt Rừng U Minh</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">Heo rừng, hươu nai, cọp beo, rắn hổ các
                                    loại, cá sấu,... Những cái tên dân dã của miền núi rừng đã và đang nằm trên menu
                                    của Hai Kết cho các bạn lựa chọn.</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">U
                                    Minh Thảo Khấu</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Top Catagory Area Start ##### -->
    <section class="top-catagory-area section-padding-80-0">
        <div class="container">
            <div class="row">
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="img/bg-img/bg2.jpg" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Dê Núi Bình Định</h3>
                            <h6>Đặc sản miền núi</h6>
                            <a href="receipe-post.jsp" class="btn delicious-btn">Xem mồi</a>
                        </div>
                    </div>
                </div>
                <!-- Top Catagory Area -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="img/bg-img/bg3.jpg" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>Cua Biển Năm Căn</h3>
                            <h6>Đặc sản làng chày</h6>
                            <a href="receipe-post.jsp" class="btn delicious-btn">Xem mồi</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Top Catagory Area End ##### -->

    <!-- ##### Best Receipe Area Start ##### -->
    <section class="best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3 id="hot">
                            <marquee>Mồi Hót Tại Hai Kết</marquee>
                        </h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30" id="container1">
                        <img src="img/bg-img/r1.jpg" alt="" class="image">
                        <div class="overlay">
                            <div class="text" id="monan">
                                <p id="trangthai"> <strong> Trạng thái: Còn hàng 1.150.000 VNĐ/SET</strong></p>
                                <p>Nếu là các tín đồ của lẩu thái và hải sản thì bạn sẽ không thể bỏ qua Set combo quá
                                    tuyệt này, Set "LẨU ĐẠI DƯƠNG" bao gồm các món sau:Tôm hùm baby,Tôm sú,Ốc móng
                                    tay...
                                    Nước lẩu Thái chua chua cay cay chuẩn vị.</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>
                        <div class="receipe-content">
                            <a href="">
                                <h5>Lẩu Đại Dương</h5>
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
                    <div class="single-best-receipe-area mb-30" id="container2">
                        <img src="img/bg-img/r2.jpg" alt="" class="image">
                        <div class="overlay2">
                            <div class="text2" id="monan2">
                                <p id="trangthai2"> <strong> Trạng thái: Còn hàng 450.000 VNĐ/SET</strong></p>
                                <p>Xã ớt kết hợp cùng với lòng lợn được xào nấu bởi các đầu bếp chuyên nghiệp nhất của
                                    chúng tôi sẽ mang lại cho thực khách một món ăn hợp khẩu vị và khó quên</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>
                        <div class="receipe-content">
                            <a href="">
                                <h5>Dòi Trường Lăng Xả Ớt</h5>
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
                    <div class="single-best-receipe-area mb-30" id="container3">
                        <img src="img/bg-img/r3.jpg" alt="" class="image">
                        <div class="overlay3">
                            <div class="text3" id="monan3">
                                <p id="trangthai3"> <strong> Trạng thái: Còn hàng 150.000 VNĐ/SET</strong></p>
                                <p>Chân gà kết hợp cùng sả ớt rồi được hấp chung với bia tạo một món ăn không thể tuyệt
                                    vời hơn, chắc chắn thực khách sẽ quay trở lại với món ăn đầy hấp dẫn này</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>
                        <div class="receipe-content">
                            <a href="">
                                <h5>Lục Bộ Chầu Bia Lon</h5>
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
                    <div class="single-best-receipe-area mb-30" id="container4">
                        <img src="img/bg-img/r4.jpg" alt="" class="image">
                        <div class="overlay4">
                            <div class="text4" id="monan4">
                                <p id="trangthai4"> <strong> Trạng thái: Còn hàng 850.000 VNĐ/SET</strong></p>
                                <p>Bạn là một tín đồ của thịt chó ư? tìm đúng quán rồi đấy! Thịt chó được làm sạch một
                                    cách tuyệt đối và khò trên lửa nhiệt độ cao sau đó đuuợc luộc chín và quét một lớp
                                    dầu nóng tạo ra màu sắc và hương vị tuyệt vời</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>

                        <div class="receipe-content">
                            <a href="">
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
                    <div class="single-best-receipe-area mb-30" id="container5">
                        <img src="img/bg-img/r5.jpg" alt="" class="image">
                        <div class="overlay5">
                            <div class="text5" id="monan5">
                                <p id="trangthai5"> <strong> Trạng thái: Còn hàng 1.350.000 VNĐ/SET</strong></p>
                                <p>Xứ dừa có gì? có dừa và còn có Đuông dừa, Đuông dừa được mua trực tiếp từ Bến Tre
                                    với chất lượng cao qua tài nghệ chế biến vô cùng độc đáo của các đầu bếp chúng tôi
                                    sẽ tạo cho bạn một cảm giác khó quên.</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>
                        <div class="receipe-content">
                            <a href="">
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
                    <div class="single-best-receipe-area mb-30" id="container6">
                        <img src="img/bg-img/r6.jpg" alt="" class="image">
                        <div class="overlay6">
                            <div class="text6" id="monan6">
                                <p id="trangthai5"> <strong> Trạng thái: Còn hàng 1.970.000 VNĐ/SET</strong></p>
                                <p>Nhìn hình thôi cũng thấy đủ hấp dẫn rồi chứ cả quý khách? Đây là tôm hùm, được chế
                                    biến bằng phương pháp hàng đầu của nhà hàng chúng tôi, chắc chắn sẽ không làm quý
                                    khách thất vọng, đắt xắt ra miếng</p>
                                <a href="#" style="color:red">
                                    <center><strong>ĐẶT MÓN NÀY</strong></center>
                                </a>



                            </div>
                        </div>
                        <div class="receipe-content">
                            <a href="">
                                <h5>Tôm Hùm Nướng</h5>
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
    </section>
    <!-- ##### Best Receipe Area End ##### -->

    <!-- ##### CTA Area Start ##### -->
    <section class="cta-area bg-img bg-overlay" style="background-image: url(img/bg-img/bg4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Cta Content -->
                    <div class="cta-content text-center">
                        <h2>Quán Nhậu Hai Kết</h2>
                        <p>Sinh ra tại phường Linh Trung, Quận Thủ Đức, Thành Phố Hồ Chí Minh. Trong khu dân cư Hoàng
                            Diệu. Với sứ mệnh phục vụ - giải tỏa nỗi buồn - nỗi đau bao tử của sinh viên, công nhân
                            viên chức. Với 100% nguyên liệu sạch, tươi sống cùng nhiều món ăn đặc trưng vùng miền, Hai
                            Kết xin phục vụ quý khách hết mình</p>
                        <a href="#menu-hihi" class="btn delicious-btn">Cùng xem menu nào các bạn</a>
                    </div>
                </div>
            </div>
            <div id="menu-hihi"></div>
        </div>
    </section>
    <!-- ##### CTA Area End ##### -->

    <!-- ##### Small Receipe Area Start ##### -->
    <!--        <section class="small-receipe-area section-padding-80-0">
                    <div  class="container">
                        <div style="text-align: center; font-size: 50px; margin-bottom: 50px">Menu Hai Kết</div>
                        <div class="row">
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr1.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Cua Hoàng Đế</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr2.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Lẩu Mắm</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr3.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Bê Thui</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr4.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Chân Gà Hầm Mật Ong</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr5.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Đuông Dừa Lăng Nước Mắm</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr6.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Ốc Hấp Bia</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr7.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Gà Ăn Mày</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr8.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Rượu Chuối Hột</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
        
                             Small Receipe Area 
                            <div class="col-12 col-sm-6 col-lg-4">
                                <div class="single-small-receipe-area d-flex">
                                     Receipe Thumb 
                                    <div class="receipe-thumb">
                                        <img src="img/bg-img/sr9.jpg" alt="">
                                    </div>
                                     Receipe Content 
                                    <div class="receipe-content">
                                        <span>January 04, 2018</span>
                                        <a href="#">
                                            <h5>Bia Tiger</h5>
                                        </a>
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>2 Comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>-->
    <!-- ##### Small Receipe Area End ##### -->

    <!-- ##### Quote Subscribe Area Start ##### -->
    <section class="quote-subscribe-adds">
        <div class="container">
            <div class="row align-items-end">
                <!-- Quote -->
                <div class="col-12 col-lg-4">
                    <div class="quote-area text-center">
                        <span>"</span>
                        <h4>Nhậu nhiều thì vợ buồn, nhậu ít thì bạn buồn, không nhậu thì mình buồn</h4>
                        <p>Bợm nhậu said</p>
                        <div class="date-comments d-flex justify-content-between">
                            <div class="date">January 04, 2018</div>
                            <div class="comments">3509 Comments</div>
                        </div>
                    </div>
                </div>

                <!-- Newsletter -->
                <div class="col-12 col-lg-4">
                    <div class="newsletter-area">
                        <h4>Đăng kí để nhận thông tin</h4>
                        <!-- Form -->
                        <div class="newsletter-form bg-img bg-overlay" style="background-image: url(img/bg-img/bg1.jpg);">
                            <form action="#" method="post">
                                <input type="email" name="email" placeholder="Subscribe to newsletter">
                                <button type="submit" class="btn delicious-btn w-100">Đăng ký</button>
                            </form>
                            <p>Việc để lại gmail sẽ giúp bạn nhận được thông tin khuyến mãi của chúng tôi, mõi tuần một
                                event.</p>
                        </div>
                    </div>
                </div>

                <!-- Adds -->
                <div class="col-12 col-lg-4">
                    <div class="delicious-add">
                        <img src="img/bg-img/add.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Quote Subscribe Area End ##### -->

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



</body>

</html>