

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Productadd
 */
@WebServlet("/Productadd")
public class Productadd extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		String b = request.getParameter("n2");
		String c = request.getParameter("n3");
		String d = request.getParameter("n4");
		String e = request.getParameter("n5");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic","root","Pradhap@123");
			Statement st = con.createStatement();
			st.executeUpdate("insert into dyn1(productname,productprice,productstock,productphoto) values('"+b+"','"+c+"','"+d+"','"+e+"')");
			
			response.sendRedirect("adminhome.jsp");
		}
		catch(Exception e1) {
			
			pw.print(e1);
			
		}	
			
			
		
		
	}
		
	

}
