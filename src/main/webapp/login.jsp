<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>

	<link rel="stylesheet" href="loginstyle.css">
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	</style>
</head>
<body>

<div class="container1">
<h2>ADMIN LOGIN</h2>
<form action="customerInsert.jsp" method="post" >
<label for="username">Username:</label>
<input type="text" id="username" name="username" placeholder="Enter your username" required>

<label for="password">Password:</label>
<input type="password" id="password" name="password" placeholder="Enter your password" required>

<label for="remember">
<input type="checkbox" id="remember" name="remember" required> Remember Me
</label>

<input type="submit" value="Login" onclick="return validateLogin()" >

</form>
</div>

 

    <script>

  function validateLogin() {

    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;


    if (username === "" || password === "") {
      alert("Please enter both username and password");
      return false;
    }
    if(username==="sasun"  && password==="1234"){

 

      alert("Login succsessfully");

      return ture;
      windows.location.href = "customerInsert.jsp";
    }
    else{
      alert("Invalid username or password");
      return false;
    }



  }

 

  </script>

</body>
</html>