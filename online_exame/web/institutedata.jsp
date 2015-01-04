

<%@page import="singup.singup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
      
        <%! String email,password,institutename,loginname;
        
        int s,randomno;
        %>
        <%
            institutename=request.getParameter("institutename");
            email=request.getParameter("email");
            password=request.getParameter("password_confrim");
            loginname=request.getParameter("loginname");
           singup d=new singup();
           randomno=d.randomno();
           s=d.institute(institutename,email,loginname,password,randomno);
            if(s==1)
            {%>
            <jsp:forward page="registrationsuccessful.jsp">
                <jsp:param name="number" value="<%=randomno%>"/>
            </jsp:forward>
       <% }else{%>
       <jsp:include page="index.html"></jsp:include>
       <%}%>
    
</html>
