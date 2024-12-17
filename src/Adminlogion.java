

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlogion
 */
@WebServlet("/Adminlogion")
public class Adminlogion extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		String a = request.getParameter("n1");
		String b = request.getParameter("n2");
		
		HttpSession session = request.getSession();
		session.setAttribute("username", a);
		
		
		if(a.equals("pradhap") && b.equals("lee"))
		{
		
		response.sendRedirect("adminhome.jsp");
		
	}
		else {
			
		 response.sendRedirect("adminlogi.jsp");
		
		}
		}

}
