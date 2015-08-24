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
	 var ccname,ctype,file,error="";
	 ccname=document.image.ccname.value;  
	 ctype=document.image.ctype.value;
	 file=document.image.file.value;
	 
	 
	 if(ccname=="")
	 {
		error="Enter Car Company Nmae \n";		
	 }
	if(ctype=="")
	{
		error=error+"Enter Car model name\n";		
	}
	if(file=="")
	{
		error=error+"Choose file";		
	}

	if(error!="")
	{
	      alert (error);
	      return false;
	}
}
function validate1()
{ 
	 var ccname,ctype,file,error="";
	 ccname=document.video.ccname.value;  
	 ctype=document.video.ctype.value;
	 file=document.video.file.value;
	 
	 
	 if(ccname=="")
	 {
		error="Enter Car Company Nmae \n";		
	 }
	if(ctype=="")
	{
		error=error+"Enter Car model name\n";		
	}
	if(file=="")
	{
		error=error+"Choose file";		
	}

	if(error!="")
	{
	      alert (error);
	      return false;
	}
}
function reset()
{
	window.history.go();
}
</script>
<body id="page4">
<%
	if((session.getAttribute("uname")==null)  && (session.getAttribute("upass")==null))
	{
		%><jsp:forward page="/Login.jsp"></jsp:forward><%
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
          <div class="fright">
            <div class="indent">  <span class="phone"><a href="/Hybrid_car/logout">Logout</a></span> </div>
          </div>
        </div>
       <nav>
          <ul class="menu">		   
             <li><a class="active" href="Admin.jsp">Home</a></li>			            
			<li><a href="NewNotification.jsp">New Notification</a></li>            
			<li><a href="feedbackView.jsp">Feedback</a></li>            
            <li><a href="upcoming_insert.jsp">upcoming Cars</a></li> 
            <li><a href="avail cars.jsp">Avail Cars</a></li>
          </ul>
          </nav>
      </div>
    </header>
    <!--==============================content================================--><div class="main">
        <div class="container_12">
          
          <fieldset>
          <form id="contact-form" method="post" action="/Hybrid_car/image_service" method="post" name=image>
          <table  >
		  
            <tr>
				<td height="100" colspan="2"><br><br><h3>Upload image</h3></td>
			</tr>
			<tr>
              <td width="150" height="50">Car Company Name</td> 
			  <td><input type="text" name="ccname"></td>
			</tr>
			<tr>
              <td width="100" height="50">Car Model Name</td> 
			  <td><input type="text" name="ctype"></td>
			</tr>
			<tr> 
				  <td height="50">Upload</td>
				  <td><input type="file" name="file"></td>
			</tr>
			<tr>
			
			  	  	<td >&nbsp;</td>
				  	<td><input type="submit" value="SUBMIT" onClick=" return validate()" width="10">
				  	<br>
				  	<p align="center"><font style="background-color: yellow;">
					 	    <% String a=(String)session.getAttribute("msg");
							if(a!=null)
							{
								out.println("<br>"+a);
								session.setAttribute("msg", null);
							}
						%></font></p> 
				  	</td>
			</tr>     
			         
             </table> 
             </form>
              
         <form id="contact-form" method="post" action="/Hybrid_car/video_service" method="post" name="video">     
             <table>
			<tr>
				<td height="100" colspan="2"><br><br><h3>Upload Video</h3></td>
			</tr>
			<tr>
              <td width="150" height="50">Car Company Name</td> 
			  <td><input type="text" name="ccname"></td>
			</tr>
			<tr>
              <td width="150" height="50" >Model Name</td> 
			  <td><input type="text" name="ctype"></td>
			</tr>
			<tr> 
				  <td height="50">Upload</td>
				  <td><input type="file" name="file"></td>
			</tr>
			<tr>
			  	  	<td height="50">&nbsp;</td>
				  	<td><input type="submit" value="SUBMIT" onClick=" return validate1()" width="10">
				  	<br>
				  	<p align="center"><font style="background-color: yellow;">
					 	    <% String ab=(String)session.getAttribute("msg");
							if(ab!=null)
							{
								out.println("<br>"+ab);
								session.setAttribute("msg", null);
							}
						%></font></p> 
				  	</td>
			</tr>              
               
           
			 
          </table> </form></fieldset> 
		</div>
		<!--==============================footer=================================-->
		
<footer>
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
<%}%>
</body>
</html>