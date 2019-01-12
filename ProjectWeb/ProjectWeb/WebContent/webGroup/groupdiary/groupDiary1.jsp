<%@page import="model.ThanhVienGroup"%>
<%@page import="dao.ThanhVienGroup_DAO"%>
<%@page import="java.util.ArrayList"%>
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

<title>Week1-Group06</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<%=request.getContextPath()%>/vendor/fontawesome-free/css/all.min.css"
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
<link href="<%=request.getContextPath()%>/about/css/agency.min.css"
	rel="stylesheet">


<style>

}
</style>
</head>

<body id="page-top">

	<jsp:include page="../menu/menu.jsp"></jsp:include>

	<!-- Header -->
	<header class="masthead">
		<div class="container">


			<!-- About -->
			<section id="about">
				<div class="container">
					<h2
						style="margin-bottom: 50px; text-align: center; color: #104c10; text-align: center;">
						<b>Group Diary-Week1</b>
					</h2>

					<table class="table table-bordered">
						<!-- hien thi danh sach cong viec làm từng người trong tuần 1 -->
						<%
							ArrayList<ThanhVienGroup> list = ThanhVienGroup_DAO.getListWeek1();
						%>
						<thead>
							<tr style="background: #1e844f;font-size: 18px; text-align: center;">
								<th>STT</th>
								<th>Mã SV</th>
								<th>Họ tên</th>
								<th>Công việc được giao</th>
								<th>Kết quả</th>
								<th>Tiến độ</th>
							</tr>
						</thead>
						<tbody>
							<%
								int count = 0;
								for (int i = 0; i < list.size(); i++) {
									count++;
							%>
							<tr style="font-size: 20px;">

								<td><%=count%></td>
								<td><%=list.get(i).getMssv()%></td>
								<td><%=list.get(i).getName()%></td>
								<td><%=list.get(i).getWork()%></td>
								<td><%=list.get(i).getResult()%></td>
								<td><%=list.get(i).getProgress()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>

			</section>


		</div>

	</header>




	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website 2018</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-facebook-f"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-linkedin-in"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script src="<%=request.getContextPath()%>/js/jqBootstrapValidation.js"></script>
	<script src="<%=request.getContextPath()%>/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="<%=request.getContextPath()%>/js/agency.min.js"></script>

</body>

</html>
