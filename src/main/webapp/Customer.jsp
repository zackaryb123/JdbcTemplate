<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<diV>
    <h1>Customer</h1>
    <ul>
        <li><a href="<c:url value='customer/add.jsp'/>">Add</a></li>
        <li><a href="<c:url value='customer/delete.jsp'/>">Delete</a></li>
        <li><a href="customer/getById.jsp">Get By ID</a></li>
        <li><a href="/customer/view">Get All</a></li>
        <li><a href="customer/update.jsp">Update</a></li>
    </ul>
</diV>
</body>
</html>