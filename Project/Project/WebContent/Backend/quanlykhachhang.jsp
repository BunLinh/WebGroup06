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
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Quản lý khách hàng</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
    .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 3px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button2 {background-color: #f44336;}
</style>
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
     <%
		CustomerDAO CustomerDAO = new CustomerDAO();
     	ArrayList<Customer> listCustomer = CustomerDAO.getCustomer();
                           %>
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            
            <jsp:include page="header.jsp"></jsp:include>
            
        </div>
        <!-- End header header -->
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
                    <h3 class="text-primary">QUẢN LÝ KHÁCH HÀNG</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">QUẢN LÝ</a></li>
                        <li class="breadcrumb-item "><a href="javascript:void(0)">Cửa Hàng</a></li>
                        <li class="breadcrumb-item ">Quản Lý Khách Hàng</li>

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
                                <h4 class="card-title">Danh sách khách hàng</h4>
                                <h6 class="card-subtitle">Đã chuyển hóa dữ liệu cho chức năng Copy, CSV, Excel, PDF & Print</h6>
                               	<a href="adduser.jsp" class="btn btn-primary"> THÊM NGƯỜI DÙNG </a>
                                <div class="table-responsive m-t-40">        
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">

                                        <thead>
                                            <tr>
                                                <th>Email khách hàng</th>
                                                <th>Mật khẩu</th>
                                                <th>Họ tên</th>
                                                <th>Ngày sinh</th>
                                                <th>Các đơn hàng đã mua</th>
                                                <th>Thao tác</th>
                                                
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                        <%for(Customer cus: listCustomer){%>
                                            <tr>
                                            
                                            <td style="color:black;"><%=cus.getEmail() %> </td>
                                            <td><input type="password" value=<%=cus.getPassword() %> disabled="true" style="border: none;"/>
                                            <a href="<%=request.getContextPath()%>/Backend/resetpassword.jsp?username=<%=cus.getEmail() %>" class="btn btn-danger" >ĐẶT LẠI</a>
                                            </td>
                                            <td style="color:black;"><%=cus.getFullname() %>
                                            <br><a href="<%=request.getContextPath()%>/Backend/changename.jsp?username=<%=cus.getEmail()%>&fullname=<%=cus.getFullname()%>" class="glyphicon glyphicon-edit" style="margin-left:5px;" >SỬA</a>
                                            </td>
                                            <td style="color:black;"><%=cus.getBirthday() %>
                                            <a href="<%=request.getContextPath()%>/Backend/changebirthday.jsp?username=<%=cus.getEmail() %>&birthday=<%=cus.getBirthday()%>" class="glyphicon glyphicon-edit" style="margin-left:5px;" >SỬA</a>
                                            </td>
                                            <td style="color:black;"><a href="">TEST</a></td>
                                            <td>
                    						 <a href="<%=request.getContextPath()%>/Backend/deleteusername.jsp?username=<%=cus.getEmail() %>" class="btn btn-danger" >XÓA EMAIL</a>		
                                            </td>
                                            
                                            </tr>
                                            <%}%>
                                            
                                        </tbody>
                                    </table>
                                   
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
    <script src="js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/scripts.js"></script>


    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="js/lib/datatables/datatables-init.js"></script>
</body>

</html>