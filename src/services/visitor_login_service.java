package services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class login_service
 */
@WebServlet("/visitor_login_service")
public class visitor_login_service extends HttpServlet {
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
			String id=request.getParameter("loginid");
			String password=request.getParameter("password");
			
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
			
			ResultSet rs=st.executeQuery("select * from visitor where vname='"+id+"' and password='"+password+"'");
		    if(rs.next())
		    {
		    	out.print("Ok");
		    	s.setAttribute("vname",id);
		    	s.setAttribute("vpassword",password);
		    	String url=response.encodeURL("/Hybrid_car/forum.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Login Id or Password is not valid");
		    	String url=response.encodeURL("/Hybrid_car/visitorLogin.jsp");
	 			response.sendRedirect(url);
		    }
		}
		catch(Exception e)
		{
			out.print(e);
		}
		
	}

}
