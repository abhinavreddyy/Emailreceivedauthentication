<%-- 
    Document   : createaccount
    Created on : Jun 22, 2017, 11:28:37 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String cpassword=request.getParameter("cpassword");
    String birthday=request.getParameter("birthday");
    String gender=request.getParameter("gender");
    String mobile=request.getParameter("mobile");
    String location=request.getParameter("location");
    int count=0;
    try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from newaccount where email='"+email+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into newaccount values('"+fname+"','"+lname+"','"+email+"','"+password+"','"+cpassword+"','"+birthday+"','"+gender+"','"+mobile+"','"+location+"',now())");
		
		if(i==0)
		{
		response.sendRedirect("newaccount.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("newaccount.jsp?msg=Account Created  Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("newaccount.jsp?msg=User Already Exists For This email-Id");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>
