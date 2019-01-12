<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhật Ký Hoạt Động Nhóm 05 - LTW 2018</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
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
		<div class="page-wrap">

			<!-- Nav -->
				<jsp:include page="menu.jsp"></jsp:include>

			<!-- Main -->
				<section id="main">

					<!-- Header -->
						<header id="header">
							<div>Code Edited <span>by Quang Tuấn</span></div>
						</header>

					<!-- Gallery -->
						<section id="galleries">

							<!-- Photo Galleries -->
								<div class="gallery">
										<header>
					<div class="tab">
						<button class="tablinks"  onclick="openCity(event, 'London')">Tuần
							1</button>
						<button class="tablinks" onclick="openCity(event, 'Paris')">Tuần
							2</button>
						<button class="tablinks" onclick="openCity(event, 'Tokyo')">Tuần
							3</button>
					</div>
										</header>

										<div id="London" class="tabcontent">
									<jsp:include page="gd1.jsp"></jsp:include>
								</div>

								<div id="Paris" class="tabcontent" style="display: none">
									<jsp:include page="gd2.jsp"></jsp:include>
								</div>

								<div id="Tokyo" class="tabcontent" style="display: none">
									<jsp:include page="gd3.jsp"></jsp:include>
								</div>
						</section>



					<!-- Footer -->
						<footer id="footer">
							<div class="copyright">
								&copy; Design by : <a href="https://templated.co/">TEMPLATED</a>. Edited by <a href="https://pqtuan.azurewebsites.net/">Phạm Quang Tuấn</a>.
							</div>
						</footer>
				</section>
		</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
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

           <script>
           openCity('London', 'London');
           </script>

	</div>


</body>
</html>