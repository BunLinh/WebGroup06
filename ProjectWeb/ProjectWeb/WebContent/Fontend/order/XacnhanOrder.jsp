<%@page import="model.Account"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thông tin đăng ký</title>
<style type="text/css">
div.container1 {
	margin-left: 400px;
	padding: 16px;
	width: 500px;
	border: 2px groove red;
	border-radius: 12px;
	border-:;
	margin-top: 55px;
	
	
}
.linh1{
font-size: 20px;
margin-left: 50px;
}
div.linh {
	margin-top: 50px;
	text-align: center;
}
.img1{
width:8%;
 border: 1px #d4d4d4 solid;
    padding: 7px;
    border-radius:60%;
    -moz-border-radius:60%;
    -webkit-border-radius:60%;
}
div.p{
text-align: center;}
</style>
</head>
<body>
 	<%@include file="/Fontend/menu/menu.jsp" %>
	<div class="linh">
	<%if(session!= null){
                            	Account account= (Account) session.getAttribute("account");	
                            	if(account!=null){
                            
                            	%>
		<h2>Xác nhận </h2>
		<h2>
			Thông tin đăng nhập của bạn bao gồm:
			</h2>
			<img  class= "img1" alt="" src="<%=request.getContextPath()%>/Fontend/img/menu/donuong/n1.jpg">
	</div>
	<%String username= request.getParameter("name") ;
	BookDAO dao= new BookDAO();
	ResultSet rs= dao.searchForName(account.getUsername());
	while (rs.next()) {
	%>
	<div class="container1">

		<p class="linh1">
			Tên người đặt: 
			<%out.print(rs.getString(2));%>
		</p>
		<p class="linh1">
			Ghi chú đặt bàn:
			<%out.print(rs.getString(3));%>
		</p>
		<p class="linh1">
			Mã khuyến mãi:
			<%out.print(rs.getString(4));%>
		</p>
		<p class="linh1">
			Ngày đặt:
			<%out.print(rs.getString(5));%>
		</p>
		<p class="linh1">
			Số lượng bàn:
			<%out.print(rs.getString(6));%>
		</p>
		<p class="linh1">
			Đặt món :
			<%out.print(rs.getString(7));%>
		</p>
		<p class="linh1">
			Số lượng món :
			<%out.print(rs.getString(8));%>
		</p>
		<% int a= Integer.parseInt(rs.getString(6))*50000;
		%>
		<p style="margin-left:180px;font-size: 20px; "> Tổng: <%out.print(a); %>
		</p>
	</div>
	<%}}} %>
	<a href="<%=request.getContextPath()%>/Fontend/order/complete.jsp"><button style="margin-left: 610px;margin-top: 50px;" type="button" class="btn btn-warning" >Đồng ý</button></a>
</body>
</html>