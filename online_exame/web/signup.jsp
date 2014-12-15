<%-- 
    Document   : index
    Created on : Nov 29, 2014, 7:09:51 PM
    Author     : anand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="drop.css" type="text/css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <!--<link rel="stylesheet" type="text/css" href="demo.css" media="all" />-->
             <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body leftmargin=0  bottomMargin=0 aLink=#f0f0f0 rightMargin=90 link=#f0f0f0
  vLink=#f0f0f0
topmargin=0 >
       
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
    
   
  <div style="background-image: url('bgnoise_lg.png'); height:100%;width: 988px">
            
                <table border=0 cellSpacing=0 cellPadding=0 width="690px">
                   
                   
                             
                                 
                                  
                               
                    <tr>
                        <td align="center" style="font-size: 20px"><b>CREATE ACCOUNT TO LOGIN</b></td></tr>
                    <tr><td><br></td></tr>
                    <tr><td>
                            
                                <div  class="form">
                                    <form id="contactform" action="home.jsp" method="get"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First and last name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required="" type="email"> 
                
                <p class="contact"><label for="username">Create a username</label></p> 
    			<input id="username" name="username" placeholder="username" required="" tabindex="2" type="text"> 
    			 
                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password" required=""> 
                <p class="contact"><label for="repassword">Confirm your password</label></p> 
    			<input type="password" id="repassword" name="repassword" required=""> 
        
               <fieldset>
                 <label>Birthday</label>
                  <label class="month"> 
                  <select class="select-style" name="BirthMonth">
                  <option value="">Month</option>
                  <option  value="01">January</option>
                  <option value="02">February</option>
                  <option value="03" >March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12" >December</option>
                  </label>
                 </select>    
                <label>Day<input class="birthday" maxlength="2" name="BirthDay"  placeholder="Day" required=""></label>
                <label>Year <input class="birthyear" maxlength="4" name="BirthYear" placeholder="Year" required=""></label>
              </fieldset>
  
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            <option value="others">Other</option>
            </select><br><br>
            
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="phone number" required="" type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
   </form> 
                                           
                    
                       
                          
                </td>
                
                    </tr>
                </table>
            
                 
        </div>
        
    
  
</td>
</tr>
        </table>
        
    </body>
</html>



