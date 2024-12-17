<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product update</title>

<style >

body{
background: linear-gradient(90deg, #c7c5f4, #776bcc);


}


form {
  margin: 10px;
  width: 30%;
  border: 2px solid red ;
  padding: 60px;
   background-image: url("logion1.jpg");
  position: fixed;
  top: 70px;
  left: 420px;
  height: 400px;
  right:130px;
  font-size: 22px;
  color: white;
  outline: 3px inset white ;
  border-radius: 20px; 
  
  
  
  
  
}

.sumbit:hover {
	background-color: blue;
	color: black;
	
}

label {
	
	font-variant: small-caps;
	word-spacing: 9px;
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
  width: 50%;
  padding: 12px 20px;
  margin-left : 120px;
  box-sizing: border-box;
  border-radius: 50px;
  background-color: teal ;
  color: white;
  display: block;
  outline: 2px solid white 
}

input[type=number] {
  width: 100%;
  padding: 15px 20px;
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









</style>

</head>
<body>

<form action="Productupdate" method="post">
<label>product id</label> <br> <br>
<input type="text" name="n1" required="required"> <br>
<label>product price</label> <br> <br>
<input type="text" name="n2" required="required"> <br>
<label>product stock</label> <br> <br>
<input type="text" name="n3" required="required" > <br> <br> 

<input type="submit" class="sumbit">



</form>

</body>
</html>