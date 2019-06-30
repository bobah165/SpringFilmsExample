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

    <c:if test="${empty film.title}">
        <title>Add</title>
    </c:if>

    <c:if test="${!empty film.title}">
        <title>Edit</title>
    </c:if>

</head>
<body>
<section class="films">
    <c:if test="${empty film.title}">
        <c:url value="/add" var="var"/>
    </c:if>

    <c:if test="${!empty film.title}">
        <c:url value="/edit" var="var"/>
    </c:if>

   <form action="${var}" method="post">
       <c:if test="${!empty film.title}">
       <input type="hidden" name="id" value="${film.id}">
       </c:if>

       <label for="title">Title</label>
       <input type="text" name="title" id="title">

       <label for="year">Year</label>
       <input type="text" name="year" id="year">

       <label for="genere">Genere</label>
       <input type="text" name="genere" id="genere">

       <label for="watched">Watched</label>
       <input type="text" name="watched" id="watched">

       <c:if test="${empty film.title}">
            <input type="submit" value="Add new film">
       </c:if>

       <c:if test="${!empty film.title}">
           <input type="submit" value="Edit film">
       </c:if>
   </form>
</section>

</body>
</html>
