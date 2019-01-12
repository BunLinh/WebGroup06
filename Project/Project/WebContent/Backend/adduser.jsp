<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Item"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="model.Customer"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.Map" %>
<%@page import="java.text.NumberFormat"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="<%=request.getContextPath()%>/Backend/image/png" sizes="16x16" href="<%=request.getContextPath()%>/Backend/images/favicon.png">
    <title>Quản lý khách hàng</title>
    
    <!-- Bootstrap Core CSS -->
        <link href="<%=request.getContextPath()%>/Backend/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/Backend/css/helper.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/Backend/css/style.css" rel="stylesheet">
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    


<link rel="stylesheet prefetch" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">

<%    
      String errorShow = null;
      if(request.getAttribute("errorusername")=="true"){
          errorShow = "errorusername";	
      }  
      else if(request.getAttribute("errorpassword")=="true"){
          errorShow = "errorpassword";
      }  
      else if(request.getAttribute("errorfullname")=="true"){
          errorShow = "errorfullname";
      }  
      else if(request.getAttribute("errorbirthday")=="true"){
          errorShow = "errorbirthday";
      }  
      else if(request.getAttribute("errorsameusername")=="true"){
          errorShow = "errorsameusername";
      }  
%>
 <script type="text/javascript">
 function showpopup(){ 
        var popupmain = document.getElementById("popup");

         var errorShow = new String("<%=errorShow%>");
         var popup;


         if(new String(errorShow) ==  new String("errorusername").valueOf()){
          popup = document.getElementById("textloidetrong");;
         }
         else if(new String(errorShow) ==  new String("errorpassword").valueOf()){
          popup = document.getElementById("textloimatkhau");;
         }
         else if(new String(errorShow) ==  new String("errorfullname").valueOf()){
          popup = document.getElementById("textloihoten");;
         }
         else if(new String(errorShow) ==  new String("errorbirthday").valueOf()){
          popup = document.getElementById("textloidetrong");;
         }
          else if(new String(errorShow) ==  new String("errorsameusername").valueOf()){
          popup = document.getElementById("textloitrungten");;
         }         
        popup.classList.toggle("hide");             
        popup.classList.toggle("show");         
}
</script>   
<%
    if(request.getAttribute("saveusername")==null){
        request.setAttribute("saveusername","");
    }
    if(request.getAttribute("savepassword")==null){
        request.setAttribute("savepassword","");
    }
    if(request.getAttribute("savefullname")==null){
        request.setAttribute("savefullname","");
    }
    if(request.getAttribute("savebirthday")==null){
        request.setAttribute("savebirthday","");
    }    
%>
</head>

<script type="text/javascript">
$(function () {  
$("#datepicker").datepicker({         
autoclose: true,         
todayHighlight: true 
})
});
</script>
<body class="fix-header fix-sidebar">

    
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            
            <jsp:include page="header.jsp"></jsp:include>
            
        </div>
      
        <!-- Left Sidebar  -->
        <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                
                <jsp:include page="slidebar.jsp"></jsp:include>
                
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->

        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">THÊM KHÁCH HÀNG</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">QUẢN LÝ</a></li>
                        <li class="breadcrumb-item "><a href="javascript:void(0)">Cửa Hàng</a></li>
                        <li class="breadcrumb-item "><a href="javascript:void(0)">Quản Lý Khách Hàng</a></li>
                        <li class="breadcrumb-item ">Thêm Khách Hàng </li>
                    </ol>
                    
                </div>
            </div>
            <!-- End Bread crumb -->
       
            <!-- Container fluid  -->
            <div class="container-fluid">
          
                <!-- Start Page Content -->
                <div class="row">
                
                    <div class="col-12">
                        <div class="card">
                        	
                            <div class="card-body">
                            
                           <a href="<%=request.getContextPath()%>/Backend/quanlykhachhang.jsp" style="width: 100%;"  class="btn btn-primary"> Quay về quản lý khách hàng </a>
                            
                               <div style="margin-left: 40%;">     
                                <% if(request.getAttribute("registersuccess")=="false"){
                                %>
                	   <form action="<%=request.getContextPath()%>/adduser" method="post">
                                
                                <div >
                                  <h5 style="font-size: 18pt;">
                                    Điền Thông Tin Đăng Ký : 
                                  </h5>
                                </div>
                                
                                <!-- Hiển thị thông báo lỗi -->
                                <div class="popup" id="popup" onclick="showpopup()" style="-webkit-animation: fadeOut 6s;animation: fadeOut 6s;left: 0;margin-top: 40px;margin-left: 830px;">
                                    <span class="popuptext" id="textloimatkhau">Mật khẩu không được để trống và phải trên 6 kí tự !</span>    
                                    <span class="popuptext" id="textloihoten">Họ tên phải viết liền không được để trống ,  có dấu hoặc chứa số !</span>    
                                    <span class="popuptext" id="textloidetrong">Vui lòng điền các thông tin còn trống !</span>    
                                    <span class="popuptext" id="textloitrungten">Username này đã có người dùng !<br> Vui lòng đổi username khác nhé !</span>    
                                </div>      

                                <input type="email" style="width: 250px;"  class="form-control"  placeholder="Email ( abc...@gmail.com ) : " name="username" value=<%=request.getAttribute("saveusername")%> >
                                <br><input type="password" style="width: 250px;"  class="form-control"  placeholder="Mật khẩu : " name="password" value=<%=request.getAttribute("savepassword")%>>
                                <br><input  type="text" style="width: 250px;"  class="form-control"  placeholder="Họ tên đầy đủ ( viết liền không dấu ): " name="fullname"  value=<%=request.getAttribute("savefullname")%>>
								<br>
								
								<div id="datepicker" style="width: 250px;" class="input-group date" data-date-format="yyyy/mm/dd"> 
								<input class="form-control" readonly="" type="text" placeholder="Click chọn ngày sinh"name="birthday"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
								</div>
								
								<br><input  style="margin-left: 8%;" class="btn btn-success" style="color: black;" type="submit" value="Thêm khách hàng" />
                       </form>     
                           <%}else{ %>          
                           
                              <form>
                            	<h1 style="margin-left: -1%;font-size: 20pt;" > Đăng Ký Thành Công !</h1 >
                              
                              </form>
                           <%} %>          
                                             
                          </div>
                            
                      </div>
                    </div>
                        
                        
                    </div>
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 Hệ thống chỉnh sữa từ Three T Healthy Group . Template thiết kế bởi <a href="https://colorlib.com">Colorlib</a></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
  
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="<%=request.getContextPath()%>/Backend/js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%=request.getContextPath()%>/Backend/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<%=request.getContextPath()%>/Backend/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="<%=request.getContextPath()%>/Backend/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<%=request.getContextPath()%>/Backend/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<%=request.getContextPath()%>/Backend/js/scripts.js"></script>


    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/datatables.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="<%=request.getContextPath()%>/Backend/js/lib/datatables/datatables-init.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
  
    <%
       if(request.getAttribute("showPopup")=="true"){
           %>
           <script>
               showpopup();
           </script>
           <%
       }
%>  
     <link rel="stylesheet" href="<%=request.getContextPath()%>/Frontend/css/addcss.css">    

</body>

</html>