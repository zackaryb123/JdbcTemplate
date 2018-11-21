<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:url var="jq" value="/resources/js/jQuery.js" />
<c:url var="validation" value="/resources/js/validation.js"/>
<c:url var="validationCss" value="/resources/style/validation.css" />

<html>
<head>
    <title>Title</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" href="${validationCss}" />
    <script type="text/javascript" src="${jq}"></script>
    <script type="text/javascript" src="${validation}"></script>
</head>
<body>
<h1>Login</h1>
<form action="index.jsp" method="get">
    <label for="username"></label><br>
    <input id="username" type="text" name="username"/><br><br>
    <label for="password"></label><br>
    <input id="password" type="password" name="password"/><br><br>
    <button type="submit">Login</button>
</form>
<br>
<a href="Registration.jsp">Registration</a>
</body>
</html>
