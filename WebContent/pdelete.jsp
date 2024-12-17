<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product delete</title>

<style>

body {
	background: linear-gradient(90deg, #c7c5f4, #776bcc);
}

form {
  margin: 20px;
  width: 20%;
  border: 2px solid red;
  padding: 60px;
  background-image: url("logion1.jpg");
  position: fixed ;
  top: 100px;
  left: 500px;
  height: 240px;
  font-size: 22px;
  color: white;
  outline: 3px inset white ;
  border-radius: 20px; 
  
  
}
.sumbit:hover {
	background-color: blue;
	color: black;
	
}
input[type=text] {
  width: 50%;
  padding: 15px 20px;
  margin: 10px 0;
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
  outline: 2px solid white  ;  
}
input[type=text] {
  border: 2px solid red;
  border-radius: 4px;
}

input[type=text]:focus {
  background-color: tan;
}
input[type=text]:focus {
  border: 3px solid #555;
}

label {
	
	font-variant: small-caps;
	 word-spacing: 10px;
}
input[type=text] {
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}

</style>





</head>
<body>


<form action="Productdelete" method="post">
<label>Product delete</label> <br> <br>
<input type="text" name="n1" placeholder="product id" required="required"> <br> <br> <br>
<input type="submit" class="sumbit">





</form>

</body>
</html>