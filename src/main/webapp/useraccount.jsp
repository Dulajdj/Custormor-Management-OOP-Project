<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Account Details</title>
	
   <style type="text/css">
        body {
            font-family: 'Hind SemiBold', sans-serif;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3U163iF7S2h6QZGdbCvtdzOES9ILJYEpX0Q&usqp=CAU');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: #333;
            height: 100vh;
        }

        table {
            border-collapse: collapse;
            margin: 20px auto;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            width: 80%;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .update-button, .delete-button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin: 10px;
            text-decoration: none;
            display: inline-block;
        }

        .update-button:hover, .delete-button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
	<center><h1>View Details</h1></center>
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Employee ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Employee Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Employee Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Employee Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td> User Name</td>
		<td>${cus.userName}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url><br><br>
	
	<a href="${cusupdate}">
	<center><input type="button" name="update" class="update-button" value="Update My Data"></center>
	</a>
	
	<br><br><br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<center><input type="button" name="delete" class="delete-button" value="Delete My Data"></center>
	</a>
	
</body>
</html>