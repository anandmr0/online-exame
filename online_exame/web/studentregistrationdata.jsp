

<%@page import="singup.singup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       
      
        <%! String email,password,address,fullname,city,state,loginname,phone;
        int pincode; 
        int s,randomno;
        %>
        <%
            fullname=request.getParameter("fullname");
            email=request.getParameter("email");
            password=request.getParameter("password_confrim");
            phone=request.getParameter("tel");
            address=request.getParameter("address");
            city=request.getParameter("city");
            pincode=Integer.parseInt(request.getParameter("pincode"));
            state=request.getParameter("state");
            loginname=request.getParameter("loginname");
            
           singup d=new singup();
           randomno=d.randomno();
           
           s=d.student(fullname,email,phone,address,city,pincode,state,loginname,password,randomno);
            if(s==1)
            {%>
            <jsp:forward page="registrationsuccessful.jsp">
                <jsp:param name="number" value="<%=randomno%>"/>
            </jsp:forward>
       <% }else{%>
       <jsp:include page="index.html"></jsp:include>
       <%}%>
    
</html>
