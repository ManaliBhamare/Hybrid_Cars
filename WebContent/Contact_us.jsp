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
	 var name,email,phone,comment,error="";
	 name=document.feedback.name.value;
	 email=document.feedback.email.value;
	 phone=document.feedback.phone.value;
	 comment=document.feedback.comment.value;
	 
	 if(name=="")
	 {
		error="Enter Name \n";		
	 }
	 if(email=="")
	{
		error=error+"Enter Email ID\n";		
	}
	 if(phone=="")
		{
			error=error+"Enter phone no\n";		
		}
	 if(comment=="")
		{
			error=error+"Enter comment";		
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
<body id="page6">
<div class="main-bg">
  <div class="bg">
    <!--==============================header=================================-->
    <header>
      <div class="main">
        <div class="wrapper">
          <h2><a href="index.html">Hybrid Cars</a></h2><div class="indent"> <span class="phone"> 
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
                      <h3 class="p1">Feedback</h3>
                      <form id="contact-form" action="/Hybrid_car/feedback_service" method="post" name="feedback">
                        <fieldset>
                          <label><span class="text-form">Name:</span>
                            <input name="name" type="text" />
                          </label>
                          <label><span class="text-form">Email:</span>
                            <input name="email" type="text" />
                          </label>
                          <label><span class="text-form">Phone:</span>
                            <input name="phone" type="text" />
                          </label>
                          <div class="wrapper">
                            <div class="text-form">Message:</div>
                            <div class="extra-wrap">
                              <textarea rows="10" cols="50" name="comment"></textarea><br><br>
                              <br>
                              <br>
                        </div> <br><br><input name="submit" type="submit" onClick="return validate()" align="middle">
                              <p align="center"><font style="background-color: yellow;">
                               
                                <% String a=(String) session.getAttribute("msg");
							if(a!=null)
							{
								out.println("<br>"+a);
								session.setAttribute("msg", null);
							}
						%></font></p>
                         
                        </fieldset>
                      </form>
                    </div>
                  </article>
                  <article class="grid_4">
                    <div class="indent-left2 indent-top">
                      <div class="box p4">
                        <div class="padding">
                          <div class="wrapper">
                            <figure class="img-indent"><img src="images/page1-img4.png" alt=""></figure>
                            <div class="extra-wrap">
                              <h3 class="p0">Our Hours:</h3>
                            </div>
                          </div>
                          <p class="p1"><strong>24 Hour Emergency Towing</strong></p>
                          <p class="color-1 p0">Monday - Friday: 7:30 am - 6:00</p>
                          <p class="color-1 p1">Saturday: 7:30 am - Noon</p>
                        </div>
                      </div>
                      <div class="indent-left">
                        <dl class="main-address">
                          <dt>Demolink.org 8901 Marmora Road,<br>
                            Glasgow, D04 89GR.</dt>
                          <dd><span>Telephone:</span> +1 959 552 5963;</dd>
                          <dd><span>FAX:</span> +1 959 552 5963</dd>
                          <dd><span>E-mail:</span><a href="#">mail@hybridcar.org</a></dd>
                        </dl>
                      </div>
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
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>

</body>
</html>