<%-- 
    Document   : viewmail
    Created on : Jun 22, 2017, 5:10:57 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.Date, javax.servlet.*" %>
<% String email=(String)session.getAttribute("email");%>
<%
    String sendtoemail=request.getParameter("email");
    session.setAttribute("from",sendtoemail);
    String time=request.getParameter("time");
    session.setAttribute("time",time);
    String subject=request.getParameter("subject");
    session.setAttribute("subject",subject);
    String body=request.getParameter("body");
    session.setAttribute("body", body);
   
    
    try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	PreparedStatement ps=con.prepareStatement("update mail set status=now() where sender='"+sendtoemail+"' and subject='"+subject+"' ");
ps.executeUpdate();
response.sendRedirect("viewmailcontent.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
	
