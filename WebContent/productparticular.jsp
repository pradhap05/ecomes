<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
     <%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT PARTICULAR </title>


<style>

body{
background: linear-gradient(90deg, #c7c5f4, #776bcc);


}


form {
  margin: 0px;
  width: 30%;
  border: 2px solid red;
  padding: 45px;
  background-image: url("logion1.jpg");
  position: fixed;
  top: 1%;
  left: 450px;
  height: 85%;
  right:100px;
  font-size: 23px;
  color: white; 
  outline: 3px inset white;
  word-spacing: 7px;
  border-radius: 20px;
  
  
  
}

.sumbit:hover {
	background-color: blue;
	color: black;
	border-radius: 50px;
	
}

label {
	
	font-variant: small-caps;
	
}

input[type=text] {
  width: 100%;
  padding: 10px 10px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 5px;
  
  
}

input[type=password] {
  width: 100%;
  padding: 10px 10px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 5px;
}

input[type=submit] {
  width: 50%;
  padding: 10px 10px;
  margin-left : 120px;
  box-sizing: border-box;
  border-radius: 50px;
  background-color: teal;
  color: white;
  display: block;
  font-variant: small-caps;
  outline: 2px solid white;
}

input[type=number] {
  width: 100%;
  padding: 10px 10px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 5px;
  
}

input[type=text]:focus {
  background-color: tan;
}

input[type=text] {
  border: 2px solid red;
  border-radius: 4px;
}


input[type=number] {
  border: 2px solid red;
  border-radius: 4px;
}

input[type=number]:focus {
  background-color: tan;
}
input[type=text]:focus {
  border: 3px solid #555;
}



</style>



</head>
<body>



<%

  String a = request.getParameter("name");
  Date d=new Date();
  
  String a1=session.getAttribute("username").toString();
  if(a!= null)
  {
	  
	 
 
  
try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdynamic", "root",
			"Pradhap@123");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from dyn1 where productname='"+a+"'");
	while (rs.next()) 
	 {%>
	    <form action="#" method="post">
	    
	        <label>username</label> <br>
	        <input type="text"  value=<%=a1%> name="n5"> <br>
	    
            <label>Product name</label> <br> 
            <input type="text" value=<%= rs.getString(2) %> name="n1"> <br>
            <label>Product price</label> <br>
	    	<input type="text" value=<%= rs.getString(3) %> name="n2"> <br>
	    	 
            <label>address</label> <br>
	    	<input type="text" name="n3"> <br>
	    	
	    	<label>quantity</label> <br>
	    	<input type="text" name="n4">  <br>
	    	 
	    	<label>payment mode</label>  <br>
	    	<input type="text" name="n6"> <br> 
	    	
	    	<label>order date</label> <br> 
	    	<input type="text"  value="<%=d.toString() %>" name="n7"> <br> <br>
	    	
	    	
	    	<input type="submit" class="sumbit"> 
	    	
	    	</form>
	    <%}



} catch (Exception e) {

	out.println(e);

}
  }
  

  


%>




</body>
</html>