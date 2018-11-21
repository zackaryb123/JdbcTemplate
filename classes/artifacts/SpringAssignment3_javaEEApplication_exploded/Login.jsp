<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="jq" value="/resources/javascript/jQuery.js" />
<c:url var="validation" value="/resources/javascript/validation.js"/>
<c:url value="/resources/style/validation.css" var="validationCss"/>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${validationCss}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="${jq}"></script>
    <script type="text/javascript" src="${validation}"></script>
</head>
<body>
<h1>Login</h1>
<form action="index.jsp" method="get">
    <label for="username"></label>
    <input id="username" type="text" name="username"/>
    <label for="password"></label>
    <input id="password" type="password" name="password"/>
    <button type="submit">Login</button>
</form>
</body>
</html>
