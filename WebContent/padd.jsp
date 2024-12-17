<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Add</title>
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
  height: 82%;
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

<div>
<form action="Productadd" method="post">


  <label>product id</label> <br> <br>
     <input type="text" name="n1"> <br> 
   <label>product name</label>  <br> <br> 
      <input type="text" name="n2" required="required"> <br>
   <label>product price</label> <br> <br>
      <input type="number" name="n3"> <br>
   <label>product stock</label>   <br> <br> 
      <input type="number" name="n4"> <br> <br>
    <label>product photo</label> <br> <br> 
      <input type="text" name="n5" >  <br> <br>
     
    <input type="submit"   class="sumbit">       










</form>

</div>
</body>
</html>