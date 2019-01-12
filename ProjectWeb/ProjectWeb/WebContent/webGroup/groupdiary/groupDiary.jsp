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
	margin-top: 100px; text-align : center;
	margin-top: 50px;
	color: #104c10;
	text-align: center;
	
}
.linh{
color: #fed136;
}
</style>
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
<link href="<%=request.getContextPath()%>/webGroup/about/css/agency.min.css"
	rel="stylesheet">
</head>
<body id="page-top">
	<jsp:include page="../menu/menu.jsp"></jsp:include>

	<!-- Header -->
	<header class="masthead">
	<div class="container">
	
	<section id="about">
	 <div class="container">
	   <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">GroupDiary</h2>
           
          </div>
        </div>
	 <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                <div style="width: 190px; height: 200px;" class="timeline-image">
                <a class="linh" href="<%=request.getContextPath()%>/groupdiary/groupDiary1.jsp">
                  <img style="height: 170px;" class="rounded-circle img-fluid" src="img/team_1.jpg" alt="">
                  </a>
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4 class="subheading">Tuần 1</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Xây dựng giao diện web bằng html </p>
					
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/webGroup/img/about/2.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4 class="subheading">Tuần 2</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Like Japanese, Enjoy freedom, travel with friends, family.
                     Learn more about her with her <a href="https://ltw-ngothimylinh-161.azurewebsites.net">website !</a></p>
                  </div>
                </div>
              </li>
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/webGroup/img/about/3.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4 class="subheading">Tuần 3</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Enjoy freedom, travel with friends, lover, family.
                     Learn more about him with his <a href="https://hungcuong.azurewebsites.net/">website !</a></p>
                </div>
                </div  >
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="<%=request.getContextPath()%>/webGroup/img/about/4.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4 class="subheading">Tuần 4</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">Enjoy freedom, travel with friends, lover, family.
                     Learn more about him with his <a href="https://jsp-dangtrandat.azurewebsites.net/">website !</a></p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
	
	</div>
	</section>
		</div>
		</header>
</body>
</html>