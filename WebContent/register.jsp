<%@ page language="java" %>
<%@page session="true" %> 
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
	
	 var name,email,mobil,address,password,repassword,error="";
	 name=document.login.name.value;
	 email=document.login.email.value; 
	 mobil=document.login.mobile.value; alert (mobil);
	 address=document.login.address.value;
	 password=document.login.password.value;
	 repassword=document.login.repassword.value; 
	 if(name=="")
	 {
		error="Enter name \n";		
	 }
	if(email=="")
	{
		error=error+"Enter email \n";		
	}
	if(mobil=="")
	{
		error=error+"Enter Mobile No\n";		
	}
	if(address=="")
	{
		error=error+"Enter Address\n";		
	}
	if(password=="")
	{
		error=error+"Enter Address\n";		
	}
	if(repassword=="")
	{
		error=error+"Enter Re-Password\n";		
	}
	if(repassword==password)
	{
		error=error+"Enter Re-Password Correct\n";		
	}
	if(error!="")
	{
	      alert (error);
	      return false;
	}
}
function reset()
{
	alert("Hi");
}
</script>
<body id="page6">
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
          <div class="container-bot">
            <div class="container-top">
              <div class="container">
                <div class="wrapper">
                  <article class="grid_8">
                    <div class="indent-left">
					<fieldset>
					
		<form id="contact-form" method="post" action="/Hybrid_car/register_service" name="login">
					 <table  border="1">
					 <tr>
    					<td width="100" height="50">&nbsp;</td>
						<td ></td>
 					   <td>  <h3 class="p1">Visitor Register</h3></td>
				  </tr>
  					<tr>
    					<td width="100" height="50">&nbsp;</td>
						<td width="100">Name</td>
 					   <td> <input  type="text" name="name"/></td>
				  </tr>
				  	<tr>
    					<td width="100" height="50">&nbsp;</td>
						<td width="100">Email</td>
 					   <td> <input  type="text" name="email"/></td>
				  </tr>
				  	<tr>
    					<td width="100" height="50">&nbsp;</td>
						<td width="100">Mobile No</td>
 					   <td> <input  type="text" name="mobile"/></td>
				  </tr>
				  	<tr>
    					<td width="100" height="120">&nbsp;</td>
						<td width="100">Address</td>
 					   <td><textarea name="address"></textarea></td>
				  </tr>
 				 <tr>
  					  <td height="50">&nbsp;</td>
   					 <td>Password</td>
   					 <td>  <input  type="password" name="password"/></td>
  				</tr>
				 <tr>
  					  <td height="50">&nbsp;</td>
   					 <td>Confirm Password</td>
   					 <td>  <input  type="password" name="repassword"/></td>
  				</tr>
 				 <tr>
    				<td>&nbsp;</td>
   					 <td>&nbsp;</td>
   					 <td>
					     <input name="submit" type="submit" onClick="return validate()" value="Register">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   					     <input name="button" type="button" onClick="reset()" value="CLEAR" width="10">
   					 </td>
  				</tr>
				<tr>
				    <td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><p align="center"><font style="background-color: yellow;">
					 	    </font></p> 
                        <% String a=(String)session.getAttribute("msg");
							if(a!=null)
							{
								out.println("<br>"+a);
								session.setAttribute("msg", null);
							}
						%></td>
				</tr>
</table>
</form>
      </fieldset>     
						 	
                      
                    </div>
                  </article>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--==============================footer=================================-->
    <footer>
    <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>

</body>
</html>