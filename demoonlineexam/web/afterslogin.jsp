<html>
<head><title>Error</title></head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5 bgColor=#98afc7 vLink=#f0f0f0 >
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%" bgColor=#4e9258>
<TR>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>
<TR>
<TD height=100 width="25%"><IMG border=0 alt=""
src="logo.gif" width=250
height=100>&nbsp;</TD>
<TD height=100 width="50%"><IMG border=0 alt=""
src="logo2.jpg" width=580
height=100>
</TD>
<TD height=100 width="25%"><IMG border=0 alt=""
src="logo.gif" width=250
height=100>&nbsp;</TD>
</tr>
<%@page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:mydsn");
Statement s=c.createStatement();
String sid=request.getParameter("StudentID");
String sname=request.getParameter("StudentName");
String icode=request.getParameter("InstituteCode");
ResultSet rs=s.executeQuery("select * from org_details where ID="+icode);
if(!rs.next()){
out.println("<TABLE border=0 cellSpacing=10 cellPadding=0 width=100% bgColor=#54c571> <tr><td width=30% align=left>");
out.println("<img src=fail.gif width=200 height=150></td><td align=left>");
out.println("<h3>Invalid Account</h3></td></tr>");
out.println("<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>");
out.println("<tr><td align=left><font size=4><a href='slogin.html'>Back</a></font></td></tr>");
}
else
{
String ilname=rs.getString(2);
String tbl=ilname+"slist";
ResultSet rs1=s.executeQuery("select * from "+tbl+" where SID="+sid+" and Sname='"+sname+"'");
if(!rs1.next()){
out.println("<TABLE border=0 cellSpacing=10 cellPadding=0 width=100% bgColor=#54c571> <tr><td width=30% align=left>");
out.println("<img src=fail.gif width=200 height=150></td><td align=left>");
out.println("<h3>Invalid Account</h3></td></tr>");
out.println("<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>");
out.println("<tr><td align=left><font size=4><a href='slogin.html'>Back</a></font></td></tr>");
}
else
{
request.setAttribute("iid",icode);
request.setAttribute("iname",ilname);
request.setAttribute("sid",sid);
request.setAttribute("sname",sname);
RequestDispatcher rd=request.getRequestDispatcher("afterslogin1.jsp");
rd.forward(request, response);
}
}
%>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
</TABLE>
<P>
</body>
</html>