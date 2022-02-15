<%-- 
    Document   : userdelete
    Created on : Jun 22, 2017, 2:53:49 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
   
     String email=(String)session.getAttribute("email");
     String subject=(String)session.getAttribute("subject");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from mail where sender='"+email+"' and subject='"+subject+"' ");
	if(i!=0)
	{
            %>
            <script>
            alert("Mail Deleted Sucessfully");
            window.location="inbox.jsp";
            </script>
	<!--response.sendRedirect("inbox.jsp?msg= Mail  Deleted Sucessfully");-->
	<% }
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>
