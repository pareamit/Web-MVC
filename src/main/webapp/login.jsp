<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Amit
  Date: 3/24/2018
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring Login Form</title>
</head>
<body>
<h2>Spring Security 4 - Custom login form example</h2>
<hr />
<h4>Login Form</h4>

<form action='<spring:url value="/signin"/>' method="post">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="userid"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="passwd"></td>
        </tr>
        <tr>
            <td><button type="submit">Login</button></td>
        </tr>
    </table>
</form>
<br/>
<c:if  test="${not empty sessionScope.message}">
    <span style="color:green"><c:out value="${sessionScope.message}"/></span>
    <c:remove var="message" scope="session" />
</c:if>
</body>
</html>
