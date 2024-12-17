

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
 * Servlet implementation class Productupdate
 */
@WebServlet("/Productupdate")
public class Productupdate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		String a = request.getParameter("n1");
		String b = request.getParameter("n2");
		String c = request.getParameter("n3");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic","root","Pradhap@123");
			Statement st = con.createStatement();
			st.executeUpdate("update dyn set productprice='"+b+"',productstock='"+c+"' where productid ='"+a+"'");
			
			response.sendRedirect("adminhome.jsp");
		}
		catch(Exception e) {
			
			pw.println(e);
			
		}	
			
			
		
		
	}
		
	

}
