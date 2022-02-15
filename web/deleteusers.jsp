<%-- 
    Document   : useraccount
    Created on : Jun 22, 2017, 12:00:58 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String email=(String)session.getAttribute("email");%>
<%@page import="java.sql.*"%>
<%
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from newaccount");
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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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
              
            <li><a href="adminhome.jsp">HOME</a></li>
             <li><a href="viewusers.jsp">VIEW USERS</a></li>
              <li><a href="deleteusers.jsp">DELETE USERS</a></li>
            <li><a href="index.html">LOGOUT</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
                
                <CENTER><h1>Hi &nbsp;<font color="blue" size="8"><%=email%></FONT></h1></CENTER>
                
                
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<table cellspacing="20" border="2" width="600px;">
			 <table cellspacing="20" border="5" width="600px;">
			 <tr><th><font color="red">First  Name</font></th>
			 <th><font color="red">Last Name</font></th
			 ><th><font color="red">EmailId</font></th>
			 <th><font color="red">Birthday</font></th>
			 <th><font color="red">Gender</font></th>
			 <th><font color="red">Mobile</font></th>
			  <th><font color="red">Location</font></th>
                           <th><font color="red">Delete</font></th>
			 </tr>
			 <%while(rs.next())
			{
				%>
			 <tr>
			 <td><font color="green"><%=rs.getString(1)%></font></td>
			 <td><font color="green"><%=rs.getString(2)%></font></td>
			 <td><font color="green"><%=rs.getString(3)%></font></td>
			 <td><font color="green"><%=rs.getString(6)%></font></td>
			 <td><font color="green"><%=rs.getString(7)%></font></td>
			 <td><font color="green"><%=rs.getString(8)%></font></td>
                         <td><font color="green"><%=rs.getString(9)%></font></td>
                         <td><a href="userdelete.jsp?email=<%=rs.getString(3)%>"><font color="blue">Delete</font></a></td>
		
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
