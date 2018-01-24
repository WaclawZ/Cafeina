<%--
  Created by IntelliJ IDEA.
  User: walcaw
  Date: 23.01.18
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Cafeina - Cakes</title>
</head>
<body>
<%@include file="../header.jspf" %>
<div class="container">

    <div class="card-deck">
        <c:forEach items="${cakes}" var="cake" varStatus="i">
        <div class="card d-inline-flex" style="max-width: 350px">
            <img class="card-img-top" src="/resources/assets/cakes/${cake.imgUrl}" alt="${cake.name}">
            <div class="card-body">
                <h4 class="card-title">${cake.name}</h4>
                <p class="card-text">${cake.description}.</p>
            </div>
            <div class="card-footer">
                <a href="/cake/${cake.id}" class="btn btn-primary">Szczegóły</a>
            </div>
        </div>
        <div style="height: 20px"></div>
        <c:if test="${(i.index + 1) % 3 == 0}">
            </div>
            <div class="card-deck">
        </c:if>
        </c:forEach>
    </div>

</div>

<%@include file="../footer.jspf" %>
</body>
</html>
