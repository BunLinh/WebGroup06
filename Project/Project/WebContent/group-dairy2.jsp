<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhật ký nhóm</title>
<link href="Backend/css/lib/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<body>

       <jsp:include page="menu.jsp"></jsp:include>


	<!-- Bread crumb -->
	<div class="row page-titles">
		<div class="col-md-5 align-self-center">
			<h3 class="text-primary" style="text-align: center">NHẬT KÝ NHÓM HÀNG TUẦN</h3>
		</div>
	</div>

	<div style="margin-left: 120px">
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'London')">Tuần
				1</button>
			<button class="tablinks" onclick="openCity(event, 'Paris')">Tuần
				2</button>
			<button class="tablinks" onclick="openCity(event, 'Tokyo')">Tuần
				3</button>
		</div>
		<div class="container-fluid">
			<!-- Start Page Content -->
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive m-t-40">
								<div id="London" class="tabcontent">
									<jsp:include page="gd1.jsp"></jsp:include>
								</div>

								<div id="Paris" class="tabcontent" style="display: none">
									<jsp:include page="gd2.jsp"></jsp:include>
								</div>

								<div id="Tokyo" class="tabcontent" style="display: none">
									<jsp:include page="gd3.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			function openCity(evt, cityName) {
				var i, tabcontent, tablinks;
				tabcontent = document.getElementsByClassName("tabcontent");
				for (i = 0; i < tabcontent.length; i++) {
					tabcontent[i].style.display = "none";
				}
				tablinks = document.getElementsByClassName("tablinks");
				for (i = 0; i < tablinks.length; i++) {
					tablinks[i].className = tablinks[i].className.replace(
							" active", "");
				}
				document.getElementById(cityName).style.display = "block";
				evt.currentTarget.className += " active";
			}
		</script>
	</div>


</body>
</html>