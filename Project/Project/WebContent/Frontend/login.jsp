<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/Frontend/images/favicon.png">
      <title>Trang Đăng Nhập</title>
      <link rel="stylesheet" href="<%=request.getContextPath()%>/Frontend/css/addcss.css">    

     </head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%    
      String errorShow = null;
      if(request.getAttribute("usernamefail")=="true"){
          errorShow = "usernamefail";
      }  
      else if(request.getAttribute("passwordfail")=="true"){
          errorShow = "passwordfail";
      }  
%>   
<script type="text/javascript">
 function showpopup(){ 
        var popupmain = document.getElementById("popup");
         popupmain.style = "display : inline;";
         popupmain.style = "top : 30%;left : 120%;";    
         var errorShow = new String("<%=errorShow%>");
         var popup;


         if(new String(errorShow) ==  new String("usernamefail").valueOf()){
          popup = document.getElementById("textloiusername");;
         }
         else if(new String(errorShow) ==  new String("passwordfail").valueOf()){
          popup = document.getElementById("textloimatkhau");;
         }      
        popup.classList.toggle("hide");             
        popup.classList.toggle("show");         
}
</script> 
<%
    if(request.getAttribute("saveusername")==null){
        request.setAttribute("saveusername","");
    }
%>
<body id="home">
      <div class="wrapper">
      
          <div class="container" style="margin-top: 150px">
                    <div class="step-description">
                         <div class="col-md-4 col-md-offset-4">
                             <%
                                 if(session.getAttribute("currentusername")==null){
                             %>
                            <form action="<%=request.getContextPath()%>/login" method ="post">
                              <div class="your-details">
                                  <h5 style="text-align: center; color:white;font-size: 18pt;">
                                   Điền Thông Tin Đăng Nhập : 
                                  </h5>
                              </div>   
                                <input class="form-row" type="email"  class="input namefild" placeholder="Tài khoản : ( admin )" name="username" value="<%=request.getAttribute("saveusername")%>">
                                <input class="form-row" type="password"  class="input namefild" placeholder="Mật khẩu : ( admin )" name="password"/>
                                <input class="col-md-4 col-md-offset-4 button" style="color: black;" type="submit" value="Đăng Nhập" />
                                <!-- Hiển thị thông báo lỗi -->
                                <div class="popup" id="popup" onclick="showpopup()" style="-webkit-animation: fadeOut 3s;animation: fadeOut 3s;">
                                    <span class="popuptext" id="textloiusername">Email nhập vào không đúng !</span>    
                                    <span class="popuptext" id="textloimatkhau">Mật khẩu không hợp lệ ! Vui lòng kiểm tra lại !</span>    
                                </div>    
                                <script type="text/javascript">
                                        var popupmain = document.getElementById("popup");
                                         popupmain.style = "display : none ;";
                                </script>  
                            </form>
                             <%
                                 }else{
                              %>
                            <jsp:forward page="index.jsp"></jsp:forward>
                              <%
                             }
                             %>
                          </div>
                        </div>
                    </div>
         <div class="clearfix"></div>        
                            <jsp:include page="header.jsp"></jsp:include>

      </div>

       
<%
       if(request.getAttribute("showPopup")=="true"){
           %>
           <script>
               showpopup();
           </script>
           <%
       }
%>

      <!-- Bootstrap core JavaScript==================================================-->
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery-1.10.2.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="<%=request.getContextPath()%>/Frontend/js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/Frontend/js/script.min.js" ></script>
   </body>
         <div class="footer" style="opacity:0.5;background-color: black;position: absolute;margin-bottom:  -5.7%;bottom: 0;left: 0;width: 100%;">   
                                   <jsp:include page="footer.jsp"></jsp:include>
        </div>
</html>