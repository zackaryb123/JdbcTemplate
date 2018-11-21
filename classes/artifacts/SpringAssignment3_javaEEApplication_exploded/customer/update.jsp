<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Address</h1>
<form action="/customer/update" method="get">
    <label for="CustomerId">ID</label><br>
    <input id="CustomerId" name="cId" type="text"/><br><br>
    <label for="CustomerAddress">Address</label><br>
    <textarea id="CustomerAddress" name="cAddress" cols="10" rows="3"></textarea><br><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>