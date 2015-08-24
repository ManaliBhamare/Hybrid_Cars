package services;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class visitor_logout
 */
@WebServlet("/visitor_logout")
public class visitor_logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		HttpSession s=request.getSession(true);

		response.setContentType("text/html");
		s.setAttribute("vname",null);
		s.setAttribute("vpassword",null);
    	String url=response.encodeURL("/Hybrid_car");
		response.sendRedirect(url);
	}
}
