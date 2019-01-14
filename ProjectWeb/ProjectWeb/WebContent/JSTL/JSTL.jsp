<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>sql:setDataSource Tag</title>
</head>
<body>
 <%@include file="/Fontend/menu/menu.jsp" %>
	<sql:setDataSource var="db"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://demosqlshop.database.windows.net:1433;databaseName=linhdemoSQL"
		user="linh1212" password="Ngothimylinh1998" />
	<sql:query dataSource="${db}" var="rs">  
SELECT * from PRODUCT;  
</sql:query>

  <div class="row">
  <c:forEach var="table" items="${rs.rows}">  
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-best-receipe-area mb-30">
                            <img src="<c:out value="${table.PRODUCT_URL}"/>" alt="">
                            <div class="receipe-content">
                                <a href="<%=request.getContextPath()%>/Fontend/order/Reservation.jsp">
                                    <h5><c:out value="${table.PRODUCT_NAME}"/></h5>
                                </a>
                                <div class="price000">
                                  <c:out value="${table.PRODUCT_PRICE}"/> VND
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    

                    
    
                    
                        </div>
                    </div>
                </div>
</body>
</html>