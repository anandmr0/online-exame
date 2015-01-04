

<%@page import="singup.singup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
      
        <%! String email,password;
        int s; 
        
        %>
        <%
            
            email=request.getParameter("username");
            password=request.getParameter("password");
           singup d=new singup();
            s=d.select(email,password);
            if(s==1)
            {%>
            <jsp:forward page="home.html"></jsp:forward>
       <% }else{%>
       <jsp:include page="index.html"></jsp:include>
       <%}%>
    
</html>
