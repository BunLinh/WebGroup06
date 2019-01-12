<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<%  String username = " ";
    if(request.getAttribute("registersuccess")=="true"){
        username =(String) request.getAttribute("saveusername");
    }else{
        %>
        <jsp:forward page="register.jsp"></jsp:forward>
        <%
    }   
%>       
      <jsp:include page="header.jsp"></jsp:include>

     </head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  
<body id="home">


     <div class="wrapper">
       <div class="clearfix"></div>
         <div class="hom-slider">
            <div class="container">
                <div class="step-description" style="position: absolute;margin-top: 120px;left: 0;" >
                   <form action="<%=request.getContextPath()%>/register" method ="post">
                          <div class="col-md-8 col-md-offset-2" style="">
                                <div class="your-details">
                                    <h5 style="text-align: center; color:black;font-size: 23pt;">
                                        Chúc mừng email : <br><font style="font-size: 30pt;color:greenyellow;"><%=username%></font> 
                                  </h5>
                                  <h5 style="text-align: center; color:black;font-size: 23pt;"> đã đăng ký thành công</h5>
                                </div>            
                          </div>     
                       </div>
                      </form>
                    </div>
              </div>

         <div class="clearfix"></div>
         <div class="footer" style="opacity:0.5;background-color: black;position: absolute;margin-bottom:  -700px;bottom: 0;left: 0;width: 100%;">   
         <jsp:include page="footer.jsp"></jsp:include>
        </div> 
      </div>

      <!-- Bootstrap core JavaScript==================================================-->
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery-1.10.2.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="<%=request.getContextPath()%>/Frontend/js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/script.min.js" ></script>
   </body>
</html>