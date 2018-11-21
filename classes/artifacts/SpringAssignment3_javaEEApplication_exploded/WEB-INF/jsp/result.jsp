<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br><br>
<c:if test="${customers != null}">
    <table border="1">
        <c:forEach var="cust" items="${customers}">
            <tr>
                <td>${cust.id} </td>
                <td>${cust.name} </td>
                <td>${cust.address} </td>
                <td>${cust.age} </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${customer != null}">
    <table border="1">
        <tr>
            <td>${customer.id} </td>
            <td>${customer.name} </td>
            <td>${customer.address} </td>
            <td>${customer.age} </td>
        </tr>
    </table>
</c:if>

<c:if test="${msg != null}">
    ${msg}
</c:if>
<br><br>
<a href="/customer/redirect">Back</a>
</body>
</html>
