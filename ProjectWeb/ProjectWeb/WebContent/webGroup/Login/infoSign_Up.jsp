<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thông tin đăng ký -Group06</title>
<style type="text/css">
div.container {
	margin-left: 400px;
	padding: 16px;
	width: 500px;
	border: 2px groove red;
	border-radius: 12px;
	border-:;
	margin-top: 55px;
	
	font-size: 20px;
	
}
p{
margin-left: 20px;

}
div.linh {
	margin-top: 80px;
	text-align: center;
}
.img1{
width:15%;
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
	<div class="linh">
		<h2>Chúc mừng bạn đã đăng ký thành công WebSite của Group06</h2>
		<h2>
			Thông tin đăng nhập của bạn bao gồm:
			</h2>
			<img  class= "img1" alt="" src="../img/team/team.jpg">
	</div>
	<div class="container">

		<p>
			FullName : <%=request.getAttribute("name")%>
		</p>
		<p>
			Email :
			<%=request.getAttribute("email")%>
		</p>
		
		<p>
			Username :
			<%=request.getAttribute("username")%>
		</p>
		<p>
			Pass :
			<%=request.getAttribute("pass")%>
		</p>
		
	</div>
	<a href="../index.jsp" style="font-size: 20px;">Comeback</a>
</body>
</html>