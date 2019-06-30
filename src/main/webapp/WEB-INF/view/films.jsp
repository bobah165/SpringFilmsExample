<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 02.06.2019
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Films</title>
    <style>
        <%@include file="style.css"%>
    </style>
</head>
<body>

<h2> FILMS </h2>
<table>
    <tr>
        <th>id</th>
        <th>title</th>
        <th>year</th>
        <th>genere</th>
        <th>watched</th>
        <th>action</th>
    </tr>
    <c:forEach var="film" items="${filmList}">
        <tr>
            <td>${film.id}</td>
            <td>${film.title}</td>
            <td>${film.year}</td>
            <td>${film.genere}</td>
            <td>${film.watched}</td>
            <td>
                <a href="/edit/${film.id}">edit</a>
                <a href="/delete/${film.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>
<c:url value="/add" var="add"/>
<a href="${add}">Add new film</a>
</h2>
</body>
</html>
