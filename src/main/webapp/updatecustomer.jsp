<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>

	<style type="text/css">
	    body {
        background-image: url('https://images.pexels.com/photos/792199/pexels-photo-792199.jpeg?auto=compress&cs=tinysrgb&w=600');
        background-size: cover;
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
        text-align: center;
    }
    
      .custom-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #3498db;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease; 
  }

  .custom-button:hover {
    background-color: #2980b9;
  }


    input {
        display: block;
        margin: 10px 0;
        padding: 10px;
        width: 100%;
    }
		
		
	</style>
</head>
<body>


<%
	String id = request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String username=request.getParameter("uname");
	String password=request.getParameter("pass");
	

%>
 
 
 <form action="updateCustomerServlet" method="post">
 
 	<center>
 	<h1><u>Update Employee Data</u></h1>
 	
 	<table>
		<tr>
			<td>Employee ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Employee Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table></center>
	<br>

<input type="submit" name="submit" value="Update Data" class="custom-button">

</form>

</body>
</html>