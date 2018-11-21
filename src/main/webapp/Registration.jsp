<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<h1>Registration</h1>
    <form action="/register" method="get">
        <label for="id">ID</label><br>
        <input id="id" name="id" type="number"/><br><br>
        <label for="name">Name</label><br>
        <input id="name" name="name" type="text"/><br><br>
        <label for="email">Email</label><br>
        <input id="email" name="email" type="email"/><br><br>

        <label for="phone">Email</label><br>
        <input id="phone" name="phone" type="tel"/><br><br>


        <label for="age">Age</label><br>
        <input id="age" name="age" type="number"/><br><br>

        <label for="gender">Gender</label><br>
        <input id="gender" name="gender"/><br><br>

        <label for="address">Address</label><br>
        <input id="address" name="address" type="text"/><br><br>

        <button type="submit">Register </button>
    </form>
</div>
</body>
</html>