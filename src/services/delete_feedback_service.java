package services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class delete_feedback_service
 */
@WebServlet("/delete_feedback_service")
public class delete_feedback_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con;
	Statement st;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	 
	response.setContentType("text/html");

	try
	{
		System.out.println(request.getParameter("btndelete")); 
		int id=Integer.parseInt(request.getParameter("btndelete"));
		 		
		String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection(DBSource,"root","");
		st=con.createStatement();
		int rs=st.executeUpdate("delete from feedback where Sr_No="+id);
	    if(rs!=0)
	    {
	    	out.print("Ok");
	    	String url=response.encodeURL("/Hybrid_car/avail cars.jsp");
 			response.sendRedirect(url);
 			
	    }
	    else
	    {
	    	
	    	String url=response.encodeURL("/Hybrid_car/avail cars.jsp");
 			response.sendRedirect(url);
	    }
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
}
}
