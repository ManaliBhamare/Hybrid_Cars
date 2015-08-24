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

/**
 * Servlet implementation class register_service
 */
@WebServlet("/register_service")
public class register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession s=request.getSession(true);	
		response.setContentType("text/html");
		Connection con;
		Statement st;
		try
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			String address=request.getParameter("address");
			String password=request.getParameter("password");
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
		 
			int rs=st.executeUpdate("insert into visitor(vname,email,mobil,address,password) values('"+name+"','"+email+"','"+mobile+"','"+address+"','"+password+"')");
		    if(rs!=0)
		    {
		    	out.print("Ok");
		    	s.setAttribute("msg","New User created Successfully.");
		    	String url=response.encodeURL("/Hybrid_car/visitorLogin.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Error Occur try Again..");
		    	String url=response.encodeURL("/Hybrid_car/register.jsp");
	 			response.sendRedirect(url);
		    }
		}
		catch(Exception e)
		{
			out.print(e);
		}

	}
}
