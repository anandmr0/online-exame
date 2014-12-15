<%-- 
    Document   : home
    Created on : Nov 30, 2014, 10:23:44 AM
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="drop.css" type="text/css" rel="stylesheet"/>
       
        <style>
h3 {color:bootlegreen;font:700 12pt arial}
body {font:10pt verdana}
td{font:10pt verdana}
a {font:700 12pt verdana;color:green}
p {font: 50 12pt verdana;color: red}
h2 {font:700 16pt arial;color:bootlegreen}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body leftmargin=0  bottomMargin=0 aLink=#f0f0f0 rightMargin=90 link=#f0f0f0
 bgColor=#98afc7 vLink=#f0f0f0
topmargin=0 class="adobe-com">
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
    
        <div id="nav" style="height:50px;width: 988px;">
	<div id="nav_wraper">
<ul align=left>
<li><a href="home.jsp">home</a></li><li>
<a href="#">Registration</a>
<ul>
<li><a href="studentRegistration.jsp">Student</a></li>
<li><a href="instituteRegistration.jsp">Institute</a></li>
<li><a href="organizationRegistration.jsp">Organization</a></li>
</ul>
</li>
<li>
<a href="#">Online Exam</a>
<ul>
 <li><a href="practicetest.jsp">Practice Test</a></li>
 <li><a href="finaltest.jsp">Final Test</a></li>  
</ul>
</li>
<li>
<a href="#">Conduct Exam</a>
<ul>
<li><a href="#">Add Paper</a></li>
<li><a href="#">Modify Paper</a></li>
<li><a href="#">Delete Paper</a></li>
</ul>
</li>
<li>
<a href="#">Results</a>
<ul>
 <li><a href="#">Practice Test Result</a></li>
 <li><a href="#">Online Test Result</a></li>  
</ul>
</li>
<li><a href="#">About Us</a>
</li>
<li><a href="#">Contact Us</a>
</li>
<li><a href="index.jsp">Logout</a>
</li>
</ul>
</div>
</div>
    <div style="background-image: url('bgnoise_lg.png');height: 540px;width: 988px">
        
    </div>

        
    

    
</td>
</tr>
        </table>
    </body>
</html>
