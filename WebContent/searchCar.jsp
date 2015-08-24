<%@page import="java.util.StringTokenizer"%>
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
			<li><a href="Login.jsp">Login</a></li>            
            		<li><a href="carlist.jsp">Brands</a>
			<ul>
					<li><a href="AUDI.jsp">AUDI</a> </li>
					<li><a href="bmw.jsp">BMW</a> </li>
					<li><a href="nissan.jsp">Nissan</a> </li>
					<li><a href="mahindra.jsp">Mahindra</a> </li>
					
			  </ul>
			</li>
			<li><a href="searchCar.jsp">Search Car</a></li>				 	
            		<li><a href="upcoming.jsp">Upcoming</a></li>				
			<li><a href="video.jsp">Videos </a></li>
			<li><a href="Contact_us.jsp">contact</a></li>
			<li><a href="about us.jsp">About Us</a></li>
             
          </ul>   
        </nav>
      </div>
    </header>
    <!--==============================content================================-->
    <section id="content">
      <div class="main">
        <div class="container_12">
          <div class="wrapper p4">
            <div class="wrapper">
              <form id="contact-form"  name="search" action="/Hybrid_car/searchCar.jsp" method="post">
              <table border="1">
          		<tr>
          			<td width="50">Brand</td>
          			<td width="200"> <input type="text" name="brand">
          			</td>
          			<td width="50">Model</td>
          			<td width="200"><input type="text"  name="model">	 
          			</td>
          			<td width="50">Type</td>
          			<td width="200">
          				<input type="text"  name="type">
						 
          			</td>
          			<td>
          				
          					<input type="submit" name="btnsearch" value="Search">
          				
          			</td>
          			</tr>
          			</table>
          			</form>
          		
          		 <%
 				 if(request.getParameter("btnsearch")!=null)
  				 {
          		 String brand=request.getParameter("brand");
  				 String model=request.getParameter("model");
  				 String type=request.getParameter("type");
  				 %>
  		<form  name="notification" method="post" >
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
			      <td width="164"><h4>Status</h4></td>
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
					ResultSet rs=st.executeQuery("select * from car_info where Car_company_Name='"+brand+"'and Car_Model_no='"+model+"' and type='"+type+"'");
					if(!(rs.next()))
				        	 rs=st.executeQuery("select * from car_info");
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
				    </tr>	 
				    <%}
				}
				catch(Exception e)
				{
					out.print(e);
				}
			  
			 %>
			 <tr>
			 	<td><a class="button" href="visitorLogin.jsp">Cart</a></td>
			 </tr>
			
          </table> 
          </form>
          		<%}%>
            </div>
            <article class="grid_4"></article>
          </div>
          </div>
          </div>
          </section>
          <p>
            <!--==============================footer=================================-->
          </p>
          <p>
            <footer>
              
          <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>