<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<style>
  body {
    font-family: Arial, sans-serif;
    text-align: center;
    background-image: url('https://images.pexels.com/photos/6863193/pexels-photo-6863193.jpeg?auto=compress&cs=tinysrgb&w=600'); 
    background-size: cover; 
    background-repeat: no-repeat; 
  }
  form {
    max-width: 300px;
    margin: 0 auto;
    background-color: rgba(255, 255, 255, 0.7);
    padding: 20px;
    border-radius: 10px;
  }
  input {
    display: block;
    margin: 10px 0;
    padding: 5px;
    width: 100%;
  }
</style>
</head>
<body>
<center><h1>Employee Registration</h1></center>

<form action="CustomerInsert" method="post">

  Name<input type="text" name="name"><br>
  Email<input type="text" name="email"><br>
  Phone Number<input type="text" name="phone"><br>
  User Name<input type="text" name="uid"><br>
  Password<input type="password" name="psw"><br>

  <input type="submit" name="submit" value="Add Employee">
</form>
</body>
</html>
