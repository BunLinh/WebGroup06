<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Home-Group06</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/webGroup/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<%=request.getContextPath()%>/webGroup/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->

<style>
.dropbtn {
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Group
				06</a>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<%=request.getContextPath()%>/webGroup/Login/Login.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<%=request.getContextPath()%>/webGroup/about/about.jsp">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<%=request.getContextPath()%>/webGroup/groupdiary/groupDiary.jsp">Group
							Diary</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<%=request.getContextPath()%>/index.jsp">Contact</a></li>

					<li class="nav-item">
						<div class="dropdown">
							<button class="dropbtn">PROJECT</button>
							<div class="dropdown-content">
								<a class="nav-link js-scroll-trigger"
									href="<%=request.getContextPath()%>/webGroup/project/project.jsp">Requirement</a>
								<a class="nav-link js-scroll-trigger"
									href="<%=request.getContextPath()%>/Fontend/index.jsp">Project</a>

							</div>
						</div>
					</li>

				</ul>

			</div>

		</div>

	</nav>



	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/webGroup/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/webGroup/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="<%=request.getContextPath()%>/webGroup/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script src="<%=request.getContextPath()%>/webGroup/js/jqBootstrapValidation.js"></script>
	<script src="<%=request.getContextPath()%>/webGroup/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="<%=request.getContextPath()%>/webGroup/js/agency.min.js"></script>

</body>
</html>