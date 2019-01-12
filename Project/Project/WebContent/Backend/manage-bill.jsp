<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Cart"%>
<%@page import="model.Item"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.Product"%>
<%@page import="dao.BillDAOImpl"%>
<%@page import="model.Bill"%>
<%@page import="java.util.Map"%>
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
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>Quản lý giỏ hàng</title>
<!-- Bootstrap Core CSS -->
<link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/helper.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
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

.button2 {
	background-color: #f44336;
}
/* Style The Dropdown Button */
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 6px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 130px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
#view{
color: white;
padding: 7px;
    background-color: #1eacbe;
    }
#delete {
color: white;
padding: 8px;
    background-color: red;
}
</style>
</head>

<body class="fix-header fix-sidebar">
	<!-- Preloader - style you can find in spinners.css -->
	<%
		NumberFormat nf = NumberFormat.getInstance();
		nf.setMinimumIntegerDigits(0);
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" /> </svg>
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
		<%
			ProductDAOImpl daoProduct = new ProductDAOImpl();
			BillDAOImpl daoBill = new BillDAOImpl();
		%>
		<div class="page-wrapper">
			<!-- Bread crumb -->
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">Quản Lý đơn hàng</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Quản Lý</a></li>
						<li class="breadcrumb-item "><a href="javascript:void(0)">Cửa hàng</a></li>
						<li class="breadcrumb-item ">Quản Lý Đơn Hàng</li>

					</ol>
				</div>
			</div>
			<!-- End Bread crumb -->
			<!-- Container fluid  -->
			<div class="container-fluid">
				<!-- Start Page Content -->
				<a class="btn btn-primary" href="form-add-bill.jsp"> + Thêm sản
					phẩm</a>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="table-responsive m-t-40">
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Mã đơn hàng</th>
												<th style="width: 150px">Tên khách hàng</th>
												<th>Tên sản phẩm</th>
												<th>Tổng tiền</th>
												<th>Địa chỉ:</th>
												<th >Tình trạng</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Mã đơn hàng</th>
												<th style="width: 150px">Tên khách hàng</th>
												<th>Tên sản phẩm</th>
												<th>Tổng tiền</th>
												<th>Địa chỉ:</th>
												<th>Tình trạng</th>
											</tr>
										</tfoot>
										<tbody>
											<%
												for (Bill listBill : daoBill.getListBill()) {
											%>
											<tr>
												<td><%=listBill.getBill_id()%></td>
												<td><%=listBill.getCustomer().getFullname()%></td>
												<td><%=listBill.getProduct().getName()%></td>
												<td><%=nf.format(listBill.getTotal())%>VNĐ</td>
												<td><%=listBill.getAddress_order()%></td>
												<td title="xem chi tiết"><a
													href="manage-detailbill.jsp?command=view&bill_id=<%=listBill.getBill_id()%>" id="view"><i
														class="glyphicon glyphicon-eye-open"></i></a>
														<a href="<%=request.getContextPath()%>/DeleteBillServlet?bill_id=<%=listBill.getBill_id()%>"><i class="fa fa-remove" id="delete"></i></a> <!--            <a><button class="button button1">Hoàn hành</button></a>  -->
													<div class="dropdown">
													<!-- <span>	<button class="dropbtn">Đang xác nhận</button></span>
														<div class="dropdown-content" style="text-align: left; ">
															<a href="#">Đang xác nhận</a> 
															<a href="#">Đang giao</a> 
															<a href="#">Hoàn thành</a>
														</div> -->
													</div></td>
											</tr>
											<%
												}
											%>
											<%
												for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()) {
													for (Bill listBill : daoBill.getListBill()) {
											%>
											<tr>
												<td><%=list.getValue().hashCode()%></td>
												<td><%=listBill.getCustomer().getFullname()%>"</td>
												<td><%=list.getValue().getProduct().getName()%></td>
												<td><%=nf.format(listBill.getTotal())%>VNĐ</td>
												<td><%=listBill.getAddress_order()%></td>
												<td><a
													href="manage-detailbill.jsp?command=view&bill_id=<%=listBill.getBill_id()%>">
													<i	class="glyphicon glyphicon-eye-open" id="view"></i></a>
													<a href="<%=request.getContextPath()%>/DeleteBillServlet?bill_id=<%=listBill.getBill_id()%>"><i class="fa fa-remove" id="delete"></i></a> 
													</tr>
											<%
												}
												}
											%>

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
			<footer class="footer">
				© 2018 Hệ thống chỉnh sữa từ Three T Healthy Group . Template thiết
				kế bởi <a href="https://colorlib.com">Colorlib</a>
			</footer>
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
	<script
		src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
	<script
		src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
	<script
		src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script
		src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script
		src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script
		src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
	<script
		src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
	<script src="js/lib/datatables/datatables-init.js"></script>
</body>

</html>