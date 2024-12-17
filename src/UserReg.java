

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
 * Servlet implementation class UserReg
 */
@WebServlet("/UserReg")
public class UserReg extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter pw = response.getWriter();
		
		String a = request.getParameter("n1");
		String b = request.getParameter("n2");
		String c = request.getParameter("n3");
		
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic","root","Pradhap@123");
			Statement st = con.createStatement();
			st.executeUpdate("insert into user values('"+a+"','"+b+"','"+c+"')");
			response.sendRedirect("userlogin.jsp");
		}
		catch(Exception e) {
			
			pw.print(e);
			
		}	
			
			
		
		
		
		
		
	}

}
