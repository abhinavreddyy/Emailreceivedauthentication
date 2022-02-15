<%-- 
    Document   : useraccount
    Created on : Jun 22, 2017, 12:00:58 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String email=(String)session.getAttribute("email");%>
<% String from=(String)session.getAttribute("from");
String time=(String)session.getAttribute("time");
String subject=(String)session.getAttribute("subject");
String body=(String)session.getAttribute("body");
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
              
            <li><a href="useraccount.jsp">HOME</a></li>
            
            <li><a href="index.html">LOGOUT</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
                <CENTER><img src="assets/img/user.png" alt="Stanley"></center>
                <CENTER><h1>Hi &nbsp;<font color="blue" size="8"><%=email%></FONT></h1></CENTER>
                <table BORDER="5" CELLPADDING="15">
                    <TR> <TD><a href="compose.jsp">COMPOSE MAIL</a></TD></TR> 
                    <TR> <TD><a href="inbox.jsp">INBOX</a></TD></TR> 
                    <TR> <TD><a href="sent.jsp">SENT MAILS</a></TD></TR>    
                    <TR> <TD><a href="index.html">LOGOUT</a></TD></TR>  
                </table>
                
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
                                    <a href="inbox.jsp"><img src="back.png" width="50" height="50"></a>
			 <table cellspacing="20" border="5" width="600px;">
                             <textarea rows="20" cols="50" readonly="">

<%=subject%>
                                                                                <%=time%>

From: <%=from%>


            <%=body%>


                             </textarea>
			 
			
			 
			
                         </table>
                         
                                        
                                        <p></p>
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	
	
	
	
	
	

     <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
