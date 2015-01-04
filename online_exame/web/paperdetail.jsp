

<%@page import="singup.singup"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       
       
      
        <%! String type,password,ioname,loginname,examename;
        
        int s,marksperquestion,passingmarks,totalmarks,negativemarks,duration,registration_no;
        %>
        <%  
            type=request.getParameter("profile_type");
           
            //out.println(organizationname);
           if(type.equals("Organization"))
            {
            ioname=request.getParameter("ioname");
            loginname=request.getParameter("loginname");
            password=request.getParameter("password");
            registration_no=Integer.parseInt(request.getParameter("rnumber"));
            //out.println(organizationname+""+loginname+""+password);
           singup d=new singup();
           s=d.organizationselect(ioname,loginname,password,registration_no);
           
           if(s==1)
            { 
             examename=request.getParameter("examename");
             marksperquestion=Integer.parseInt(request.getParameter("markperquestion"));
             passingmarks=Integer.parseInt(request.getParameter("passmarks"));
             totalmarks=Integer.parseInt(request.getParameter("totalmarks"));
            duration=Integer.parseInt(request.getParameter("duration"));
            negativemarks=Integer.parseInt(request.getParameter("negative"));
            
         

            singup d1=new singup();
            d1.organizationpaperdetail(ioname,loginname,examename,marksperquestion,passingmarks,totalmarks,duration,negativemarks,registration_no);
            %>
            <jsp:forward page="questiondetail.jsp"></jsp:forward>
       <% }else{}%>
       
       <%}else
           {
               ioname=request.getParameter("ioname");
            loginname=request.getParameter("loginname");
            password=request.getParameter("password");
            registration_no=Integer.parseInt(request.getParameter("rnumber"));
           out.println(ioname+""+loginname);
           singup d=new singup();
           s=d.instituteselect(ioname,loginname,password,registration_no);
            out.println(s);
           if(s==1)
            { 
             examename=request.getParameter("examname");
             marksperquestion=Integer.parseInt(request.getParameter("markperquestion"));
             passingmarks=Integer.parseInt(request.getParameter("passmarks"));
             totalmarks=Integer.parseInt(request.getParameter("totalmarks"));
            duration=Integer.parseInt(request.getParameter("duration"));
            negativemarks=Integer.parseInt(request.getParameter("negative"));
          out.println(examename);

            singup d1=new singup();
            d1.institutepaperdetail(ioname,loginname,examename,marksperquestion,passingmarks,totalmarks,duration,negativemarks,registration_no);
            %><jsp:forward page="institutequestiondeatail.jsp"></jsp:forward>
            <% }else{%>
       
       <%}
       
       
       %>
       
       <%}%>
    
</html>
