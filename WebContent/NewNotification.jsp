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
	 var password=document.notification.comment.value;

	 if(password=="")
	{
		alert (error);
	    return false;	
	}
	else
	  return true;
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
		<form  id="contact-form" name="notification" method="post" action="/Hybrid_car/notification_service">
          <table >
            <tr>
				<td height="100" colspan="2"><br><br><h3>New Notification</h3></td>
			</tr>
			
			<tr> 
				  <td width="150">Enter Notification</td>
				  <td><textarea name="comment"   ></textarea></td>
			</tr>
			<tr>
			  	  	<td>&nbsp;</td>
				  	<td><input type="Submit" onClick="return validate()"><br>
				  	<p align="center"><font style="background-color: yellow;">
							<% String a=(String) session.getAttribute("msg");
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
			<form  name="notification" method="post" action="/Hybrid_car/delete_notification_service">
			<table>
            <tr>
				<td height="100" colspan="2"><br><br><h3>Notification view</h3></td>
			</tr>
			<tr>
				    <td width="50" height="50"><h4>Sr_no</h4></td>
				    <td width="250"><h4>DATE</h4></td>
				    <td width="250"><h4>Comment</h4></td>
				    <td width="50"><h4>Delete</h4></td>
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
				    <td height="50"><%= rs.getString(1) %> </td>
				    <td><%= rs.getString(2) %></td>
				    <td><%= rs.getString(3) %></td>
				    <td><input type="submit" value="<%=rs.getString(1)%>" name="btndelete" style="background:url(images/trash.png)"></td>  
				    </tr>	 
				    <%}
				}
				catch(Exception e)
				{
					out.print(e);
				}
			  
			 %>
			<tr>
				<td height="100" colspan="2" colspan="4"><br><br><h3> </h3></td>
			</tr>
          </table> 
			</form>
			 
		</div>
		<!--==============================footer=================================-->
		
 
      <div class="main"> <span>Copyright &copy; <a href="#">2013-2014</a> All Rights Reserved</span></div>
</div>
<script type="text/javascript">Cufon.now();</script>
<%}%>
</body>
</html>