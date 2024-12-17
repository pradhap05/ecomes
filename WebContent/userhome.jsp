<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home </title>

<style>

body{
background: linear-gradient(90deg, #c7c5f4, #776bcc);


}


table ,th{
	background-image: url("logion1.jpg"); 
	color:white;
	
	width: 500px;
	border-collapse: collapse;
	font-size: 20px;
    padding :2px;
    margin: 20px;
	font-variant: small-caps; 
	border: 3px solid red;
	outline: 3px inset white;
	
	
	
}


.sumbit:hover {
	background-color: blue;
	color: black;
	
}
input[type=submit] {
  
  text-align :center;
  border-radius: 3px;
  color: black ;
  margin-left : 50px;
  padding: 12px 20px;
}




</style>





</head>
<body>

<%
  String a =session.getAttribute("username").toString();

    out.print("WELCOME  TO   USER  HOME  DETAILS ");
 

%>

<div class="abc">
<%

try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic", "root",
			"Pradhap@123");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from user");
	while (rs.next()) 
	{%>
	
	
	
	<div class="h">
	
	<table>
	
	<tr>
	  <th> <h3><%= rs.getString(1)%></h3> </th>
	  <th> <h3><%= rs.getString(2)%></h3> </th>
	  <th> <h3><%= rs.getString(3) %></h3> </th>
	   
	  
    
	 </tr>
	 
	 <tr>
	 
	   
	 <td>  <input type="submit" class="sumbit"> </td>

</tr>
  </table>
	</div>
		
	<%}

} catch (Exception e) {

	out.println(e);

}





%>

</div>








</body>
</html>