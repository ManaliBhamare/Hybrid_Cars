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
<script src="js/tms-0.3.js" type="text/javascript"></script>
<script src="js/tms_presets.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/jquery.equalheights.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
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
           
        </div>
          <nav>
         <ul class="menu">		   
            <li><a class="active" href="index.jsp">Home</a></li>
			<li><a href="Login.jsp">Login</a></li>            
            		<li><a href="carlist.jsp">Brands</a>
			</li>
			<li><a href="searchCar.jsp">Search Car</a></li>				 	
            		<li><a href="upcoming.jsp">Upcoming</a></li>				
			<li><a href="video.jsp">Videos </a></li>
			<li><a href="Contact_us.jsp">contact</a></li>
			<li><a href="about us.jsp">About Us</a></li>
             
          </ul>   
        </nav>
        <div class="slider-wrapper">
          <div class="slider">
            <ul class="items">
              <li> <img src="images/01.jpg" alt="" /> </li>
              <li> <img src="images/02.jpg" alt="" /> </li>
              <li> <img src="images/03.jpg" alt="" /> </li>
			  <li> <img src="images/04.jpg" alt="" /> </li>
            </ul>
          </div>
          <a class="prev" href="#">prev</a> <a class="next" href="#">next</a> </div>
      </div>
    </header>
    <!--==============================content================================-->
    <section id="content">
      <div class="main">
        <div class="container_12">
          <div class="wrapper p5">
            
            <article class="grid_4">
              <div class="wrapper">
                <div class="extra-wrap">
                  <h4>Why Buy a Hybrid Car</h4>
                  
 
<p align="justify">
Hybrid cars are popular because they appeal to such a wide range of consumers. The ecologically conscious can appreciate the the ultra low emissions and amazing fuel economy, while the economically conscious can appreciate the low depreciation and great savings at the pump. See Hybrid Car Prices Now! 

Lower fuel emissions help to curb the infamous "Greenhouse Effect."

Hybrid cars are in high demand, and because of this, they hold their value much better than most gasoline automobiles.

Burning fossil fuel releases potentially harmful pollutants, but reducing the amount of fuel that needs to be burned may allow the environment to dispose of these pollutants by natural means.

Hybrid cars offer huge savings at the pump. Switching from the average sedan to the average hybrid could save the driver over 500 dollars a year!

Hybrid car technology has been accepted as a solution for the automobile pollution problems of the day.</p>

 
 </div>
              </div>
            </article>
            <article class="grid_4">
              <div class="wrapper">
                <div class="extra-wrap">
                  <h4>Hybrid Car Information and Resources</h4>
                  
<p align="justify">A hybrid car, also known as an HEV or hybrid electric vehicle, is an automobile that is powered by two sources; an internal combustion engine, and an electric motor. Hybrid cars have no use for plugs, as they are amply charged by the movement of the wheels, and storing the kinetic energy that is generated through a process called regenerative braking. Hybrid cars have many environmental benefits (see Emissions and Pollution,) and economical benefits (see Facts, Why Buy a Hybrid, and Tax Breaks and Rebates.)
 
This site is a resource center for consumers searching for information on hybrid and electric vehicles. It has been designed and published to inform the public on the development and use of hybrid cars and related technologies.</p>
 </div>
              </div>
            </article>
            <article class="grid_4">
              <div class="wrapper">
                <div class="extra-wrap">
                  <h4>NEWS</h4>
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
              </div>
            </article>
            
          </div>
        </div>
      </div>
    </section>
    <!--==============================footer=================================-->
    <footer>
    <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span>
    
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(window).load(function () {
    $('.slider')._TMS({
        duration: 1000,
        easing: 'easeOutQuint',
        preset: 'simpleFade',
        slideshow: 7000,
        banners: false,
        pauseOnHover: true,
        pagination: false,
        pagNums: false,
        nextBu: '.next',
        prevBu: '.prev'
    });
});
</script>

</html>