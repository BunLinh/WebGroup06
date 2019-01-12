<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đặt hàng thành công</title>

</head>
<body>
<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>
		
		<div style="text-align: center; margin-top: 50px">
			<h1>Chúc mừng quý khách đã mua hàng thành công</h1>
			<h3>Cám ơn quý khách đã mua hàng tại cửa hàng của chúng tôi</h3>
			<h3>Chúng tôi sẽ kiểm tra hàng hóa và giao đến địa chỉ quý khách trong thời gian sớm nhất</h3>
			<h3>Trân trong kính chào!</h3>
		</div>
		<div>
		<a href="productlist.jsp"><button class="pull-center" style="boder-color: red; color:white; background-color:orange;
		 margin-left: 550px; margin-top: 50px;
		padding: 10px 10px;font-size: 20px">Tiếp tục mua hàng</button></a>
				</div>					
		</div>
</body>
</html>