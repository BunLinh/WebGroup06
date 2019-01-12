<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.Category"%>
<%@page import="model.Cart"%>
<%@page import="model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.NumberFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Website Group 05 - LTW2018 - NLU</title>

 <link href="<%=request.getContextPath()%>/Frontend/css/bootstrap.css" rel="stylesheet">
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
      <link href="<%=request.getContextPath()%>/Frontend/css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="<%=request.getContextPath()%>/Frontend/css/flexslider.css" type="text/css" media="screen"/>
      <link href="<%=request.getContextPath()%>/Frontend/css/sequence-looptheme.css" rel="stylesheet" media="all"/>
      <link href="<%=request.getContextPath()%>/Frontend/css/style.css" rel="stylesheet">


<style media="screen" type="text/css">
.mega-menu-links>li>a, ul.dropdown-menu>li>a {
	color: black;
	text-align: start;
}

hover a, .nav .dropdown-hover a:hover {
	border-color: white;
}

.mega-menu, .navbar-nav>li>.dropdown-menu {
	left: 0%;
	min-width: 300px;
	max-width: 350px;
	padding: 20px;
	border: 1px solid #f7544a;
	border-radius: 10px;
}

.dropdown-menu {
	min-width: 300px;
	position: absolute;
	list-style: none;
	opacity: 0.95;
}
</style>
</head>
<body>
	<div class="header">
		<%
			CategoryDAOImpl dao = new CategoryDAOImpl();
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="logo">
						<a href="index.html"><img src="<%=request.getContextPath()%>/Frontend/images/logo.png" alt="FlatShop"></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-10">
					<div class="header_top">
						<div class="row">
							<%
								if (session.getAttribute("currentusername") != null) {
							%>
							<div class="col-md-5">
								<ul class="usermenu">
									<li><a class="log"><%=session.getAttribute("currentusername")%></a></li>
									<li><a href="Logout" class="reg">Đăng xuất</a></li>
								</ul>
							</div>
							<%
								} else {
							%>
							<div class="col-md-5">
								<ul class="usermenu">
									<li><a href="<%=request.getContextPath()%>/Frontend/login.jsp" class="log">Đăng nhập</a></li>
									<li><a href="<%=request.getContextPath()%>/Frontend/register.jsp" class="reg">Đăng ký</a></li>
								</ul>
							</div>
							<%
								}
							%>
						</div>
					</div>
					<div class="clearfix"></div>

					<%
						NumberFormat nf = NumberFormat.getInstance();
						nf.setMinimumIntegerDigits(0);
						Cart cart = (Cart) session.getAttribute("cart");
						if (cart == null) {
							cart = new Cart();
							session.setAttribute("cart", cart);
						}
					%>
					<div class="header_bottom">
						<ul class="option">

							<li class="option-cart"><a href="#" class="cart-icon">cart
									<span class="cart_no"><%=cart.countItem()%></span>
							</a>
								<ul class="option-cart-item">
									<%
										for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()) {
									%>
									<li>
										<div class="cart-item">
											<div class="image">
												<img src="<%=list.getValue().getProduct().getImages()%>"
													alt="">
											</div>
											<div class="item-description">
												<p class="name"><%=list.getValue().getProduct().getName()%></p>
												<p>
													Size: <span class="light-red">One size</span><br>Số
													lượng: <span class="light-red"><%=list.getValue().getQuantity()%></span>
												</p>
											</div>
											<div class="right">
												<p class="price"><%=nf.format(list.getValue().getProduct().getPrice())%>VNĐ
												</p>
												<a
													href="<%=request.getContextPath()%>/CartServlet?command=remove&product_id=<%=list.getValue().getProduct().getProduct_id()%>"
													class="remove"><img src="<%=request.getContextPath()%>/Frontend/images/remove.png"
													alt="remove"></a>
											</div>
										</div>
									</li>
									<%
										}
									%>

									<li><span class="total">Tổng cộng: <strong><%=nf.format(cart.totalCart())%>VNĐ</strong></span>
									<button class="checkout" style="float:left; border-color:red "
											onClick="location.href='cart.jsp'">Giỏ hàng</button>
									<a href="<%=request.getContextPath() %>/Frontend/checkout.jsp"><button class="checkout" style="background-color: #ff6600;color: white; font-weight: 2;border-color: white"
											onClick="location.href='checkout.jsp'">Thanh toán</button></a></li>
								</ul></li>
						</ul>

						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span><span
									class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
						</div>

						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Trang chủ</a></li>
								<li><a href="about.jsp">Giới thiệu</a></li>
								<li class="dropdown"><a href=""
									class="dropdown-toggle" data-toggle="dropdown">Danh muc </a>
									<div class="dropdown-menu">
										<ul class="mega-menu-links">
												<li><a href="<%=request.getContextPath()%>/Frontend/aboutgym.jsp">GYM</a></li>
												<li><a href="<%=request.getContextPath()%>/Frontend/aboutyoga.jsp">YOGA</a></li>
												<li><a href="<%=request.getContextPath()%>/Frontend/aboutdance.jsp">DANCE</a></li>
												<li><a href="<%=request.getContextPath()%>/Frontend/abougiamcan.jsp">GIẢM CÂN</a></li>
												<li><a href="<%=request.getContextPath()%>/Frontend/abouttangcan.jsp">TĂNG CÂN</a></li>
												<li><a href="<%=request.getContextPath()%>/Frontend/abouthuanluyen.jsp">HUẤN LUYỆN CÁ NHÂN</a></li>

										</ul>
									</div></li>
	<%
									for (Category category : dao.getCategory()) {
								%>
								<li class="dropdown"><a
									href="productlist.jsp?category_id=<%=category.getId()%>"
									class="dropdown-toggle" data-toggle="dropdown"><%=category.getName()%></a>
									<div class="dropdown-menu mega-menu" style="width: 350px;">
										<div class="row">
											<ul class="mega-menu-links">
												<!-- fix cung css -->
												<%
													for (Category sub_category : dao.getSubCategory(category.getId())) {
												%>
												<li><a href="productlist.jsp?category_id=<%=sub_category.getId()%>"><%=sub_category.getName()%></a></li>
												<%
													}
												%>
											</ul></li>
								<%
									}
								%>
								<li><a href="contact.jsp">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER TUAN ADD -->

</body>
</html>