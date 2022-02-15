<%-- 
    Document   : useraccount
    Created on : Jun 22, 2017, 12:00:58 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String email=(String)session.getAttribute("email");
 String subject=(String)session.getAttribute("subject");
%>
<%@page import="java.sql.*" %>
<%
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from mail where sendtomail='"+email+"' and status='waiting'");

%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Mail Received Authentication System</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>

    <style>
table.pos_left {
    position: relative;
    
    top: -250px;
    
}


</style>
  </head>

  <body>

    <!-- Static navbar -->
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Mail Received Authentication System</a>
        </div>
        <div class="navbar-collapse collapse">
            
          <ul class="nav navbar-nav navbar-right">
              
            <li><a href="useraccount.jsp">HOME</a></li>
            
            <li><a href="index.html">LOGOUT</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
                <center><h1>Inbox Mails</h1></center>
                <CENTER><h1>Hi &nbsp;<font color="blue" size="8"><%=email%></FONT></h1></CENTER>
                <table BORDER="5" CELLPADDING="15">
                    <TR> <TD><a href="compose.jsp">COMPOSE MAIL</a></TD></TR> 
                    <TR> <TD><a href="inbox.jsp">INBOX</a></TD></TR> 
                    <TR> <TD><a href="sent.jsp">SENT MAILS</a></TD></TR>  
                     
                    <TR> <TD><a href="index.html">LOGOUT</a></TD></TR>  
                </table>
                
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<table cellspacing="20" border="2" width="600px;">
			 <table class="pos_left" cellspacing="20" border="5" width="600px;">
			 <tr><th><font color="red">From</font></th>
                         <th><font color="red">Subject</font></th>
			 <th><font color="red">Body</font></th>
			 <th><font color="red">Time</font></th>
			 <th><font color="red">View Mail</font></th>
                         <th><font color="red">Delete Mail</font></th>
			 </tr>
			 <%while(rs.next())
			{
				%>
			
                             
			 <%}

}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
                         <br>
                         <br><br><br>
                       
                         <%
                             try
                             {
                                 
                             
                             Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement stmt=con1.createStatement();
	
                             ResultSet rs1=stmt.executeQuery("select * from mail where sendtomail='"+email+"'");
                         %>
                          <%while(rs1.next())
			{
				%>
			 <tr>
			 <td><font color="green"><%=rs1.getString(4)%></font></td>
			 <td><font color="green"><%=rs1.getString(2)%></font></td>
			 <td><font color="green"><%=rs1.getString(3)%></font></td>
			 <td><font color="green"><%=rs1.getString(5)%></font></td>
			<td><a href="viewmail.jsp?email=<%=rs1.getString(4)%>&time=<%=rs1.getString(5)%>&subject=<%=rs1.getString(2)%>&body=<%=rs1.getString(3)%>"><font color="blue">ViewMail</font></a></td>
                        <td><a href="maildelete.jsp?email=<%=rs1.getString(4)%>"><font color="blue">Delete</font></a></td>
                           <tr>
                             
			 <%}

}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
                              </table>          
                                        <p></p>
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	
	
	
	
	
	

     <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
