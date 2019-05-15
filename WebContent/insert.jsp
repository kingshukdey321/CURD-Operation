<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/registion.jpg");
 height: 100%; 
  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
h1 {
  padding: 70px;
 
}
.container{
margin-top:-690px;

}
</style>
</head>
<body backgound-image="/images/registion.jpg">




<h1  class="bg-img">There you can insert data</h1></div>
  <form method="post" action="insertsavlet" class="container">
    
    <h2>Insert</h2>
    <label for="text"><b>First Name</b></label>
    <input type="text" placeholder="First Name" name="fname" required>
    
     <label for="text"><b>Last Name</b></label>
    <input type="text" placeholder="Last Name" name="lname" required>
    
    <label for="text"><b>ID NO</b></label>
    <input type="text" placeholder="ID NO" name="idno" required>
   <b>Gender</b> <br>
  <label for="male">Male</label>
  <input type="radio" name="gender" id="male" value="male">
  <label for="female">Female</label>
  <input type="radio" name="gender" id="female" value="female">
  <label for="other">Other</label>
  <input type="radio" name="gender" id="other" value="other"><br><br>
    
    
    

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Insert</button>
     
  </form>
 
</div>

<p></p>



</body>
</html>