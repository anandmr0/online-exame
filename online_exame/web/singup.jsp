


<%@page import="singup.singup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
      
        <%! String fullname,email,password;
        int s; 
        String loginname;
        %>
        <%
            fullname=request.getParameter("fullname");
            email=request.getParameter("emailsignup");
            password=request.getParameter("passwordsignup_confirm");
           singup d=new singup();
            s=d.insert(fullname,email,password);
            if(s==1)
            {
            //out.println(loginname);
           %>
            <jsp:forward page="home.html"></jsp:forward>
       <% }else{%>
       <jsp:include page="index.html"></jsp:include>
       <%}%>
    
</html>
