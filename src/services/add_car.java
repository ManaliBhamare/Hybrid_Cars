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
 
@WebServlet("/add_car")
public class add_car extends HttpServlet {
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
			String name=request.getParameter("cname");
			String model=request.getParameter("model");
			String type=request.getParameter("type");
			int cost=Integer.parseInt(request.getParameter("cost"));
			System.out.println(cost);
			String status="Available";
			String country="India";
			
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
		
			int rs=st.executeUpdate("insert into car_info(Car_Model_no,type,Car_company_Name,cost,country,Status) values('"+model+"','"+type+"','"+name+"',"+cost+",'"+country+"','"+status+"')");
		    if(rs!=0)
		    {
		    	out.print("Ok            ");
		    	s.setAttribute("msg","Car Info Saved Successfully.");
		    	String url=response.encodeURL("/Hybrid_car/avail cars.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Error Occur try Again..");
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