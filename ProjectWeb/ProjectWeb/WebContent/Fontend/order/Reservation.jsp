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
  <%@include file="/Fontend/menu/menu.jsp" %>

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
                <form action="<%=request.getContextPath()%>/AUDBook" method="post" >
                
                  <div class="row mb-4">
                  <%if(session!= null){
                            	Account account= (Account) session.getAttribute("account");	
                            	if(account!=null){
                            
                            	%>
                    <div class="form-group col-md-4">
                     
                      <label for="name" class="label">Tên</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-person"></span>
                        <input name="name" type="text" class="form-control" id="name" value="<%out.print(account.getUsername());%>">
                      </div>
                      <%}else{
                    	  response.sendRedirect(request.getContextPath()+"/Fontend/login/login.jsp");
                    	  
                      } %>
                    </div>
                  
                    <div class="form-group col-md-4">
                      <label for="email" class="label">Note:</label>
                      <div class="form-field-icon-wrap">
                        <span ></span>
                        <input  type="text" name="description" class="form-control" id="email">
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
                       
                        <input type="text" name="quantity"  class="form-control">
                         
                      </div>
                    </div>
                    
                    <div class="form-group col-md-4">
                      <label for="persons" class="label">Nhập món ăn</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-android-arrow-dropdown"></span>
                        <input  type="text" name="book_product" class="form-control">
                         
                      </div>
                    </div>
                    
                    







                    

                    <div class="form-group col-md-4">
                      <label for="persons" class="label">Số người</label>
                      <div class="form-field-icon-wrap">
                       
                        <input  type="text" name="book_quantity_product" id="persons" class="form-control">
                           
                      </div>
                    </div>
                    
                    
                    <div class="form-group col-md-4">
                      <label for="date" class="label">Ngày</label>
                      <div class="form-field-icon-wrap">
                        <span class="icon ion-calendar"></span>
                        <input  type="text" name="starday" type="text" class="form-control" >
                      </div>
                    </div>
                    
                     <div class="form-group col-md-4">
                      <label for="persons" class="label">Coupon</label>
                      <div class="form-field-icon-wrap">
                        
                        <input  type="text" name="coupon" id="persons" class="form-control">
                          
                       
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
                     <a href="%>"> 
                     <button class="btn btn-primary btn-outline-primary btn-block">Xác nhận</button>
                     </a></div>
                  </div>
                  
                  
                </form>
              </div>
              
            </div>
            
            
            
          </div>
        </div> <!-- .section -->
        <%} %>
        
        
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