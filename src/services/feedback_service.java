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
 
@WebServlet("/feedback_service")
public class feedback_service extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	@SuppressWarnings("unused")
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
			String phone=request.getParameter("phone");
			String msg=request.getParameter("comment");
			
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
			String date=""+new Date();
			int rs=st.executeUpdate("insert into feedback(name,email,phone,comment) values('"+name+"','"+email+"','"+phone+"','"+msg+"')");
		    if(rs!=0)
		    {
		    	out.print("Ok");
		    	s.setAttribute("msg","Feedback Saved Successfully.");
		    	String url=response.encodeURL("/Hybrid_car/contact_us.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Error Occur try Again..");
		    	String url=response.encodeURL("/Hybrid_car/contact_us.jsp");
	 			response.sendRedirect(url);
		    }
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}

}
