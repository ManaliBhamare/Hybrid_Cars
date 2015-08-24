<%@ page language="java" %>
<%@page session="true" %> 
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HC</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Vegur_500.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<script lang="javascript">
function validate()
{
	 var comment;
	 comment=document.login.comment.value;
	 if(comment=="")
	 {

	      alert ("Enter Comment");
	      return false;		
	 }
}
function reset()
{
	window.history.go();
}
</script>
<body id="page6">
<%
	if((session.getAttribute("vname")==null)  && (session.getAttribute("upass")==null))
	{
		%><jsp:forward page="/visitorLogin.jsp"></jsp:forward><%
	}
	else
	{%>	
<div class="main-bg">
  <div class="bg">
    <!--==============================header=================================-->
    <header>
      <div class="main">
        <div class="wrapper">
          <h2><a href="index.html">Hybrid Cars</a></h2>
        <div class="indent"> <span class="phone"> 
			<form id="contact-form" name="google" method="post" action="//www.google.com">
			    <br><input type="text" name="google">&nbsp;
			    <input type="submit" value="Google Search"><br>
			</form></span> </div>
         <nav>
         <ul class="menu">		   
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a class="active" href="cart.jsp">Cart</a></li>
			<li><a href="/Hybrid_car/visitor_logout">Logout</a></li>  
          </ul>   
        </nav>
      </div>
    </header>
    <!--==============================content================================-->
    <section id="content">
      <div class="main">
        <div class="container_12">
          <div class="container-bot">
            <div class="container-top">
              <div class="container">
                <div class="wrapper">
                  <article class="grid_8">
                    <div class="indent-left">
                     
					<fieldset>
					<form method="post" id="contact-form" name="login" action="/Hybrid_car/forum_service">
					<table>
					 <tr>
    					<td width="50" height="54">Comment:</td>
						<td height="120"><input type="hidden" value="<%= session.getAttribute("visitorName")%>"> 
							<textarea name="comment"></textarea>
						</td> 					 
				     </tr>
				     <tr>
				     	<td height="50"></td>
					 	<td> <input type="submit"></td>
				     </tr>
				    </table>
					 </form>
					 <table>
					 
					 <tr>
					 	<td></td>
					 	<td><h3>Previous Comment</h3></td>
					 </tr>
					 	<%			 
						 	Connection con;
							Statement st;
							try
							{ 
							String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
							Class.forName("com.mysql.jdbc.Driver");
							con= DriverManager.getConnection(DBSource,"root","");
							st=con.createStatement();
					 
							ResultSet rs=st.executeQuery("select * from forum");
						    while(rs.next())
						    {%>
							    <tr>								   	 	
							    	<td width="300"><%= rs.getString(2) %> </td>
							    	<td width="769" height="30"><%= rs.getString(3) %></td>
					           </tr>	 
				            <%}
				}
				catch(Exception e)
				{
					out.print(e);
				}
			  
			 %>
				 </table>
      			</fieldset>    
                    </div></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--==============================footer=================================-->
    <footer>
    <div class="main" align="center"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
<%} %>
</body>
</html>