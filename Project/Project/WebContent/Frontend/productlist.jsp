

<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.Category"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<!DOCTYPE html>
<html>
<%
	CategoryDAOImpl dao = new CategoryDAOImpl();
%>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>
	<%
		for (Category category : dao.getCategory()) {
	%> <%=category.getName()%> <%
 	}
 %>
</title>

</head>
<body>
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">

					<jsp:include page="category.jsp"></jsp:include>


					<div class="col-md-9">

						<div class="clearfix"></div>
						<%
							ProductDAOImpl daoProduct = new ProductDAOImpl();
							String category_id = request.getParameter("category_id");
							NumberFormat nf = NumberFormat.getInstance();
							nf.setMinimumIntegerDigits(0);

							//cart
							Cart cart = (Cart) session.getAttribute("cart");
							if (cart == null) {
								cart = new Cart();
								session.setAttribute("cart", cart);
							}
							//pages
							int pages = 0, firstResult = 0, maxResult = 0, total = 0;
							if (request.getParameter("pages") != null) {
								pages = Integer.parseInt(request.getParameter("pages"));
							}

							total = (int) daoProduct.countProductByCategory(category_id);
							if (total <= 3) {
								firstResult = 1;
								maxResult = total;
							} else {
								firstResult = (pages - 1) * 3;
								maxResult = 3;
							}

							ArrayList<Product> pageList = daoProduct.getProductByPage(category_id, firstResult, maxResult);
						%>
						<div class="products-grid">
							<div class="toolbar">
								<div class="sorter">
									<div class="view-mode">
										<a href="productlitst.html" class="list"> List </a> <a
											href="#" class="grid active"> Grid </a>
									</div>
									<div class="sort-by">
										Sort by : <select name="">
											<option value="Default" selected>Default</option>
											<option value="Name">Name</option>
											<option value="Price">Price</option>
										</select>
									</div>
									<div class="limiter">
										Show : <select name="">
											<option value="3" selected>3</option>
											<option value="6">6</option>
											<option value="9">9</option>
										</select>
									</div>
								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a>
									<%
										for (int i = 1; i < (total / 8) + 1; i++) {
									%>
									<a
										href="productlist.jsp?category_id=<%=category_id%>&pages=<%=i%>"
										class="active"> <%=i%>
									</a>
									<%
										}
									%>
									<a href="#" class="next-page"> <i class="fa fa-angle-right">
									</i>
									</a>
								</div>
							</div>

							<div class="clearfix"></div>

							<div class="row">
								<%
									if (category_id == null) {
										for (Product product : daoProduct.getListProduct()) {
								%>
								<div class="col-md-4 col-sm-6">
									<div class="products">
										<div class="thumbnail">
											<a href="#"> <img src="<%=product.getImages()%>"
												alt="<%=product.getName()%>">
											</a>
										</div>
										<div class="productname">
											<%=product.getName()%>
										</div>
										<h4 class="price">
											<%=nf.format(product.getPrice())%>VNĐ
										</h4>
										<div class="button_group">
											<a
												href="<%=request.getContextPath() %>/CartServlet?command=add&product_id=<%=product.getProduct_id()%>">
												<button class="button add-cart" type="button" style="    background-color: red; color: white; font-size: 16px;">
													<i class="fa fa-shopping-cart" style="color: white"></i> Thêm vào giỏ hàng
												</button>
											</a>
										</div>
									</div>
								</div>
								<%
									}
									} else {
								%>
							</div>

							<div class="row">
								<%
									for (Product eachProduct : daoProduct.getEachListPRoduct(category_id)) {
								%>
								<div class="col-md-4 col-sm-6">
									<div class="products">
										<div class="thumbnail">
											<a href="#"> <img src="<%=eachProduct.getImages()%>"
												alt="<%=eachProduct.getName()%>">
											</a>
										</div>
										<div class="productname">
											<%=eachProduct.getName()%>
										</div>
										<h4 class="price">
											<%=nf.format(eachProduct.getPrice())%>
										</h4>
										<div class="button_group">
											<a
												href="<%=request.getContextPath() %>/CartServlet?command=plus&product_id=<%=eachProduct.getProduct_id()%>">
												<button class="button add-cart" type="button" style="    background-color: red; color: white; font-size: 16px;">
													<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
												</button>
											</a>
										</div>
									</div>
								</div>
								<%
									}
									}
								%>
							</div>
							<div class="clearfix"></div>
							<div class="toolbar">
								<div class="sorter bottom">
									<div class="sort-by">
										Sort by : <select name="">
											<option value="Default" selected>Default</option>
											<option value="Name">Name</option>
											<option value="
<strong>
#
</strong>
">Price</option>
										</select>
									</div>
									<div class="limiter">
										Show : <select name="">
											<option value="3" selected>3</option>
											<option value="6">6</option>
											<option value="9">9</option>
										</select>
									</div>
								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a>
									<%
										for (int i = 1; i < (total / 8) + 1; i++) {
									%>
									<a
										href="productlist.jsp?category_id=<%=category_id%>&pages=<%=i%>"
										class="active"> <%=i%>
									</a>
									<%
										}
									%>
									<a href="#" class="next-page"> <i class="fa fa-angle-right">
									</i>
									</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="footer">
			<jsp:include page="footer.jsp"></jsp:include>
			
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.10.2.min.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>
	<script defer src="js/jquery.flexslider.js">
		
	</script>
	<script type="text/javascript" src="js/jquery.sequence-min.js">
		
	</script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js">
		
	</script>
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>
</html>
