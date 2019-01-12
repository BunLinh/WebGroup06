<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.CategoryDAOImpl" %>
    <%@page import="model.Category" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<%CategoryDAOImpl dao = new CategoryDAOImpl(); %>

<div class="col-md-3" style="font-family: Arial">
              <div class="category leftbar">
               

				<h1 class="title" style="font-weight: bold; color: orange;font-size: 18px">
                  Categories
                </h1>
                
                <ul style="font-family:border; color: orange;">
                <% for(Category category : dao.getCategory()){ %>
                  <li>
                    <a href="#" style="margin-bottom: 5px; font-size: 12px; font-weight: bold;"><%=category.getName() %></a>
         	        <ul style="margin-left:20px">
         	        	<% for(Category sub_category : dao.getSubCategory(category.getId())){ %>
         	        	<li><a href="productlist.jsp?category_id=<%=sub_category.getId()%>"><%=sub_category.getName() %></a></li>
         	        	<%} %>
         	        </ul>
                  </li>
                  <%} %>
                </ul>
                </div>
              <div class="clearfix">
              </div>
            </div>
</body>
</html>