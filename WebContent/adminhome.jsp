<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminhomepage</title>
<style>

body {
	background: linear-gradient(90deg, #c7c5f4, #776bcc);
}
ul{
  list-style-type: none;
  margin: 25px;
  padding: 22px;
  overflow: hidden;
  border: 3px inset red;
  outline: 2px solid white;
  border-radius: 25px;
  background-image: url("logion1.jpg");
  font-size: 18px;
  word-spacing: 5px;
  text-indent: 15px;
  
  
	
}

li {
  float: left;
 

}
li:last-child {
  border-right: none;
  
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  border-radius: 20px;
  font-variant: small-caps;
  

  
}

li a:hover:not(.logout) {
  background-color: #111;
  border: 3px solid black;
  color: black;
  background: linear-gradient(90deg, #c7c5f4, #776bcc);
  
}

.logout:hover {
  background-color: black;
   color: black;
    border: 3px solid black;
    background: linear-gradient(90deg, #c7c5f4, #776bcc);

}




</style>
</head>

<body>



<%

   String a=session.getAttribute("username").toString();
  out.print("welcome"+a); 



%>
 
<nav>
   
    <ul>
    
      <li> <a href="padd.jsp" class="padd" >Product Add</a> </li>
       <li> <a href="pdelete.jsp">Product Delete</a> </li>
        <li> <a href="pupdate.jsp">Product Update</a> </li>
         <li> <a href="pdetails.jsp">Product Details</a> </li>
          <li> <a href="udetails.jsp">User Details</a> </li>
           <li> <a href="odetails.jsp">Order Details</a> </li>
            <li style="float:right"> <a href="Logout" class="logout">Logout</a> </li>
      
    
    
    
    
    
    
    </ul>








</nav>





</body>
</html>