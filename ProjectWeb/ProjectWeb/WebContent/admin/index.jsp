<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <!-- Fontastic Custom icon font-->
        <link rel="stylesheet" href="css/fontastic.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <!-- Google fonts - Poppins -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon-->
     <link rel=" shortcut icon" type="image/png" href="image/iconb.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<style type="text/css">

  body{
                font-family: Time New Roman;
                font-size: 18px;
                font-weight: 300;
                
            }
.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
    opacity: 1;
    transition: opacity 0.6s;
    margin-bottom: 15px;
}.alert.success {background-color: #4CAF50;}
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}

</style>
    </head>
    <body>
    
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar  " style="position: fixed; width: 100%;">
                    <!-- Search Box-->
                    <div class="search-box">
                        <button class="dismiss"><i class="fa fa-close"></i></button>
                        <form id="searchForm" action="#" role="search">
                            <input type="search" placeholder="Nhập vào từ khóa để tìm kiếm..." class="form-control">
                        </form>
                    </div>
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="index.html" class="navbar-brand">
                                    <div class="brand-text brand-big">Admin</div>
                                    <div class="brand-text brand-small"></div></a>
                                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- Navbar Menu -->
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                                <!-- Search-->
                                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="fa fa-search"></i></a></li>
                                <!-- Notifications-->
                                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red">12</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                <div class="notification">
                                                    <div class="notification-content"><i class="fa fa-envelope bg-green"></i>Bạn có 6 tin nhắn mới </div>
                                                    <div class="notification-time"><small>4 phút trước</small></div>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                <div class="notification">
                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>Bạn có 2 người đăng kí theo dõi</div>
                                                    <div class="notification-time"><small>4 phút trước</small></div>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                <div class="notification">
                                                    <div class="notification-content"><i class="fa fa-upload bg-orange"></i>abc</div>
                                                    <div class="notification-time"><small>4 phút trước</small></div>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> 
                                                <div class="notification">
                                                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>Bạn có 2 người đăng kí theo dõi</div>
                                                    <div class="notification-time"><small>10 phút trước</small></div>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Xem tất cả thông báo                                           </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Messages                        -->
                                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange">10</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                                                <div class="msg-profile"> <img src="image/dat.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                                <div class="msg-body">
                                                    <h3 class="h5">Jason Doe</h3><span>đã gửi tn nhắn</span>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                                                <div class="msg-profile"> <img src="image/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                                <div class="msg-body">
                                                    <h3 class="h5">Frank Williams</h3><span>đã gửi tn nhắn</span>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                                                <div class="msg-profile"> <img src="image/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                                <div class="msg-body">
                                                    <h3 class="h5">Ashley Wood</h3><span>đã gửi tn nhắn</span>
                                                </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Xem tất cả tin nhắn    </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Logout    -->
                                <li class="nav-item"><a href="../login/login.jsp" class="nav-link logout">Quán nhậu<i class="fa fa-check-square-o"></i></a></li>
                                <li class="nav-item"><a href="../login/login.jsp" class="nav-link logout">Đăng xuất<i class="fa fa-sign-out"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch " style="padding-top: 60px;">
                <!-- Side Navbar -->
                <nav class="side-navbar  ">
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar"><img src="image/logo.png" alt="..." class="img-thumbnail rounded-circle"></div>
                        <div class="title">
                            <h1 class="h4">Xin chào Admin!</h1>
                            <p>Hai Kết Pumb</p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
                    <ul class="list-unstyled " data-toggle="nav-pill" >
                     <li class="active"> <a  href="index.jsp"><i class="fa fa-home"></i>Tổng quan </a></li>
                        <li > <a  href="#"><i class="fa fa-bar-chart-o"></i>Thống kê </a></li>
                        <li > <a href="#"><i class="fa fa-list"></i>Danh sách quản trị viên</a></li>
                        <li><a href="#dashvariants" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-user"></i>Quản lí người dùng </a>
                            <ul id="dashvariants" class="collapse list-unstyled" style="padding-left: 15px;">
                             
                            </ul>
                        </li>
                        <li><a  aria-expanded="false" data-toggle="collapse"href="#demolist"> <i class="fa fa-book"></i>Quản lí món ăn</a></li>
                        
                
                        
                    </ul>
                    <span class="heading">Khác</span>
                    <ul class="list-unstyled">
                        <li> <a href="../login/login.jsp"> <i class="fa fa-sign-in"></i>Đăng nhập </a></li>
                        <li> <a href="../register/register.jsp"> <i class="fa fa-sign-out"></i>Đăng kí </a></li>
                    </ul>
                </nav>
                <div class="content-inner">
                    <!-- Page Header-->
                    
                    <header class="page-header" style="margin-top: 0px; font-size: 18px;">
                    <br>
                    <div class="alert success" id="alert" style="width: 300px; height: 85px; float: right;">
  <span class="closebtn">&times;</span>  
  Chào bạn, chúc bạn một ngày làm việc vui vẻ!
