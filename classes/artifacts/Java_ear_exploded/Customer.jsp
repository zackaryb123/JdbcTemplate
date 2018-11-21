<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <li><a href="<c:url value='WEB-INF/customer/add.jsp'/>">Add</a></li>
        <li><a href="<c:url value='WEB-INF/customer/delete.jsp'/>">Delete</a></li>
        <li><a href="WEB-INF/customer/getById.jsp">Get By ID</a></li>
        <li><a href="WEB-INF/customer/getAll.jsp">Get All</a></li>
        <li><a href="WEB-INF/customer/update.jsp">Update</a></li>
    </ul>
</diV>
</body>
</html>