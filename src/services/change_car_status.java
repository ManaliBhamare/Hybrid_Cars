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
import javax.servlet.http.HttpSession;
 
@WebServlet("/change_car_status")
public class change_car_status extends HttpServlet {
	private static final long serialVersionUID = 1L;


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
		System.out.println(request.getParameter("btndelete")); 
		int id=Integer.parseInt(request.getParameter("btndelete"));
		 		
		String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection(DBSource,"root","");
		st=con.createStatement();
		int rs=st.executeUpdate("update car_info set status='Sold' where Sr_No="+id);
	    if(rs!=0)
	    {
	    	out.print("Ok");
	    	String url=response.encodeURL("/Hybrid_car/avail cars.jsp");
 			response.sendRedirect(url);
 			
	    }
	    else
	    {
	    	s.setAttribute("msg","Login Id or Password is not valid");
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
