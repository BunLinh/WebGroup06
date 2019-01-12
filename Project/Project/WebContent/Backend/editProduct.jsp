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
<title>Quản lý sản phẩm</title>
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
					<h3 class="text-primary">Sửa sản phẩm</h3>
				</div>
			</div>
			<!-- End Bread crumb -->
			<!-- Container fluid  -->
			<div class="container-fluid">
				<!-- Start Page Content -->

				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<div class="form-validation">

									<form
										action="<%=request.getContextPath()%>/ManagerProduct?loai=edit"
										method="post">
										<div class="form-group row">
											<label class="col-lg-4 col-form-label" for="val-productID">Mã
												sản phẩm </label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="val-productID"
													name="productID" placeholder="Nhập mã sản phẩm.."
													required="required">

											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-4 col-form-label" for="val-productName">Tên
											</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="val-productName"
													name="productName" placeholder="Nhập tên.."
													required="required">

											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-4 col-form-label"
												for="val-productImages">Hình ảnh </label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="productImages"
													name="productImages" placeholder="Hình ảnh.."
													required="required">

											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-4 col-form-label" for="val-productPrice">Giá
											</label>
											<div class="col-lg-6">
												<input type="number" class="form-control" id="productPrice"
													name="productPrice" placeholder="Nhập giá.."
													required="required">

											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-4 col-form-label" for="val-subCategory">Mã
												danh mục con </label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="val-subCategory"
													name="subCategoryID" placeholder="Nhập mã.."
													required="required">

											</div>
										</div>
										<div class="offset-sm-3 col-md-9">
											<button type="submit" class="btn btn-success" name="command"
												value=editProduct>
												<i class="fa fa-check"></i> Chấp nhận
											</button>
											<a href="quanlysanpham.jsp"><button type="button"
													class="btn btn-inverse">Hủy bỏ</button></a>
										</div>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- End PAge Content -->
			</div>
			<!-- End Container fluid  -->
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


	<!-- Form validation -->
	<script src="js/lib/form-validation/jquery.validate.min.js"></script>
	<script src="js/lib/form-validation/jquery.validate-init.js"></script>
	<!--Custom JavaScript -->
	<script src="js/scripts.js"></script>

</body>

</html>