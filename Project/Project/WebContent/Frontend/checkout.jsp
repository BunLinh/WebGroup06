<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Cart"%>
<%@page import="model.Item"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.Product"%>
<%@page import="model.Customer" %>
<%@page import="java.util.Map"%>
<%@page import="java.text.NumberFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>Thanh toán</title>

</head>
<body>
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>

		<div class="clearfix"></div>
		<%
				
			NumberFormat nf = NumberFormat.getInstance();
			nf.setMinimumIntegerDigits(0);
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
				session.setAttribute("cart", cart);
			}
			
			if(session.getAttribute("currentusername") == null){
				response.sendRedirect("login.jsp");
			}
		%>
		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="special-deal leftbar" style="margin-top: 0;">
							<h4 class="title">
								Special <strong> Deals </strong>
							</h4>
							<%
								for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()) {
							%>
							<div class="special-item">
								<div class="product-image">
									<a href="details.html"> <img
										src="<%=list.getValue().getProduct().getImages()%>" alt="">
									</a>
								</div>
								<div class="product-info">
									<p>
										<a href="details.html"> <%=list.getValue().getProduct().getName()%>
										</a>
									</p>
									<h5 class="price">
										<%=nf.format(list.getValue().getProduct().getPrice())%>VNĐ
									</h5>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
					
 <div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">
					<li class="steps active"><a href="checkout.jsp"
						class="step-title"> Thông tin hóa đơn thanh toán </a>
						<div class="step-description">
							<form action="<%=request.getContextPath() %>/CheckoutServlet" method="post">
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="your-details">
											<h5>Thông tin cá nhân</h5>
											<div class="form-row">
												<label class="lebel-abs"> Họ <strong class="red">
														* </strong>
												</label> <input type="text" class="input namefild" name="firstName">
											</div>
											<div class="form-row">
												<label class="lebel-abs"> Tên <strong class="red">
														* </strong>
												</label> <input type="text" class="input namefild" name="lastName">
											</div>
											<div class="form-row">
												<label class="lebel-abs"> Email <strong class="red">
														* </strong>
												</label> <input type="text" class="input namefild" name="email">
											</div>
											<div class="form-row">
												<label class="lebel-abs"> Số điện thoại <strong
													class="red"> * </strong>
												</label> <input type="text" class="input namefild" name="phone">
											</div>



											<p>
												<span class="input-radio"> <input type="radio"
													name="sendMail">
												</span> <span class="text"> Gởi email thông báo về đơn hàng
												</span>
											</p>

										</div>
									</div>
									<div class="col-md-6 col-sm-6">
										<div class="your-details">
											<h5>Địa chỉ</h5>
											<div class="form-row">
												<label class="lebel-abs"> Thành phố <strong
													class="red"> * </strong>
												</label> <input type="text" class="input namefild" name="city">
											</div>

											<div class="form-row">
												<label class="lebel-abs"> Quốc gia <strong
													class="red"> * </strong>
												</label> <input type="text" class="input namefild" name="country">
											</div>
											<div class="form-row">
												<textarea placeholder="địa chỉ nhận hàng" rows="5"
													style="width: 100%" name="address"></textarea>
											</div>
											<select name="payment_methods">
												<option name="cod" >Thanh toán khi nhận hàng</option>
												<option name="banking">Chuyển khoản ngân hàng</option>
											</select>
											<p class="privacy">
												<span class="input-radio"> <input type="radio"
													name="readandok">
												</span> <span class="text"> Tôi đã đọc kỹ và đồng ý thanh
													toán </span>
											</p>
											<button type="submit" >Thanh Toán</button>
										</div>
									</div>
								</div>
							</form>
						</div></li>

					</ol>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="our-brand">
			<h3 class="title">
				<strong> Our </strong> Brands
			</h3>
			<div class="control">
				<a id="prev_brand" class="prev" href="#"> &lt; </a> <a
					id="next_brand" class="next" href="#"> &gt; </a>
			</div>
			<ul id="braldLogo">
				<li>
					<ul class="brand_item">
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/envato.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/themeforest.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/photodune.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/activeden.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/envato.png" alt="">
								</div>
						</a></li>
					</ul>
				</li>
				<li>
					<ul class="brand_item">
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/envato.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/themeforest.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/photodune.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/activeden.png" alt="">
								</div>
						</a></li>
						<li><a href="#">
								<div class="brand-logo">
									<img src="images/envato.png" alt="">
								</div>
						</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	</div>
	<div class="clearfix"></div>
	<div class="footer">
		<div class="footer-info">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="footer-logo">
							<a href="#"> <img src="images/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<h4 class="title">
							Contact <strong> Info </strong>
						</h4>
						<p>No. 08, Nguyen Trai, Hanoi , Vietnam</p>
						<p>Call Us : (084) 1900 1008</p>
						<p>Email : michael@leebros.us</p>
					</div>
					<div class="col-md-3 col-sm-6">
						<h4 class="title">
							Customer <strong> Support </strong>
						</h4>
						<ul class="support">
							<li><a href="#"> FAQ </a></li>
							<li><a href="#"> Payment Option </a></li>
							<li><a href="#"> Booking Tips </a></li>
							<li><a href="#"> Infomation </a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<h4 class="title">
							Get Our <strong> Newsletter </strong>
						</h4>
						<p>Lorem ipsum dolor ipsum dolor.</p>
						<form class="newsletter">
							<input type="text" name="" placeholder="Type your email....">
							<input type="submit" value="SignUp" class="button">
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-info">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p>
							Copyright © 2012. Designed by <a href="#"> Michael Lee </a> . All
							rights reseved
						</p>
					</div>
					<div class="col-md-6">
						<ul class="social-icon">
							<li><a href="#" class="linkedin"> </a></li>
							<li><a href="#" class="google-plus"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="facebook"> </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
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