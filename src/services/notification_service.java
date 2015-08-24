package services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Date;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@SuppressWarnings("serial")
@WebServlet("/notification_service")
public class notification_service extends HttpServlet {
 

	Connection con;
	Statement st;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession s=request.getSession(true);
	
		response.setContentType("text/html");
	
		try
		{
			String comment=request.getParameter("comment"); 
			
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
			String date=""+new Date();
			int rs=st.executeUpdate("insert into notification(Date,notification_comment) values('"+date+"','"+comment+"')");
		    if(rs!=0)
		    {
		    	out.print("Ok");
		    	s.setAttribute("msg","Notification Saved Successfully.");
		    	String url=response.encodeURL("/Hybrid_car/NewNotification.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Error Occur try Again..");
		    	String url=response.encodeURL("/Hybrid_car/NewNotification.jsp");
	 			response.sendRedirect(url);
		    }
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}

}
