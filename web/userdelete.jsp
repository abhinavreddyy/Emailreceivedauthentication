<%-- 
    Document   : userdelete
    Created on : Jun 22, 2017, 2:53:49 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from newaccount where email='"+email+"' ");
	if(i!=0)
	{
	response.sendRedirect("deteleusers.jsp?msg= User  Details Deleted Sucessfully");
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>
