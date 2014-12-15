<%-- 
    Document   : index
    Created on : Nov 29, 2014, 7:09:51 PM
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link href="drop.css" type="text/css" rel="stylesheet"/>-->
        <style>
h3 {color:bootlegreen;font:700 12pt arial}
body {font:10pt verdana}
td{font:10pt verdana}
a {font:700 12pt verdana;color:green}
p {font: 50 12pt verdana;color: red}
h2 {font:700 16pt arial;color:bootlegreen}
#p a 
{
font-size: 13px;
color:wheat;
float:contour;
margin-top: 2px;
margin-right: 2px;
}
#p a:hover 
{
color: #555;
}
</style>
<script type="text/javascript">
  var image1=new Image()
  image1.src="background.jpg"
  var image2=new Image()
  image2.src="books1.jpg"
  var image3=new Image()
  image3.src="Online-exam.png"
  </script>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Examination</title>
</head>
<body leftmargin=0  bottomMargin=0 aLink=#f0f0f0 rightMargin=90 link=#f0f0f0
  vLink=#f0f0f0  bgColor=#98afc7
  topmargin=0>
    
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
<TR>
<TD vAlign=top align=middle>
    
        
        <table border=0 cellSpacing=0 cellPadding=0 width=50% bgColor=#4e9258 >
            <tr>
                <td><div id="div1" style="background-image:url(logo.gif);height: 90px;width: 88px;"/>
                </td></div>
                <td>
                    <div><img src="banner.jpg" height="90" width="900"/></div>
                </td></tr>
        </table>
    <table border=0 cellSpacing=0 cellPadding=0 width=988px bgColor=#54c571>
        <form action="home.jsp" method="get" name="verify" onsubmit="return validateForm()">
            <tr>
            
                <td align="right"><label for="email">Email ID:</label>
                    <input id="email" name="email" placeholder="example@domain.com" required="" type="email"/>
                
                    <label for="password">Password:</label>
                    <input id="password" name="password" required="" type="password" />
                    
                    
                   
                
                    <input type="submit" value="Login" name="Login"/>&nbsp;
                                            </form>
        <form action="signup.jsp">
            <td align="center"><input type="submit" name="singup" value="SINGUP"/></td></form>
        <td id="p"><a href="signup.jsp">Forget Password?</a></td>
            </tr>
        
</table>
   
    <div style="background-color: #999;width: 988px; height:100%">
          <img src="background.jpg" name="slide" height="400px" width="970px">
                    <script type="text/javascript">
                      var step=1
                      function slideit()
                      {
                          document.images.slide.src=eval("image"+step+".src")
                          if(step<3)
                              step++
                          else
                              step=1
                          setTimeout("slideit()",2500)
                      }
                      slideit()
                    </script>
               
    </div>
        
    
  
</td>
</tr>
        </table>
    </div>
        
    </body>
</html>



