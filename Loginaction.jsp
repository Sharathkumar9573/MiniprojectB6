<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.*" %>
<%@include file="Dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<form action="Send.jsp" method="post">
<% 
String s1=request.getParameter("Uname");
String s2=request.getParameter("pwd");
PreparedStatement ps=con.prepareStatement("Select Username,password from register where  Username=? and password=?");
ps.setString(1,s1);
ps.setString(2,s2);
ResultSet rs=ps.executeQuery();
PrintWriter pw=response.getWriter();
if(rs.next()){
	pw.println("Loggedin Succesfully");
}else{
	pw.println("<font color='red'>Enter the valid Username and Password</font>");
}%>
</form>
</html>