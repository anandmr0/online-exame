<html>
<head>
<title>afteredetails</title>
</head>
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
<TABLE border=10 cellSpacing=10 cellPadding=0 width="100%"
bgColor=#54c571>
<TR>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT color=#000000
size=3 face=Arial><B><A
href="afterisignup2.jsp">HOME</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.htm">Exam Details
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html">Student List</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html"></A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Questions</B></A></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Results</B></A></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.html">Edit Exam Details
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="logout.jsp">Logout</A></B></FONT></TD></TR></TABLE>
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%">
<TR>
<TD bgColor=#617c58><B><FONT color=#ffffff size=3 face=Tahoma
center>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String lname=(String)session.getAttribute("loginname");
String inid=(String)session.getAttribute("id");
out.println("<MARQUEE onmouseover=this.stop() onmouseout=this.start()>welcome"+lname+"<FONT color='white' size=2 face=Tahoma> (institute id="+inid+")</FONT></MARQUEE>");
out.println(" </FONT></B></TD></TR></TABLE>");
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:mydsn");
PreparedStatement ps,ps1=null;
String ename=request.getParameter("ExamName");
String tlimit=request.getParameter("TimeLimit");
String pmrks=request.getParameter("PassMarks");
String nques=request.getParameter("NoOfQues");
String nmarks=request.getParameter("NegativeMarks");
String pmarks=request.getParameter("PositiveMarks");
String tble=lname+"edetails";
String sql="insert into "+tble+"(Ename,Tlimit,Passmarks,NoQues,Pmarks,Nmarks) values(?,?,?,?,?,?);";
ps=c.prepareStatement(sql);
ps.setString(1,ename);
ps.setString(2,tlimit);
ps.setString(3,pmrks);
ps.setString(4,nques);
ps.setString(5,pmarks);
ps.setString(6,nmarks);
ps.executeUpdate();
ps.close();
c.close();
}catch(Exception e) {e.printStackTrace();}
%>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" align=center>
<tbody>
<tr>
<td align=center><b><h2>Exam details have been successfully entered.</h2></b></td>
</tr>
<tr>
<td><a href="afterisignup2.jsp">BACK</td>
</tr>
</tbody></table>
</table>
</table>
</body>
</html>