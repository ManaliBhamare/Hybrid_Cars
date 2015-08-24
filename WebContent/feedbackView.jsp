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
        <form  name="notification" method="post" action="/Hybrid_car/delete_feedback_service">
          <table>
            <tr>
				<td height="100" colspan="5"><br><br><h3>Feedback view</h3></td>
			</tr>
			<tr>
				    <td width="80" height="50"><h4>Sr_no</h4></td>
				    <td width="170"><h4>Name</h4></td>
				    <td width="150"><h4>Email</h4></td>
				    <td width="100"><h4>Phone</h4></td>
				    <td width="250"><h4>Comment</h4></td>  
				    <td width="50"><h4>DELETE</h4></td>
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
					 
					ResultSet rs=st.executeQuery("select * from feedback");
				    while(rs.next())
				    {%>
				    <tr>
				    <td height="50"><%= rs.getString(1) %> </td>
				    <td><%= rs.getString(2) %></td>
				    <td><%= rs.getString(3) %></td>
				    <td><%= rs.getString(4) %></td>
				    <td><%= rs.getString(5) %></td>
				    <td><input type="submit" value="<%=rs.getString(1)%>" name="btndelete" style="background:url(images/trash.png)no-repeat"></td>  
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