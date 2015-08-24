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
<script lang="javaScript" type="text/javascript" src="calendar.js"></script>
<link href="calendar.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>

<script lang="javascript">
function validate()
{
	
	 var cname,modelname,date,price,error="";
	 cname=document.newcar.cname.value;	
	 modelname=document.newcar.modelname.value;
	 date=document.newcar.date.value;
	 price=document.newcar.price.value;
	  
	 
	 if(cname=="")
	 {
		error="Enter car Company Name \n";		
	 }
	 if(modelname=="")
	{
		error=error+"Enter Car Model Name \n";		
	}
	if(date=="")
	{
		error=error+"Enter Car Releasing date\n";		
	}
	if(price=="")
	{
		error=error+"Enter Car price \n";		
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
		%><jsp:forward page="/Hybrid_car/Login.jsp"></jsp:forward><%
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
       
        <form name="newcar" action="/Hybrid_car/upcoming_insert_service" method="post">
          <fieldset>
          <table id="contact-form" width="470" border="1">
		  <tr>
    <td colspan="2" height="100">
    				<p align="center"><font style="background-color: yellow;">
					 	    <% String a=(String)session.getAttribute("msg");
							if(a!=null)
							{
								out.println("<br>"+a);
								session.setAttribute("msg", null);
							}
						%></font></p> </td>
     
  </tr>
  <tr>
    <td width="198" height="40">Company Name</td>
    <td width="233"><input name="cname" type="text"></td>
  </tr>
  <tr>
    <td height="40">Model Name</td>
    <td><input name="modelname" type="text"></td>
  </tr>
  <tr>
    <td height="40">Launch date(dd/mm/yyyy)</td>
    <td><input name="date" type="text"></td>
  </tr>
  <tr>
    <td height="40">Price</td>
    <td><input name="price" type="text" value="0"></td>
  </tr>
  <tr>
    
    <td colspan="2" align="center" height="100"><br><br>
     
    <input name="clear" type="button" value="CLEAR" onClick="reset()">&nbsp; 
    <input type="submit" value="SUBMIT" onClick=" return validate()" width="10">
						 	 
	</td>
  </tr>
</table></fieldset>
</form>

		</div>
		<!--==============================footer=================================-->
		
 
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
<%}%>
</body>
</html>