</div>
                        <div class="container-fluid">
                            <h4 class="no-margin-bottom" style="font-size: 30px;">Tổng quan</h4>
                        </div>
                        
                    </header>
                    <!-- Dashboard Counts Section-->
                   
                    <!-- Dashboard Header Section    -->
                    <section class="dashboard-header" style="margin-bottom: 0; padding-bottom: 0;background-color:  #eef5f9;margin-top: -30px;">
                        <div class="container-fluid">
                            <div class="row">
                                <!-- Statistics -->
                                <div class="statistics col-lg-3 col-12">
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-orange"><i class="fa fa-money"></i></div>
                                        <div class="text"><strong>350.550.000</strong><br><small>Doanh thu tháng 11</small></div>
                                    </div>
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-red"><i class="fa fa-tasks"></i></div>
                                        <div class="text"><strong>99</strong><br><small>món ăn</small></div>
                                    </div>
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-green"><i class="fa fa-eye"></i></div>
                                        <div class="text"><strong>152739</strong><br><small>tổng lượt xem</small></div>
                                    </div>
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-info"><i class="fa fa-paper-plane-o"></i></div>
                                        <div class="text"><strong>3012</strong><br><small>Theo dõi</small></div>
                                    </div>
                                </div>
                                <!-- Daily Feeds -->
                <div class="col-lg-6">
                  <div class="daily-feeds card"> 
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard7" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard7" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                     <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Bản tin hằng ngày  <div class="badge badge-rounded bg-green">  2 New       </div></h3> 
                    </div>
                    <div class="card-body no-padding">
                     
                      <!-- Item-->
                      <div class="item"> 
                        <div class="feed d-flex justify-content-between">
                          <div class="feed-body d-flex justify-content-between"><a href="#" class="feed-profile"><img src="image/cuong.jpg" alt="person" class="img-fluid rounded-circle"></a>
                            <div class="content">
                              <h5>Hùng Cường</h5><span>Posted a new blog </span>
                              <div class="full-date"><small>Today 7:30 pm - 14.12.2018</small></div>
                              <div class="CTAs"><a href="#" class="btn btn-xs btn-secondary"><i class="fa fa-thumbs-up"> </i>Like</a><a href="#" class="btn btn-xs btn-secondary"><i class="fa fa-heart"> </i>Love    </a></div>
                            </div>
                          </div>
                          <div class="date text-right"><small>5 min ago</small></div>
                        </div>
                      </div>
                      <!-- Item-->
                      <div class="item clearfix">
                        <div class="feed d-flex justify-content-between">
                          <div class="feed-body d-flex justify-content-between"><a href="#" class="feed-profile"><img src="image/thi.jpg" alt="person" class="img-fluid rounded-circle"></a>
                            <div class="content">
                              <h5>Đình Thi</h5><span>Posted a new blog </span>
                              <div class="full-date"><small>Today 7:35 pm - 14.12.2018</small></div>
                            </div>
                          </div>
                          <div class="date text-right"><small>1 min ago</small></div>
                        </div>
                        <div class="quote has-shadow"> <small><b>Văn Dũ vừa cập nhật giá sản phẩm Lục bộ chầu bia lon.</b></small></div>
                        <div class="CTAs pull-right"><a href="#" class="btn btn-xs btn-secondary"><i class="fa fa-thumbs-up"> </i>Like</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                                <div class="chart col-lg-3 col-12">
                                    <!-- Bar Chart   -->
                                    <div class="bar-chart has-shadow bg-white">
                                        <div class="title"><strong class="text-violet">20.66%</strong><br><small>Trạng thái Server</small></div>
                                        <canvas id="barChartHome"></canvas>
                                    </div>
                                    <!-- Numbers-->
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-green"><i class="fa fa-line-chart"></i></div>
                                        <div class="text"><strong>205</strong><br><small>Login</small></div>
                                    </div>
                                    <div class="statistic d-flex align-items-center bg-white has-shadow">
                                        <div class="icon bg-info"><i class="fa fa-save"></i></div>
                                        <div class="text"><strong>873 Mb</strong><br><small>Dung lượng đĩa</small></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Charts Section-->
                    <section class="charts" style="padding-bottom: 0; padding-top: 20px;background-color:  #eef5f9; ">
                        <div class="container-fluid">
                            <div class="row">
                                

                                
                                 <!-- Check List -->
                                <div class="col-lg-4">
                                    <div class="checklist card">
                                        <div class="card-close">
                                            <div class="dropdown">
                                                <button type="button" id="closeCard5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                                <div aria-labelledby="closeCard5" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                            </div>
                                        </div>
                                        <div class="card-header d-flex align-items-center">           
                                            <h2 class="h3">Danh sách công việc tuần 3 tháng 12 </h2>
                                        </div>
                                        <div class="card-body no-padding">
                                            <div class="item d-flex">
                                                <input type="checkbox" id="input-1" name="input-1" class="checkbox-template">
                                                <label for="input-1">Cập nhật món ăn mới - 3 món (Đạt)</label>
                                            </div>
                                            <div class="item d-flex">
                                                <input type="checkbox" id="input-2" name="input-2" class="checkbox-template">
                                                <label for="input-2">Kiểm tra , phản hồi các ý kiến của khách hàng (Cường).</label>
                                            </div>
                                            <div class="item d-flex">
                                                <input type="checkbox" id="input-3" name="input-3" class="checkbox-template">
                                                <label for="input-3"> Lập báo cáo quý 4 (Thi).</label>
                                            </div>
                                            <div class="item d-flex">
                                                <input type="checkbox" id="input-4" name="input-4" class="checkbox-template">
                                                <label for="input-4">Quản lí thêm thành viên (Dũ).</label>
                                            </div>
                                            <div class="item d-flex">
                                                <input type="checkbox" id="input-5" name="input-5" class="checkbox-template">
                                                <label for="input-5">Cập nhật món ăn (Đạt).</label>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                 <div class="col-lg-8">
                                <div class="project">
                            
                              <div class="row bg-white has-shadow">
 
                                    <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">


                                        <div class="project-title d-flex align-items-center">
                                            <div class="image has-shadow"><img src="image/dat.jpg" alt="..." class="img-fluid"></div>
                                            <div class="text">
                                                <h3 class="h4">Đặng Trần Đạt</h3><small>Leader</small>
                                            </div>
                                        </div>
                                        <div class="project-date"><span class="hidden-sm-down">Truy cập  hôm qua</span></div>
                                    </div>
                                    <div class="right-col col-lg-6 d-flex align-items-center">
                                        <div class="time"><i class="fa fa-clock-o"></i>12:00 PM </div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                        <div class="project-progress">
                                            <div class="progress">
                                                <div role="progressbar" style="width: 45%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                                            </div>
                                        </div>



                                    </div>
                            </div>
                            
                            </div>
                            <!-- Project-->
                            <div class="project">
                                <div class="row bg-white has-shadow">
                                    <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                        <div class="project-title d-flex align-items-center">
                                            <div class="image has-shadow"><img src="image/cuong.jpg" alt="..." class="img-fluid"></div>
                                            <div class="text">
                                                <h3 class="h4">Phạm Hùng Cường</h3><small>Member</small>
                                            </div>
                                        </div>
                                        <div class="project-date"><span class="hidden-sm-down">Đang truy cập</span></div>
                                    </div>
                                    <div class="right-col col-lg-6 d-flex align-items-center">
                                        <div class="time"><i class="fa fa-clock-o"></i>8:00 AM </div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>30</div>
                                        <div class="project-progress">
                                            <div class="progress">
                                                <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                                                <!-- Project-->
                            <div class="project">
                                <div class="row bg-white has-shadow">
                                    <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                        <div class="project-title d-flex align-items-center">
                                            <div class="image has-shadow"><img src="image/du.jpg" alt="..." class="img-fluid"></div>
                                            <div class="text">
                                                <h3 class="h4">Nguyễn Văn Dũ</h3><small>Member</small>
                                            </div>
                                        </div>
                                        <div class="project-date"><span class="hidden-sm-down">Truy cập 1 phút trước</span></div>
                                    </div>
                                    <div class="right-col col-lg-6 d-flex align-items-center">
                                        <div class="time"><i class="fa fa-clock-o"></i>7:59 AM </div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>25</div>
                                        <div class="project-progress">
                                            <div class="progress">
                                                <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- Project-->
                            <div class="project">
                                <div class="row bg-white has-shadow">
                                    <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                        <div class="project-title d-flex align-items-center">
                                            <div class="image has-shadow"><img src="image/thi.jpg" alt="..." class="img-fluid"></div>
                                            <div class="text">
                                                <h3 class="h4">Nguyễn Đình Thi</h3><small>Member</small>
                                            </div>
                                        </div>
                                        <div class="project-date"><span class="hidden-sm-down">Đang truy cập</span></div>
                                    </div>
                                    <div class="right-col col-lg-6 d-flex align-items-center">
                                        <div class="time"><i class="fa fa-clock-o"></i>8:00 AM </div>
                                        <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                        <div class="project-progress">
                                            <div class="progress">
                                                <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            </div>    
                                
                                
                            </div>
                        </div>
                    </section>
                   
                    <!-- Page Footer-->
                    <footer class="main-footer">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6">
                                    <p>Hai Kết Pumb &copy; 1983-2019</p>
                                </div>
                                <div class="col-sm-6 text-right">
                                    <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Group 01</a></p>
                                    <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        <!-- Javascript files-->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/jquery.cookie/jquery.cookie.js"></script>
        <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>-->
        <script src="js/charts-home.js"></script>
        <script src="js/Chart.min.js"></script>
        <script src="js/charts-custom.js"></script>
        <script src="js/front.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
        	  $("#alert").fadeOut(3000);
        });
        </script>
    </body>
</html>