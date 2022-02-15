<%-- 
    Document   : accountlogin1
    Created on : Jun 22, 2017, 11:49:06 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from newaccount where email='"+email+"' and password='"+password+"'");
        
        if(rs.next())
        {
            response.sendRedirect("useraccount.jsp");
            session.setAttribute("email",email);
            
            
        }
       response.sendRedirect("accountlogin.jsp?msg=Email Id Or Password InCorrect");
        
    }catch(Exception e)
	{
	out.println(e);
	}
    %>