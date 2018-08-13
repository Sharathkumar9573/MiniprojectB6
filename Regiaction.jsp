<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>>
<%@include file="Dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("phno");
String s3=request.getParameter("Uname");
String s4=request.getParameter("pwd");
String s5=request.getParameter("cpwd");

PreparedStatement ps=con.prepareStatement("Select Username,password from register where  Username=? and password=?");
ps.setString(1,s3);
ps.setString(2,s4);
ResultSet rs=ps.executeQuery();
PrintWriter pw=response.getWriter();
if(rs.next()){
	pw.println("Already Registered");
}else{

PreparedStatement ps1=con.prepareStatement("insert into register values(?,?,?,?,?)");
ps1.setString(1,s1);
ps1.setString(2,s2);
ps1.setString(3,s3);
ps1.setString(4,s4);
ps1.setString(5,s5);
int i=ps1.executeUpdate();
if(i>0)
	System.out.println("Registered Succesfully");
else
	System.out.println("Error occured");
}
%>

</body>
</html>