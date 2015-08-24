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
 
@WebServlet("/upcoming_insert_service")
public class upcoming_insert_service extends HttpServlet {
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
			String cname=request.getParameter("cname");
			String mname=request.getParameter("modelname");
			String date=request.getParameter("date");
			int price=Integer.parseInt(request.getParameter("price"));
			
			String DBSource = "jdbc:mysql://localhost:3306/hybrid_car";
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection(DBSource,"root","");
			st=con.createStatement();
		 
			int rs=st.executeUpdate("insert into upcoming_car(car_company_name,model,launch_date,cost) values('"+cname+"','"+mname+"','"+date+"','"+price+"')");
		    if(rs!=0)
		    {
		    	out.print("Ok");
		    	s.setAttribute("msg","New Car Detail Saved Successfully.");
		    	String url=response.encodeURL("/Hybrid_car/upcoming_insert.jsp");
	 			response.sendRedirect(url);
	 			
		    }
		    else
		    {
		    	s.setAttribute("msg","Error Occur try Again..");
		    	String url=response.encodeURL("/Hybrid_car/upcoming_insert.jsp");
	 			response.sendRedirect(url);
		    }
		}
		catch(Exception e)
		{
			out.print(e);
		}

	}

}
