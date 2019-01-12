<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Trang Đăng Ký</title>
      <link rel="stylesheet" href="<%=request.getContextPath()%>/Frontend/css/addcss.css">    
      <jsp:include page="header.jsp"></jsp:include>
		      <jsp:include page="slidebar.jsp"></jsp:include>
		
     </head>



<script>
$( function() {
$( "#datepicker" ).datepicker({
   dateFormat: 'yy/mm/dd',
}
)});
</script>   
<%    
      String errorShow = null;
      if(request.getAttribute("errorusername")=="true"){
          errorShow = "errorusername";
      }  
      else if(request.getAttribute("errorpassword")=="true"){
          errorShow = "errorpassword";
      }  
      else if(request.getAttribute("errorfullname")=="true"){
          errorShow = "errorfullname";
      }  
      else if(request.getAttribute("errorbirthday")=="true"){
          errorShow = "errorbirthday";
      }  
      else if(request.getAttribute("errorsameusername")=="true"){
          errorShow = "errorsameusername";
      }  
%>
 <script type="text/javascript">
 function showpopup(){ 
        var popupmain = document.getElementById("popup");
         popupmain.style = "display : inline;";
         popupmain.style = "top : 30%;left : 120%;";    
         var errorShow = new String("<%=errorShow%>");
         var popup;


         if(new String(errorShow) ==  new String("errorusername").valueOf()){
          popup = document.getElementById("textloidetrong");;
         }
         else if(new String(errorShow) ==  new String("errorpassword").valueOf()){
          popup = document.getElementById("textloimatkhau");;
         }
         else if(new String(errorShow) ==  new String("errorfullname").valueOf()){
          popup = document.getElementById("textloihoten");;
         }
         else if(new String(errorShow) ==  new String("errorbirthday").valueOf()){
          popup = document.getElementById("textloidetrong");;
         }
          else if(new String(errorShow) ==  new String("errorsameusername").valueOf()){
          popup = document.getElementById("textloitrungten");;
         }         
        popup.classList.toggle("hide");             
        popup.classList.toggle("show");         
}
</script>   
<%
    if(request.getAttribute("saveusername")==null){
        request.setAttribute("saveusername","");
    }
    if(request.getAttribute("savepassword")==null){
        request.setAttribute("savepassword","");
    }
    if(request.getAttribute("savefullname")==null){
        request.setAttribute("savefullname","");
    }
    if(request.getAttribute("savebirthday")==null){
        request.setAttribute("savebirthday","");
    }    
%>
  
<body id="home">
     <div class="wrapper">
       <div class="clearfix"></div>
         <div class="hom-slider">
            <div class="container" style="margin-top: 110px">
                <div class="step-description">
                   <form action="<%=request.getContextPath()%>/register" method ="post">
                          <div class="col-md-4 col-md-offset-4" style="">
                                <div class="your-details">
                                  <h5 style="text-align: center; color:white;font-size: 18pt;">
                                    Điền Thông Tin Đăng Ký : 
                                  </h5>
                                </div>
                                <input class="form-row" type="email" class="input namefild" placeholder="Email ( abc...@gmail.com ) : " name="username" value=<%=request.getAttribute("saveusername")%> >
                                <input class="form-row" type="password" class="input namefild" placeholder="Mật khẩu : " name="password" value=<%=request.getAttribute("savepassword")%>>
                                <input class="form-row" type="text" class="input namefild" placeholder="Họ tên đầy đủ ( viết liền không dấu ): " name="fullname"  value=<%=request.getAttribute("savefullname")%>>
                                <input class="form-row" type="text"  id="datepicker"  placeholder="Ngày sinh : " name="birthday" value=<%=request.getAttribute("savebirthday")%>>
                                <input class="col-md-4 col-md-offset-4 button" style="color: black;" type="submit" value="Đăng ký" />

                                <!-- Hiển thị thông báo lỗi -->
                                <div class="popup" id="popup" onclick="showpopup()" style="-webkit-animation: fadeOut 3s;animation: fadeOut 3s;">
                                    <span class="popuptext" id="textloimatkhau">Mật khẩu không được để trống và phải trên 6 kí tự !</span>    
                                    <span class="popuptext" id="textloihoten">Họ tên phải viết liền không được để trống ,  có dấu hoặc chứa số !</span>    
                                    <span class="popuptext" id="textloidetrong">Vui lòng điền các thông tin còn trống !</span>    
                                    <span class="popuptext" id="textloitrungten">Username này đã có người dùng !<br> Vui lòng đổi username khác nhé !</span>    
                                </div>      
                                <script type="text/javascript">
                                        var popupmain = document.getElementById("popup");
                                         popupmain.style = "display : none ;";
                                </script>               

                          </div>     
                       </div>
                      </form>
                    </div>
              </div>

         <div class="clearfix"></div>
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

</html>