<%-- 
    Document   : mailing
    Created on : Jun 22, 2017, 4:05:36 PM
    Author     : VENKAT
--%>
<% String email=(String)session.getAttribute("email");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.Date, javax.servlet.*" %>
<%
    String sendtomail=request.getParameter("sendtoemail");
    String subject=request.getParameter("subject");
    String body=request.getParameter("body");
    String status="waiting";
    
try
{
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from newaccount where email='"+sendtomail+"'");
        if(rs.next())
        {
      int i=st.executeUpdate("insert into mail values('"+sendtomail+"','"+subject+"','"+body+"','"+email+"',now(),'"+status+"')");
       int ii=st.executeUpdate("insert into sent values('"+email+"','"+subject+"','"+body+"','"+sendtomail+"',now(),'"+status+"')");
     
      if((i>0)&&(ii!=0))
        {
            %>
            <script>
                alert("Mail sent successfully");
                window.location="useraccount.jsp";
                </script>
            <!--response.sendRedirect("useraccount.jsp?mag=mail sent sucessfully");-->
          
          <%  
        }
}
        else
        {
%>
<script>
    alert("Email Id Is Does not Exist");
    window.location="compose.jsp";
    </script>
          <!--response.sendRedirect("compose.jsp?mag=mail sending failed");-->
          <%     
        }
}

catch(Exception e)
{
    out.println(e);
}
%>
