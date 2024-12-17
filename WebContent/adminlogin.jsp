<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminloginpage</title>

<style>
body{
background: linear-gradient(90deg, #c7c5f4, #776bcc);



}


form {
  margin: 10px;
  width: 20%;
  border: 2px solid red;
  outline :3px inset white;
  padding: 60px ;
 background-image: url("logion1.jpg");
  position: fixed;
  top: 130px;
  left: 530px;
  height: 39%;
  font-size: 22px;
  color: white;
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
  padding: 15px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 5px;
  
}

input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border-radius: 5px;
}

input[type=submit] {
  
  padding: 15px 20px;
  margin-left: 50px ;
  box-sizing: border-box;
  border-radius: 50px;
  background-color: teal;
  color: white;
  display: block; 
  width: 200px;
  font-size: 20px;
  font-variant: small-caps;
  outline: 2px solid white;
}

input[type=text] {
  border: 2px solid red;
  border-radius: 4px;
}


input[type=password] {
  border: 2px solid red;
  border-radius: 4px;
}


input[type=text]:focus {
  background-color: tan;
}


input[type=password]:focus {
  background-color: tan;
}
input[type=text]:focus {
  border: 3px solid #555;
}

</style>
</head>


<body>
<form action="Adminlogion" method="post">


<label>username</label> <br> <br>
   <input type="text" name="n1"required> <br>
<label>password</label>  <br> <br>
   <input type="password" name="n2"required> <br><br>
  <input type="submit" value="Login" class="sumbit" >  
   


</form>
</body>
</html>