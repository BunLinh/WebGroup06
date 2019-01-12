<%@page import="model.ProductTri"%>
<%@page import="dao.ProductDAOTri"%>
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
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>ManagerProduct</title>
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
<!-- button edit, delete -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</head>

<body class="fix-header fix-sidebar">
	<!-- Preloader - style you can find in spinners.css -->
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
		<div class="page-wrapper">
			<!-- Bread crumb -->
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">Product</h3>
				</div>
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
				<!-- Start Page Content -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Product</h4>
								<h6 class="card-subtitle">Export data to Copy, CSV, Excel,
									PDF & Print</h6>
								<a href="addProduct.jsp"
									class="btn btn-primary a-btn-slide-text"> <span
									class="glyphicon glyphicon-add" aria-hidden="true"></span> <span><strong>Add
											Product</strong></span>
								</a>
								<div class="table-responsive m-t-40">
									<%
										ProductDAOTri productDAO = new ProductDAOTri();
									%>
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>

											<tr>
												<th>Product_ID</th>
												<th>Name</th>
												<th>Images</th>
												<th>Price</th>
												<th>Sub_ID</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Product_ID</th>
												<th>Name</th>
												<th>Images</th>
												<th>Price</th>
												<th>Sub_ID</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</tfoot>

										<tbody>
											<%
												for (ProductTri product : productDAO.getListProduct()) {
											%>
											<tr>
												<th><%=product.getProductID()%></th>
												<th><%=product.getProductName()%></th>
												<th><%=product.getProductImages()%></th>
												<th><%=product.getProductPrice()%></th>
												<th><%=product.getSubCatelogyID()%></th>
												<th><a href="editProduct.jsp"
													class="btn btn-primary a-btn-slide-text"> <span
														class="glyphicon glyphicon-edit" aria-hidden="true"></span>
														<span><strong>Edit</strong></span>
												</a></th>
												<th><a
													href="<%=request.getContextPath()%>/ManagerProduct?loai=delete&productID=<%=product.getProductID() %>"
													class="btn btn-primary a-btn-slide-text" method="post">
														<span class="glyphicon glyphicon-remove"
														aria-hidden="true"></span> <span><strong>Delete</strong></span>
												</a></th>
											</tr>


											<%
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
				© Template designed by <a href="https://colorlib.com">Colorlib</a>
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