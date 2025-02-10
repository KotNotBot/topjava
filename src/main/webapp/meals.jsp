<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<style>
    table, td, th {
        text-align: center;
        vertical-align: middle;
        border-collapse: collapse;
        border: 2px solid black;
    }
    td, th {
        padding: 10px 20px;
        text-align: center;
    }
</style>
<table>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    <c:set var="dateFormat" value="${DateTimeFormatter.ofPattern(\"yyyy-MM-dd HH:mm\")}" />
    <jsp:useBean id="mealsTo" scope="request" type="java.util.List"/>
    <c:forEach var="meal" items="${mealsTo}">
        <tr style="color:${meal.excess ? 'red' : 'green'}">
        <td>${meal.dateTime.format(dateFormat)}</td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>