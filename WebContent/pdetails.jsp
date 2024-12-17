<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>

<style >

body{
background: linear-gradient(90deg, #c7c5f4, #776bcc);
    height: auto;
	background-position: left;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	background-color: #cccccc;
}

.container{

display: grid;
gap:25px;
grid-template-columns:auto auto auto ;



}

.product{
margin-left :60px;
border: 2px solid red ;
padding: 15px;
width: 350px;
height: auto;
text-align: center;
color :white;
background-image: url("logion1.jpg"); 
font-variant: small-caps;
font-size: 20px;
border-radius: 25px;
outline: 3px inset  white;
}

img {
	width: 250px;
	height: auto;
	
}

a:hover{
background-color: blue;
color: black;
padding: 10px ;
border-radius: 50px;
text-decoration: none;

}

a{
text-decoration: none;
background-color: teal ;
color: black;
padding: 10px ;
border-radius: 50px;

}

</style>
</head>
<body>

<div class="container">

	<%
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic", "root",
					"Pradhap@123");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from dyn1");
			while (rs.next()) 
			{%>
				<div class="product">
				<img src=<%= rs.getString(5) %> width="100px" height="100px"><br>
				
				 
				 <h3><%= rs.getString(2) %></h3>
				  <h4><%= rs.getString(3) %></h4>
				  
				  <a href="productparticular.jsp?name=<%= rs.getString(2)%>">Addtocart</a>

				
				
				
				</div>

			<%}

		} catch (Exception e) {

			out.println(e);

		}
	%>
</div>
</body>
</html>

