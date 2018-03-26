<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Amit
  Date: 3/25/2018
  Time: 5:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success </title>
</head>
<body>
<h2>Spring Security 4 - Custom login form example</h2>
<hr />
<h4>${message}</h4>
<br>
<a href='<spring:url value="/signout"/>'>Logout</a>
</body>
</html>
