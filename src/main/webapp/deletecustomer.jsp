<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Account</title>
	<style>
		body {
			background-image: url('https://tse1.mm.bing.net/th?id=OIP.C71UYGKaWYvyym68LmKKqgHaHa&pid=Api&P=0&h=220');
			background-size: contain;
			background-repeat: no-repeat;
			background-attachment: fixed;
			height: 100vh;
		}
		  .custom-button {
		    background-color: red;
		    color: white;
		    padding: 10px 20px;
		    border: none;
		    border-radius: 5px;
		    cursor: pointer;
 		 }
		  .custom-button:hover {
		    background-color: darkred;
		  }
		.container {
			margin: 0 auto;
			padding: 20px;
			background-color: rgba(255, 255, 255, 0.8);
			border-radius: 10px;
		}
		h1 {
			text-align: center;
		}
		table {
			margin: 0 auto;
		}
		td {
			padding: 10px;
		}
    }
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h1><u>Employee Account Delete</u></h1>

	<form action="DeleteCustomerServlet" method="post">
	<table>
		<tr>
			<td>Employee ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" ></td>
		</tr>
		<tr>
			<td> Employee Name</td>
			<td><input type="text" name="name" value="<%= name %>" ></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" ></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" ></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" ></td>
	</tr>		
	</table>
	<br>
	<center><input type="submit" name="submit" value="Delete Employee Data" class="custom-button"></center>
	</form>

</body>
</html>