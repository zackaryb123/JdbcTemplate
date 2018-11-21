<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
    <h1>Add Customer</h1>
    <form action="/customer/add" method="get">
        <label for="CustomerId">ID</label><br>
        <input id="CustomerId" name="cId" type="number"/><br><br>
        <label for="CustomerName">Name</label><br>
        <input id="CustomerName" name="cName" type="text"/><br><br>
        <label for="CustomerAddress">Address</label><br>
        <textarea id="CustomerAddress" name="cAddress" cols="10" rows="3"></textarea><br><br>
        <label for="CustomerAge">Age</label><br>
        <input id="CustomerAge" name="cAge" type="number"/><br><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>