<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <title>Thêm đơn hàng</title>
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
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
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
                    <h3 class="text-primary">Thêm sản phẩm</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
            
               <form class="form p-t-20" action="<%=request.getContextPath() %>/AddBillServlet" method="post">
                <div class="row">
              
                    <div class="col-lg-6" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" style="background:#5c4ac7 none repeat scroll 0 0; border-color: #5c4ac7; border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0; 
                                padding: .75rem 1.25rem; text-align: :center; color: white; font-size: 30px">
                                Form nhập thông tin khách hàng</h4>
                                
                                	<div class="form-group">
                                        <label for="exampleInputuname">Mã khách hàng</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputuname"  name="customer_id">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputuname">Tên khách hàng</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputuname"  name="customer_name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email:</label>
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="exampleInputEmail1"  name="email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd1">Ngày mua hàng</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="pwd1" name="date_buy">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Địa chỉ</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="address">
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-6" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" style="background:#5c4ac7 none repeat scroll 0 0; border-color: #5c4ac7; border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0; 
                                padding: .75rem 1.25rem; text-align: :center; color: white; font-size: 30px">
                                Form nhập thông tin hóa đơn</h4>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Tên sản phẩm</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputEmail1"  name="product_name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd1">Số lượng</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="pwd1" name="quantity">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd2">Giá</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="pwd2"  name="price">
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Tổng tiền</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputEmail1"  name="total">
                                        </div>
                                    </div>
                                     
                                    <div class="form-group">
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox1" type="checkbox">
                                            <label for="checkbox1"> Remember me </label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Thêm sản phẩm</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy bỏ</button>
                                
                            </div>
                            
                        </div>
                        </form>
                    </div>
                    
                  
                    
                </div>
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

</body>

</html>