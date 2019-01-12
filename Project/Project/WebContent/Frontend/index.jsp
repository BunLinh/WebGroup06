<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="images/favicon.png">
      <title>Trang Chủ - Three T Healthy Group</title>
      <jsp:include page="header.jsp"></jsp:include>

     </head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <body id="home">
       <div class="wrapper">
         <div class="clearfix"></div>
         <div class="hom-slider">
            <div class="container">
               <div id="sequence">
                  <div class="sequence-prev"><i class="fa fa-angle-left"></i></div>
                  <div class="sequence-next"><i class="fa fa-angle-right"></i></div>
                  <ul class="sequence-canvas">
                     <li class="animate-in">
                        <div class="flat-caption caption1 formLeft delay300 text-cbaienter"><span class="suphead">Three T Healthy</span></div>
                        <div class="flat-caption caption2 formLeft delay400 text-center">
                           <h1>Bạn muốn một cơ thể săn chắc </h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500 text-center">
                            <br><br><br><br><h2>Hãy đến với chúng tôi .<br> <strong>Three T Healthy</strong> sở hữu các phòng tập GYM với những trang bị hiện đại nhất đáp ứng cho bạn </h2>   
                        </div>
                        <div class="flat-button caption4 formLeft delay600 text-center"><a class="more" href="aboutgym.jsp">Tìm hiểu thêm</a></div>
                        <div class="flat-image formBottom delay200" data-duration="5" data-bottom="true"><img src="<%=request.getContextPath()%>/Frontend/images/slider-image-01.png" alt=""></div>
                     </li>
                     <li>
                        <div class="flat-caption caption2 formLeft delay400  text-center">
                           <h1>Bạn đam mê nhịp điệu</h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500  text-center">
                            <h2>Chúng tôi luôn có những vũ công thể hình sẽ chấp cánh cho đam mê của bạn<br> <strong>Thỏa sức nhảy , đập tan năng lượng </strong></h2>
                        </div>
                  
                         <div class="flat-button caption5 formBottom delay600 text-center" style="top:  52%;"><a class="more" href="aboutdance.jsp">Tìm hiểu thêm</a></div>
                        <div class="flat-image formBottom delay200" data-bottom="true"><img src="<%=request.getContextPath()%>/Frontend/images/slider-image-02.png" alt=""></div>
                     </li>
                     <li>
                        <div class="flat-caption caption2 formLeft delay400 text-center">
                           <h1>Tìm kiếm nguồn năng lượng từ bên trong</h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500 text-center">
                            <br><br><h2>Với các chương trình <strong>Yoga</strong> - <strong>Thiền định</strong> - <strong>Giảm cân</strong><br>Chúng tôi sẽ khiến bạn bất ngờ với chính mình</h2>
                        </div>
                         <div class="flat-button caption5 formLeft delay600 text-center" style="top: 55%;"><a class="more" href="aboutyoga.jsp">Tìm hiểu thêm</a></div>
                        <div class="flat-image formBottom delay200" data-bottom="true"><img src="<%=request.getContextPath()%>/Frontend/images/slider-image-03.png" alt=""></div>
                     </li>
                  </ul>
               </div>
            </div>    
         <div class="clearfix"></div>
       </div>        
           </div>

          
      <!-- Bootstrap core JavaScript==================================================-->
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery-1.10.2.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="<%=request.getContextPath()%>/Frontend/js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/script.min.js" ></script>
   </body>
         <div class="footer" style="opacity:0.8;background-color: black;margin-bottom:-87px ;position: fixed;bottom: 0;left: 0;width: 100%;">   
         <jsp:include page="footer.jsp"></jsp:include>
        </div>
</html>