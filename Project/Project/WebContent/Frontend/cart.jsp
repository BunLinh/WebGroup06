<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Cart"%>
<%@page import="model.Item"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map" %>
<%@page import="java.text.NumberFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>Giỏ hàng</title>

</head>
<body>
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>
		<div class="clearfix"></div>
		 <%
		 NumberFormat nf = NumberFormat.getInstance();
			nf.setMinimumIntegerDigits(0);
                           Cart cart = (Cart) session.getAttribute("cart");
                           if(cart == null){
                           	cart = new Cart();
                           	session.setAttribute("cart", cart);
                           } %>
		<div class="container_fullwidth">
			<div class="container shopping-cart">
				<div class="row">
					<div class="col-md-12">
						<h1 class="title" style="font-size: 48px; font-weight:bold; text-align: center;color: orange;">Giỏ hàng</h1>
						<div class="clearfix"></div>
						<table class="shop-table">
							<thead>
								<tr>
									<th>Hình ảnh</th>
									<th>Chi tiết sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th>Xóa sản phẩm</th>
								</tr>
							</thead>
							<tbody>
							<%for(Map.Entry<String,Item> list : cart.getCartItems().entrySet()){ %>
								<tr>
									<td><img src="<%=list.getValue().getProduct().getImages() %>"
										alt=""></td>
									<td>
										<div class="shop-details">
											<div class="productname"><%=list.getValue().getProduct().getName() %></div>
											<p>
												 02 Review(s)
											</p>
										</div>
									</td>
									
									<td><h5> <%=nf.format(list.getValue().getProduct().getPrice()) %>VNĐ</h5></td>
									<td>
									<div class="cart_quantity_button">
									<button style="padding:8px 8px"><a class="cart_quantity_up" href="<%=request.getContextPath() %>/CartServlet?command=plus&product_id=<%=list.getValue().getProduct().getProduct_id()%>"> + </a></button>
									<input style="padding:8px 8px"
										class="cart_quantity_input" type="text" name="quantity"
										value="<%=list.getValue().getQuantity() %>" autocomplete="off" size="2"> 
										<button style="padding:8px 8px"><a class="cart_quantity_down" href="<%=request.getContextPath() %>/CartServlet?command=sub&product_id=<%=list.getValue().getProduct().getProduct_id()%>"> - </a></button>
										</div>
									</td>
									<td>
										<h5>
											<strong class="red"> <%=nf.format(list.getValue().getProduct().getPrice() * list.getValue().getQuantity()) %>VNĐ</strong>
										</h5>
									</td>
									<td><a href="<%=request.getContextPath() %>/CartServlet?command=removeToCart&product_id=<%=list.getValue().getProduct().getProduct_id()%>"><img src="images/remove.png" alt=""></a>
									</td>
								</tr>
							<%} %>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="6">
										<a href="productlist.jsp"><button class="pull-left" style="boder-color: red; color: orange;">Tiếp tục mua hàng</button></a>
										<a href="checkout.jsp"><button class=" pull-right" style="font-weight:2;border-color: white;background-color: #ff6600; color:white">Thanh toán</button></a>
									</td>
								</tr>
							</tfoot>
						</table>
						
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="footer">
			<jsp:include page="footer.jsp"></jsp:include>
			
		</div>
	</div>
	<!-- Bootstrap core JavaScript==================================================-->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>
	<script defer src="js/jquery.flexslider.js">
		
	</script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js">
		
	</script>
	<script type="text/javascript" src="js/script.min.js">
		
	</script>
</body>
</html>