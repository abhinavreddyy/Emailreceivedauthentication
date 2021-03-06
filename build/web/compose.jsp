<%-- 
    Document   : useraccount
    Created on : Jun 22, 2017, 12:00:58 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String email=(String)session.getAttribute("email");%>
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
    <script type="text/javascript">
        
           function validate()
        {
           
            var c=document.reg.email.value;
            var d=document.reg.password.value;
            
            
    if (c.indexOf("@gmail", 0) < 0)
{
alert("Please enter a valid e-mail address. Like @gmail");
document.reg.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.reg.email.focus();
return false;
}
            return true;
        }
    </script>

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
            
            Hi &nbsp;<font color="pink" size="5"><%=email%></FONT>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
                <CENTER><h2>Compose mail</h2></CENTER><br><br>
                <table BORDER="5" CELLPADDING="15">
                    <TR> <TD><a href="compose.jsp">COMPOSE MAIL</a></TD></TR> 
                    <TR> <TD><a href="inbox.jsp">INBOX</a></TD></TR> 
                    <TR> <TD><a href="sent.jsp">SENT MAILS</a></TD></TR>  
                    
                    <TR> <TD><a href="index.html">LOGOUT</a></TD></TR>  
                </table>
               
			<div >
                            <form name="reg" action="mailing.jsp" method="post" onsubmit="return validate()">
                             <table class="pos_left" align="center" CELLPADDING="15">
                                 <div style="position: absolute; top:200px; left: 507px; width: 210px; height: 125px; ">
                                        <tr>
                                            <td>SENDTO:&nbsp;&nbsp;&nbsp;</td><td><input type="text" maxlength="100" name="sendtoemail" required></td>
                                        </tr>
                                        
                                         <tr>
                                             <td>SUBJECT:&nbsp;&nbsp;&nbsp;</td><td><input type="text" maxlength="200" name="subject" required=""></td>
                                        </tr>
                                         <tr>
                                             <td>BODY&nbsp;&nbsp;&nbsp;</td><td><textarea name="body" rows="15" cols="50" required></textarea></td>
                                        </tr>
                                         <tr>
                                             <td><input type="submit" value="Send"></td><td><input type="Reset"  value="Reset"></td>
                                        </tr>
                             </table></form>
                        </div>
				
					
                                    
                                      
				
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	
	
	
	
	
	

     <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
