<%@page import="dao.Requirement_DAO"%>
<%@page import="model.Requirement"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GroupDiary - Group06</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
h2 {
	margin-top: 100px;
	text-align: center;
	margin-top: 50px;
	color: #104c10;
	text-align: center;
}

.linh {
	color: #fed136;
}
</style>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="<%=request.getContextPath()%>/./vendor/fontawesome-free/css/all.min.css"
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
<link href="<%=request.getContextPath()%>/./about/css/agency.min.css"
	rel="stylesheet">
</head>
<body id="page-top">
	<jsp:include page="../menu/menu.jsp"></jsp:include>

	<!-- Header -->
	<header class="masthead">
	<div class="container">
		<section id="about">
		<div class="container">
			<h2
				style="margin-bottom: 50px; text-align: center; color: #104c10; text-align: center;">
				<b>Requirement</b>
			</h2>

			<table class="table table-bordered">
				<!-- hien thi danh sach chức năng và người thực hiện -->
				<%
					ArrayList<Requirement> list = Requirement_DAO.getList();
				%>

				<thead>
					<tr
						style="background: #1e844f; font-size: 18px; text-align: center;">
						<th>STT</th>
						<th>Chức năng</th>
						<th>Người đề xuất</th>
						<th>Người thiết kế</th>
						<th>Người thực hiện</th>
						<th>Thời gian dự kiến</th>
						<th>Trạng thái</th>
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
						<td><%=list.get(i).getFunction()%></td>
						<td><%=list.get(i).getProposer()%></td>
						<td><%=list.get(i).getDesigner()%></td>
						<td><%=list.get(i).getPerformer()%></td>
						<td><%=list.get(i).getIntendTime()%></td>
						<td><%=list.get(i).getStatus()%></td>
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