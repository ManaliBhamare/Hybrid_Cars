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
<body id="page4">
<%
	if((session.getAttribute("vname")==null)  && (session.getAttribute("vpassword")==null))
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
            <li><a class="active" href="forum.jsp">Home</a></li>
            <li><a class="active" href="cart.jsp">Cart</a></li>
			<li><a href="/Hybrid_car/visitor_logout">Logout</a></li>  
          </ul>   
        </nav>
      </div>
    </header>
    <!--==============================content================================--><div class="main">
        <div class="container_12">
           <form id="contact-form" method="post" action="compare.jsp" method="post" name=login>
          <table>
            <tr> 
				<td height="100" colspan="5"><br><br><h3>Available car</h3></td>
			</tr>
			<tr>
			      <td width="74" height="50"><h4>Sr_no</h4></td>
			      <td width="200"><h4>Car Company name</h4></td>
			      <td width="180"><h4>Car model name</h4></td>
			      <td width="94"><h4>Type</h4></td>
			      <td width="144"><h4>Cost</h4></td>  
			      <td width="118"><h4>Country</h4></td>
			      <td width="70"><h4>Status</h4></td>
			      <td width="50"><h4>Cart</h4></td>
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
					ResultSet rs=st.executeQuery("select * from car_info");
				    while(rs.next())
				    {%>
				    <tr>
					<td><%= rs.getString(6) %> </td>
				    <td height="50"><%= rs.getString(3) %> </td>
				    <td><%= rs.getString(1) %></td>
				    <td><%= rs.getString(2) %></td>
				    <td><%= rs.getString(4) %></td>
				    <td><%= rs.getString(5) %></td>
				    <td><%= rs.getString(7)%></td>
				    <td> <input type="checkbox" value="<%= rs.getString(6)%>" name="checkbox"></td>   
				    </tr>	 
				    <%}
				}
				catch(Exception e)
				{
					out.print(e);
				}
			  
			 %>
			<tr>
				<td colspan="6" align="center"><input type="submit" value="Compare"></td>
			</tr>
			<tr>
				<td colspan="6" align="center" height="50"></td>
			</tr>
          </table> 
          </form>
		</div>
		<!--==============================footer=================================-->
		
<footer>
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
<%} %>
</body>
</html>