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
    </header>
    <!--==============================content================================--><div class="main">
        <div class="container_12">
          <table width="960">
            <tr><td height="50"></td></tr>
			<tr>
              <td width="700"><div class="wrapper p4">
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i1.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>AUDI</h4>
                      <a class="button" href="AUDI.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i9.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>BMW</h4>
                      <a class="button" href="bmw.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i8.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>HYUNDAI</h4>
                      <a class="button" href="hyundai.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i2.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>FORD</h4>
                      <a class="button" href="ford.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i3.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>TOYOTA</h4>
                      <a class="button" href="toyota.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i4.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>HONDA</h4>
                      <a class="button" href="honda.jsp">Read More</a> </div>
                  </div>
                </article>
                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i5.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>MERCEDS</h4>
                      <a class="button" href="merceds.jsp">Read More</a> </div>
                  </div>
                </article>
		<article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i6.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>Mahindra</h4>
                      <a class="button" href="mahindra.jsp">Read More</a> </div>
                  </div>
                </article>

                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i6.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>VOLKSWA</h4>
                      <a class="button" href="volkswagen.jsp">Read More</a> </div>
                  </div>
                </article>

                <article class="grid_4">
                  <div class="wrapper">
                    <figure class="img-indent"><img src="images/i7.jpg" alt="" width="181" height="88"></figure>
                    <div class="extra-wrap">
                      <h4>NISSAN</h4>
                      <a class="button" href="nissan.jsp">Read More</a> </div>
                  </div>
                </article>
              </div>
                          
			  
			  </td>               
              <td> <h3>News</h3>
             <marquee behavior="scroll" direction="up" scrolldelay="500" onfocus="">
             <table>
             <tr>
				<td height="70" colspan="2"></td>
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
					 
					ResultSet rs=st.executeQuery("select * from notification");
				    while(rs.next())
				    {%>
				    <tr> 
				    <td><%= rs.getString(3) %></td>				      
				    </tr>	 
				    <%}
				}
				catch(Exception e)
				{
					out.print(e);
				}
			  
			 %>
              
            </table>  </marquee>
           </td>
           </tr>
          </table> 
		</div>
		<!--==============================footer=================================-->
		
<footer>
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>