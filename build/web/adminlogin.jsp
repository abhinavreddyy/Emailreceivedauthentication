<%-- 
    Document   : adminlogin
    Created on : Jun 22, 2017, 1:00:38 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    
if(email.equals("admin@gmail.com")&&password.equals("admin"))
{
    response.sendRedirect("adminhome.jsp");
            session.setAttribute("email",email);
}
else
{
    response.sendRedirect("adminaccount.jsp?msg=email or password incorrect");
}
%>