

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a = request.getParameter("n1");
		String b = request.getParameter("n2");
		PrintWriter pw = response.getWriter();
		
		
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic","root","Pradhap@123");
			Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery("select * from user where username ='"+a+"' and  password ='"+b+"'");
			
			if(rs.next())
			{
				
				HttpSession ss = request.getSession();
				
				ss.setAttribute("username", a);
				
				
				
				response.sendRedirect("pdetails.jsp");
				
				
			}
			else {
				
				response.sendRedirect("userlogin.jsp");
			}
			
		}
		catch(Exception e) {
			
			pw.print(e);
			
		}	
		
 		
		
		
		
		
		
	}

}
