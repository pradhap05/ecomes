<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
body {
	background-image: url("logion1.jpg");
	height: 700px;
	background-position: left;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	
}

form {
	margin: 20px;
	width: 30%;
	border: 2px solid red;
	padding: 60px;
	background: linear-gradient(90deg, #c7c5f4, #776bcc);
	position: fixed;
	top: 20px;
	left: 430px;
	height: 550px;
	right: 130px;
	font-size: 22px;
	outline: 3px inset white  ;
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
	border-radius: 10px;
	text-align: center;
	font-size: 17px;
	font-variant: small-caps;
	
	
}

input[type=password] {
	width: 100%;
	padding: 15px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 5px;
	text-align: center;
	font-size: 17px;
	font-variant: small-caps;
}

button[type=submit] {
	width: 50%;
	padding: 12px 20px;
	margin-left: 120px;
	box-sizing: border-box;
	border-radius: 50px;
	background-color: teal ;
	color: white;
	display: block;
	outline: 2px solid white;
}

input[type=number] {
	width: 100%;
	padding: 15px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border-radius: 5px;
}

input[type=text] {
	border: none;
	border-bottom: 2px solid red;
}

input[type=password] {
	border: none;
	border-bottom: 2px solid red;
}


input[type=number] {
	border: 2px solid red;
	border-radius: 4px;
}

input[type=number]:focus {
	background-color: tan;
}



.usericon .fa-solid {
	position: fixed;
	padding: 19px;
	min-width: 40px;
	margin: 0;
	
}

.signin{
  text-align: center; 
	font-size: 30px;
	
}
button {
	word-spacing: 9px;
	font-variant: small-caps;
}
</style>



</head>
<body>


	<form action="UserLogin" method="post">

		<div class="signin">


			<label><b>Sign In</b></label> <br> <br> <br> <br>



		</div>

		<div class="usericon">

			<label>username</label> <br> <br>
			 <i class="fa-solid fa-user"></i> 
			 <input
				type="text" name="n1" required="required"> <br> <br>
				 <label>password</label> <br>
			<br> <i class="fa-solid fa-lock"></i> 
			<input type="password"
				name="n2" required="required" > <br> <br> <br>
		</div>
    
    <br>
	
     <button type="submit" class="sumbit">LOGIN IN </button>
        










	</form>






</body>
</html>