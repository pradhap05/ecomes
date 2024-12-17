

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
 * Servlet implementation class Productdelete
 */
@WebServlet("/Productdelete")
public class Productdelete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int a = Integer.parseInt(request.getParameter("n1"));
		
		PrintWriter pw = response.getWriter();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic","root","Pradhap@123");
			Statement st = con.createStatement();
			st.executeUpdate("delete from dyn1 where productid ="+a+" ");
			response.sendRedirect("adminhome.jsp");
			
		}
		
		catch(Exception e) {
			
			pw.println(e);
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
